FROM openjdk:8-jre-alpine
MAINTAINER Michael Dockter <michael@dockter.com>
ENV REFRESHED_AT 2017-04-15

ARG kafka_version=0.10.2.0
ARG scala_version=2.11

# Install alpine packages.

RUN apk add --update bash curl
RUN rm -rf /var/cache/apk/*

# Download Kafka from a mirror.

RUN curl http://apache.mirrors.lucidnetworks.net/kafka/0.10.2.0/kafka_2.11-0.10.2.0.tgz -o /tmp/kafka.tgz

# TODO: Verify file MD5 / SHA

# Verify the download was accurate.
# RUN curl http://www-us.apache.org/dist/kafka/0.10.2.0/kafka_2.11-0.10.2.0.tgz.asc -o /tmp/kafka.tgz.asc


# Extract kafka.

RUN mkdir -p /opt/kafka
RUN tar -xzf /tmp/kafka.tgz --strip-components=1 -C /opt/kafka

# RUN /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties

# RUN curl http://kafka.apache.org/KEYS -o /tmp/KEYS
# RUN gpg --import /tmp/KEYS
# RUN gpg --keyserver pgpkeys.mit.edu --recv-key DDAA34525234D94F
# RUN gpg --fingerprint DDAA34525234D94F
# RUN gpg --verify /tmp/kafka.tgz.asc /tmp/kafka.tgz


# RUN tar -xzf /tmp/kafka.tgz -C /usr/local/bin
# RUN rm /tmp/kafka.tgz
# RUN ln -s /usr/local/bin/kafka_2.11-0.10.2.0/ /usr/local/bin/kafka

# RUN /usr/local/bin/kafka/bin/zookeeper-server-start.sh /usr/local/bin/kafka/config/zookeeper.properties

CMD ['/bin/bash']