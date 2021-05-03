ARG MAVEN_TAG=latest
FROM maven:${MAVEN_TAG}

ADD setup.sh /
ADD entrypoint.sh /
RUN /setup.sh && \
    rm -f /setup.sh

ENTRYPOINT ["/entrypoint.sh"]
