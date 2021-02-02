ARG MAVEN_TAG=latest
FROM maven:${MAVEN_TAG}

COPY setup.sh /
RUN /setup.sh && \
    rm -f /setup.sh
