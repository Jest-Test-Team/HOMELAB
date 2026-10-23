//! Lazily connected Redis access with bounded timeouts.
//!
//! Services start (and report not-ready) even when Redis is down; the first
//! successful call establishes a `ConnectionManager`, which then reconnects on
//! its own.

use std::time::Duration;

use redis::aio::{ConnectionManager, ConnectionManagerConfig};
use tokio::sync::OnceCell;

/// Key the API pushes job IDs to and the worker blocks on.
pub const JOB_WAKEUP_KEY: &str = "homelab:jobs:wakeup";

pub struct RedisHandle {
    client: redis::Client,
    config: ConnectionManagerConfig,
    conn: OnceCell<ConnectionManager>,
}

impl RedisHandle {
    /// `response_timeout` must exceed any blocking command timeout (e.g. BRPOP).
    pub fn new(url: &str, response_timeout: Duration) -> redis::RedisResult<Self> {
        let config = ConnectionManagerConfig::new()
            .set_connection_timeout(Some(Duration::from_secs(2)))
            .set_response_timeout(Some(response_timeout))
            .set_number_of_retries(3)
            .set_max_delay(Duration::from_secs(5));
        Ok(Self {
            client: redis::Client::open(url)?,
            config,
            conn: OnceCell::new(),
        })
    }

    pub async fn conn(&self) -> redis::RedisResult<ConnectionManager> {
        self.conn
            .get_or_try_init(|| async {
                ConnectionManager::new_with_config(self.client.clone(), self.config.clone()).await
            })
            .await
            .cloned()
    }

    pub async fn ping(&self) -> redis::RedisResult<()> {
        let mut conn = self.conn().await?;
        redis::cmd("PING").query_async::<String>(&mut conn).await?;
        Ok(())
    }
}
