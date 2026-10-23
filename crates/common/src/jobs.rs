//! PostgreSQL-backed job queue shared by the API (enqueue) and worker (claim).
//!
//! Guarantees: a job with an `idempotency_key` is stored at most once; a claim
//! takes a time-limited lease (`locked_until`) with `FOR UPDATE SKIP LOCKED`,
//! so a worker that dies mid-job releases it when the lease expires; completion
//! only applies to a job still `running`, so a late duplicate cannot overwrite it.

use std::time::Duration;

use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};
use serde_json::Value;
use sqlx::{FromRow, PgPool};
use uuid::Uuid;

pub const MAX_SLEEP_MS: u64 = 10_000;
pub const MAX_ECHO_BYTES: usize = 4096;
pub const MAX_IDEMPOTENCY_KEY_LEN: usize = 128;

/// Embedded, versioned migrations. Only `api migrate` applies them.
pub static MIGRATOR: sqlx::migrate::Migrator = sqlx::migrate!("../../migrations");

#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
pub enum JobKind {
    /// Returns its payload unchanged.
    Echo,
    /// Sleeps `{"ms": n}` (n <= MAX_SLEEP_MS), then succeeds.
    Sleep,
}

impl JobKind {
    pub fn as_str(self) -> &'static str {
        match self {
            Self::Echo => "echo",
            Self::Sleep => "sleep",
        }
    }

    pub fn parse(s: &str) -> Option<Self> {
        match s {
            "echo" => Some(Self::Echo),
            "sleep" => Some(Self::Sleep),
            _ => None,
        }
    }
}

#[derive(Debug, thiserror::Error, PartialEq, Eq)]
pub enum ValidationError {
    #[error("payload for sleep must be {{\"ms\": <0..={MAX_SLEEP_MS}>}}")]
    BadSleep,
    #[error("payload exceeds {MAX_ECHO_BYTES} bytes")]
    TooLarge,
    #[error("idempotency_key must be 1..={MAX_IDEMPOTENCY_KEY_LEN} characters")]
    BadIdempotencyKey,
}

/// Validate a payload for a kind before it reaches the database.
pub fn validate(
    kind: JobKind,
    payload: &Value,
    idempotency_key: Option<&str>,
) -> Result<(), ValidationError> {
    if let Some(key) = idempotency_key
        && (key.is_empty() || key.len() > MAX_IDEMPOTENCY_KEY_LEN)
    {
        return Err(ValidationError::BadIdempotencyKey);
    }
    if payload.to_string().len() > MAX_ECHO_BYTES {
        return Err(ValidationError::TooLarge);
    }
    match kind {
        JobKind::Echo => Ok(()),
        JobKind::Sleep => sleep_ms(payload).map(|_| ()),
    }
}

pub fn sleep_ms(payload: &Value) -> Result<u64, ValidationError> {
    payload
        .get("ms")
        .and_then(Value::as_u64)
        .filter(|ms| *ms <= MAX_SLEEP_MS)
        .ok_or(ValidationError::BadSleep)
}

#[derive(Debug, Clone, Serialize, FromRow)]
pub struct Job {
    pub id: Uuid,
    pub kind: String,
    pub payload: Value,
    pub idempotency_key: Option<String>,
    pub status: String,
    pub attempts: i32,
    pub result: Option<Value>,
    pub last_error: Option<String>,
    pub created_at: DateTime<Utc>,
    pub updated_at: DateTime<Utc>,
}

// A macro so queries stay `&'static str` (sqlx 0.9 rejects runtime-built SQL).
macro_rules! job_columns {
    () => {
        "id, kind, payload, idempotency_key, status, attempts, result, last_error, created_at, updated_at"
    };
}

/// Insert a job. Returns `(job, created)`; `created` is false when a job with
/// the same idempotency key already existed (that job is returned instead).
pub async fn enqueue(
    pool: &PgPool,
    kind: JobKind,
    payload: &Value,
    idempotency_key: Option<&str>,
) -> sqlx::Result<(Job, bool)> {
    let inserted: Option<Job> = sqlx::query_as(concat!(
        "INSERT INTO jobs (id, kind, payload, idempotency_key) VALUES ($1, $2, $3, $4) ",
        "ON CONFLICT (idempotency_key) DO NOTHING RETURNING ",
        job_columns!()
    ))
    .bind(Uuid::new_v4())
    .bind(kind.as_str())
    .bind(payload)
    .bind(idempotency_key)
    .fetch_optional(pool)
    .await?;

    if let Some(job) = inserted {
        return Ok((job, true));
    }
    let existing: Job = sqlx::query_as(concat!(
        "SELECT ",
        job_columns!(),
        " FROM jobs WHERE idempotency_key = $1"
    ))
    .bind(idempotency_key)
    .fetch_one(pool)
    .await?;
    Ok((existing, false))
}

