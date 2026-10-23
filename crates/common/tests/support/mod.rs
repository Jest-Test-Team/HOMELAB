//! Shared by integration tests: a pool confined to a fresh schema so tests
//! can run in parallel against one database. Returns None (test skipped)
//! when TEST_DATABASE_URL is unset.
#![allow(dead_code)]

use sqlx::{Executor, PgPool, postgres::PgPoolOptions};

pub async fn test_pool() -> Option<PgPool> {
    let Ok(url) = std::env::var("TEST_DATABASE_URL") else {
        eprintln!("TEST_DATABASE_URL not set; skipping database test");
        return None;
    };
    let schema = format!("t_{}", uuid::Uuid::new_v4().simple());
    let admin = PgPoolOptions::new()
        .max_connections(1)
        .connect(&url)
        .await
        .expect("connect");
    sqlx::query(sqlx::AssertSqlSafe(format!("CREATE SCHEMA {schema}")))
        .execute(&admin)
        .await
        .expect("create schema");
    admin.close().await;

    let search_path = format!("SET search_path TO {schema}");
    let pool = PgPoolOptions::new()
        .max_connections(5)
        .after_connect(move |conn, _| {
            let sql = search_path.clone();
            Box::pin(async move {
                conn.execute(sqlx::AssertSqlSafe(sql)).await?;
                Ok(())
            })
        })
        .connect(&url)
        .await
        .expect("connect to schema");
    homelab_common::jobs::MIGRATOR
        .run(&pool)
        .await
        .expect("migrate");
    Some(pool)
}
