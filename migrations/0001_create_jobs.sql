-- Jobs are the source of truth; Redis only carries wake-up hints.
CREATE TABLE jobs (
    id              uuid PRIMARY KEY,
    kind            text        NOT NULL,
    payload         jsonb       NOT NULL DEFAULT '{}'::jsonb,
    idempotency_key text        UNIQUE,
    status          text        NOT NULL DEFAULT 'queued'
                    CHECK (status IN ('queued', 'running', 'succeeded', 'failed')),
    attempts        integer     NOT NULL DEFAULT 0,
    result          jsonb,
    last_error      text,
    locked_until    timestamptz,
    created_at      timestamptz NOT NULL DEFAULT now(),
    updated_at      timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX jobs_claimable_idx ON jobs (created_at) WHERE status IN ('queued', 'running');