pub async fn get(pool: &PgPool, id: Uuid) -> sqlx::Result<Option<Job>> {
    sqlx::query_as(concat!(
        "SELECT ",
        job_columns!(),
        " FROM jobs WHERE id = $1"
    ))
    .bind(id)
    .fetch_optional(pool)
    .await
}

/// A job leased to this worker.
#[derive(Debug, Clone, FromRow)]
pub struct Claimed {
    pub id: Uuid,
    pub kind: String,
    pub payload: Value,
    pub attempts: i32,
}

/// Lease the oldest runnable job: queued, or running with an expired lease
/// (its previous worker died). Jobs at `max_attempts` are not reclaimed.
pub async fn claim(
    pool: &PgPool,
    lease: Duration,
    max_attempts: i32,
) -> sqlx::Result<Option<Claimed>> {
    sqlx::query_as(
        "UPDATE jobs SET status = 'running', attempts = attempts + 1, \
                locked_until = now() + make_interval(secs => $1), updated_at = now() \
         WHERE id = ( \
             SELECT id FROM jobs \
             WHERE (status = 'queued' OR (status = 'running' AND locked_until < now())) \
               AND attempts < $2 \
             ORDER BY created_at \
             FOR UPDATE SKIP LOCKED \
             LIMIT 1) \
         RETURNING id, kind, payload, attempts",
    )
    .bind(lease.as_secs_f64())
    .bind(max_attempts)
    .fetch_optional(pool)
    .await
}

/// Mark a running job succeeded. Returns false if it was no longer running.
pub async fn complete(pool: &PgPool, id: Uuid, result: &Value) -> sqlx::Result<bool> {
    let done = sqlx::query(
        "UPDATE jobs SET status = 'succeeded', result = $2, last_error = NULL, \
                locked_until = NULL, updated_at = now() \
         WHERE id = $1 AND status = 'running'",
    )
    .bind(id)
    .bind(result)
    .execute(pool)
    .await?;
    Ok(done.rows_affected() == 1)
}

/// Record a failure: requeue, or mark failed once `max_attempts` is reached.
pub async fn fail(pool: &PgPool, id: Uuid, error: &str, max_attempts: i32) -> sqlx::Result<()> {
    sqlx::query(
        "UPDATE jobs SET \
             status = CASE WHEN attempts >= $3 THEN 'failed' ELSE 'queued' END, \
             last_error = $2, locked_until = NULL, updated_at = now() \
         WHERE id = $1 AND status = 'running'",
    )
    .bind(id)
    .bind(error)
    .bind(max_attempts)
    .execute(pool)
    .await?;
    Ok(())
}

/// Fail jobs whose lease expired on their final attempt. Returns rows changed.
pub async fn sweep_expired(pool: &PgPool, max_attempts: i32) -> sqlx::Result<u64> {
    let swept = sqlx::query(
        "UPDATE jobs SET status = 'failed', last_error = 'lease expired on final attempt', \
                locked_until = NULL, updated_at = now() \
         WHERE status = 'running' AND locked_until < now() AND attempts >= $1",
    )
    .bind(max_attempts)
    .execute(pool)
    .await?;
    Ok(swept.rows_affected())
}

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json::json;

    #[test]
    fn kinds_round_trip() {
        for kind in [JobKind::Echo, JobKind::Sleep] {
            assert_eq!(JobKind::parse(kind.as_str()), Some(kind));
        }
        assert_eq!(JobKind::parse("rm -rf"), None);
    }

    #[test]
    fn validates_sleep_bounds() {
        assert!(validate(JobKind::Sleep, &json!({"ms": 10}), None).is_ok());
        assert_eq!(
            validate(JobKind::Sleep, &json!({"ms": MAX_SLEEP_MS + 1}), None),
            Err(ValidationError::BadSleep)
        );
        assert_eq!(
            validate(JobKind::Sleep, &json!({"ms": -1}), None),
            Err(ValidationError::BadSleep)
        );
        assert_eq!(
            validate(JobKind::Sleep, &json!({}), None),
            Err(ValidationError::BadSleep)
        );
    }

    #[test]
    fn validates_size_and_key() {
        let big = json!({"x": "a".repeat(MAX_ECHO_BYTES)});
        assert_eq!(
            validate(JobKind::Echo, &big, None),
            Err(ValidationError::TooLarge)
        );
        assert_eq!(
            validate(JobKind::Echo, &json!({}), Some("")),
            Err(ValidationError::BadIdempotencyKey)
        );
        assert!(validate(JobKind::Echo, &json!({"hi": 1}), Some("k-1")).is_ok());
    }
}
