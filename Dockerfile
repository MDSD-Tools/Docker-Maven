ARG MAVEN_TAG=latest
FROM maven:${MAVEN_TAG}

ADD setup.sh /
RUN /setup.sh && \
    rm -f /setup.sh

ADD entrypoint.sh /
ADD init.sh /
ADD ./mvn /usr/local/bin/mvn

ENV DISPLAYNUM=99
ENV SCREENNUM=0
ENV DISPLAY=':'$DISPLAYNUM'.'$SCREENNUM

ENTRYPOINT ["/entrypoint.sh"]
