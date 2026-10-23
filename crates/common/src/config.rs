//! Environment-based configuration helpers. Secrets arrive as environment
//! variables from Kubernetes Secrets and are never logged.

use std::{fmt::Display, str::FromStr};

#[derive(Debug, thiserror::Error, PartialEq, Eq)]
pub enum ConfigError {
    #[error("required environment variable {0} is not set")]
    Missing(String),
    #[error("environment variable {key} has an invalid value: {reason}")]
    Invalid { key: String, reason: String },
}

/// Required variable; empty strings count as missing.
pub fn required(key: &str) -> Result<String, ConfigError> {
    match std::env::var(key) {
        Ok(v) if !v.trim().is_empty() => Ok(v),
        _ => Err(ConfigError::Missing(key.to_owned())),
    }
}

pub fn or_default(key: &str, default: &str) -> String {
    std::env::var(key)
        .ok()
        .filter(|v| !v.trim().is_empty())
        .unwrap_or_else(|| default.to_owned())
}

pub fn parse_or<T>(key: &str, default: T) -> Result<T, ConfigError>
where
    T: FromStr,
    T::Err: Display,
{
    match std::env::var(key) {
        Ok(v) if !v.trim().is_empty() => parse_value(key, &v),
        _ => Ok(default),
    }
}

fn parse_value<T>(key: &str, raw: &str) -> Result<T, ConfigError>
where
    T: FromStr,
    T::Err: Display,
{
    raw.trim()
        .parse()
        .map_err(|e: T::Err| ConfigError::Invalid {
            key: key.to_owned(),
            reason: e.to_string(),
        })
}

/// Comma-separated list, trimmed, empty items dropped.
pub fn list_or(key: &str, default: &[&str]) -> Vec<String> {
    match std::env::var(key) {
        Ok(v) if !v.trim().is_empty() => split_list(&v),
        _ => default.iter().map(|s| (*s).to_owned()).collect(),
    }
}

fn split_list(raw: &str) -> Vec<String> {
    raw.split(',')
        .map(str::trim)
        .filter(|s| !s.is_empty())
        .map(str::to_owned)
        .collect()
}

/// Strip the password from a connection URL so it can be logged.
pub fn redact_url(url: &str) -> String {
    let Some((scheme, rest)) = url.split_once("://") else {
        return "<unparseable url>".to_owned();
    };
    match rest.rsplit_once('@') {
        Some((userinfo, host)) => {
            let user = userinfo.split_once(':').map_or(userinfo, |(u, _)| u);
            format!("{scheme}://{user}:***@{host}")
        }
        None => url.to_owned(),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn redacts_passwords() {
        assert_eq!(
            redact_url("postgres://homelab:s3cr3t@postgres:5432/homelab"),
            "postgres://homelab:***@postgres:5432/homelab"
        );
        assert_eq!(
            redact_url("redis://:pw@redis:6379/0"),
            "redis://:***@redis:6379/0"
        );
        assert_eq!(redact_url("redis://redis:6379"), "redis://redis:6379");
        assert_eq!(redact_url("not a url"), "<unparseable url>");
    }

    #[test]
    fn splits_lists() {
        assert_eq!(split_list(" a, b,,c ,"), vec!["a", "b", "c"]);
    }

    #[test]
    fn parses_values() {
        assert_eq!(parse_value::<u32>("K", " 42 "), Ok(42));
        assert!(matches!(
            parse_value::<u32>("K", "x"),
            Err(ConfigError::Invalid { .. })
        ));
    }
}
