FROM hadolint/hadolint:v2.12.0-alpine@sha256:3c206a451cec6d486367e758645269fd7d696c5ccb6ff59d8b03b0e45268a199 AS dockerfile-lint
FROM koalaman/shellcheck:v0.10.0@sha256:2097951f02e735b613f4a34de20c40f937a6c8f18ecb170612c88c34517221fb AS shellcheck

FROM mcr.microsoft.com/devcontainers/typescript-node:1-18@sha256:002d72d6edc94101afe5fab164f2168a6316a21be2b79caa4d690074ee0cb0fb

COPY --from=dockerfile-lint /bin/hadolint /usr/bin/hadolint
COPY --from=shellcheck /bin/shellcheck /usr/bin/

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
        pre-commit \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
