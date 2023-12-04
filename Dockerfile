FROM --platform=linux/x86_64 amazoncorretto:17.0.7-alpine3.14

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

ENV LC_ALL=C

ARG GIT_BRANCH=local
ARG GIT_REVISION=local

ENV MYSQL_VERSION=8.0.28
ENV MARIADB_VERSION=1.1.10
ENV POSTGRESQL_VERSION=42.3.5
ENV JTDS_VERSION=1.3.1

LABEL MYSQL_VERSION=$MYSQL_VERSION
LABEL MARIADB_VERSION=$MARIADB_VERSION
LABEL POSTGRESQL_VERSION=$POSTGRESQL_VERSION
LABEL JTDS_VERSION=$JTDS_VERSION

LABEL GIT_BRANCH=$GIT_BRANCH
LABEL GIT_REVISION=$GIT_REVISION

ADD docker/open-sans.tar.gz /usr/share/fonts/

RUN set -x && \
    apk update && apk upgrade && \
    apk add --no-cache curl unzip bash graphviz fontconfig && \
    fc-cache -fv && \
    mkdir /drivers_inc && \
    cd /drivers_inc && \
    curl -JL https://search.maven.org/remotecontent?filepath=mysql/mysql-connector-java/$MYSQL_VERSION/mysql-connector-java-$MYSQL_VERSION.jar --output mysql-connector-java-$MYSQL_VERSION.jar && \
    curl -JL https://search.maven.org/remotecontent?filepath=org/mariadb/jdbc/mariadb-java-client/$MARIADB_VERSION/mariadb-java-client-$MARIADB_VERSION.jar --output mariadb-java-client-$MARIADB_VERSION.jar && \
    curl -JL https://search.maven.org/remotecontent?filepath=org/postgresql/postgresql/$POSTGRESQL_VERSION/postgresql-$POSTGRESQL_VERSION.jar --output postgresql-$POSTGRESQL_VERSION.jar && \
    curl -JL https://search.maven.org/remotecontent?filepath=net/sourceforge/jtds/jtds/$JTDS_VERSION/jtds-$JTDS_VERSION.jar --output jtds-$JTDS_VERSION.jar && \
    apk del curl

ADD target/schema*.jar /usr/local/lib/schemaspy/
COPY docker/schemaspy.sh /usr/local/bin/schemaspy
COPY entrypoint.sh /entrypoint.sh

ENV SCHEMASPY_DRIVERS=/drivers

ENTRYPOINT ["/entrypoint.sh"]
