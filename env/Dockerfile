# ビルド方法
# docker build -t IMAGENAME .
# buildxによるマルチアーキテクチャビルドは、事前に下準備の上でこんな感じです(Ubuntu 20.04 on ARM64で動作確認済みs)
# docker buildx build --push --platform=linux/amd64,linux/arm64 -t IMAGENAME .

FROM postgres:15-alpine
ARG TZ="Asia/Tokyo"
ARG USER=sql
ENV POSTGRES_HOST_AUTH_METHOD trust
ENV POSTGRES_USER ${USER}
ENV TZ ${TZ}
ENV LC_ALL=ja_JP.UTF-8
RUN adduser -D ${POSTGRES_USER}
RUN apk add --no-cache tzdata git make curl sudo
RUN cp -v /usr/share/zoneinfo/${TZ} /etc/localtime
WORKDIR /tmp
RUN git clone https://github.com/densuke/skrsql.git; \
    cd skrsql; git switch v4; make download install; \
    cd ..; rm -fr skrsql
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD [ "sudo", "-Hu", "sql", "pg_isready" ]
WORKDIR /
# #RUN chmod 400  /etc/sudoers.d/${USER}

