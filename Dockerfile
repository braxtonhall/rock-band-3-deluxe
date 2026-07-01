FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    libicu-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
COPY scripts/build_in_docker.sh /usr/local/bin/build_in_docker
RUN chmod +x /usr/local/bin/build_in_docker
ENTRYPOINT ["build_in_docker"]
