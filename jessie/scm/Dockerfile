FROM eleidan/buildpack-deps:jessie-curl

LABEL maintainer="Oleg Kulyk" \
      description="Debian GNU/Linux 8 (jessie), scm" \
      run="docker run -it --rm -v $(pwd):/home/phantom/app eleidan/buildpack-deps:jessie-scm" \
      version="2017-05-08"

ENV SERVICE_NAME="buildpack-deps:jessie-scm"

RUN apt-get update && apt-get install -y --no-install-recommends \
        bzr \
        git \
        mercurial \
        openssh-client \
        subversion \
        \
        procps \
    && rm -rf /var/lib/apt/lists/*
