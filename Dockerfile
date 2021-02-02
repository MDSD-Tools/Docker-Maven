ARG MAVEN_TAG=INVALID
FROM maven:${MAVEN_TAG}

RUN apt update && \
    apt install -y --no-install-suggests --no-install-recommends libgtk-3-0 && \
    rm -rf /var/lib/apt/lists/*
