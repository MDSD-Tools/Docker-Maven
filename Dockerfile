ARG MAVEN_TAG=latest
FROM maven:${MAVEN_TAG}

ADD setup.sh /
ADD entrypoint.sh /
RUN /setup.sh && \
    rm -f /setup.sh

ENV DISPLAYNUM=99
ENV SCREENNUM=0
ENV DISPLAY=':'$DISPLAYNUM'.'$SCREENNUM

ENTRYPOINT ["/entrypoint.sh"]
