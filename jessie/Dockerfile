FROM eleidan/buildpack-deps:jessie-scm

LABEL maintainer="Oleg Kulyk" \
      description="Debian GNU/Linux 8 (jessie), buildpack-deps" \
      run="docker run -it --rm -v $(pwd):/home/phantom/app eleidan/buildpack-deps:jessie" \
      version="2017-05-08"

ENV SERVICE_NAME="buildpack-deps:jessie"

RUN apt-get update && apt-get install -y --no-install-recommends \
        autoconf \
        automake \
        bzip2 \
        file \
        g++ \
        gcc \
        imagemagick \
        libbz2-dev \
        libc6-dev \
        libcurl4-openssl-dev \
        libdb-dev \
        libevent-dev \
        libffi-dev \
        libgeoip-dev \
        libglib2.0-dev \
        libjpeg-dev \
        liblzma-dev \
        libmagickcore-dev \
        libmagickwand-dev \
        libmysqlclient-dev \
        libncurses-dev \
        libpng-dev \
        libpq-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libtool \
        libwebp-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        make \
        patch \
        xz-utils \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*
