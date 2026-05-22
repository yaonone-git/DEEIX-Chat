FROM ghcr.io/deeix-ai/deeix-chat:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        sqlite3 \
        gzip \
        ca-certificates \
        python3 \
        python3-pip \
        tzdata \
    && rm -rf /var/lib/apt/lists/*
USER 10014
