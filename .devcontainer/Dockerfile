FROM hadolint/hadolint:v2.12.0-alpine AS dockerfile-lint
FROM koalaman/shellcheck:v0.10.0 AS shellcheck

FROM mcr.microsoft.com/devcontainers/typescript-node:1-18

COPY --from=dockerfile-lint /bin/hadolint /usr/bin/hadolint
COPY --from=shellcheck /bin/shellcheck /usr/bin/

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
        pre-commit \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
