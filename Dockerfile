FROM ghcr.io/deeix-ai/deeix-chat:v0.3.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        bash \
        sqlite3 \
        gzip \
        ca-certificates \
        python3 \
        python3-pip \
        tzdata \
    && apt-get upgrade -y libgnutls30 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER 10014
