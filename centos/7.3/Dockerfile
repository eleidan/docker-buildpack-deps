FROM eleidan/buildpack-deps-scm:centos-7.3

LABEL maintainer="Oleg Kulyk" \
      description="CentOS 7.3, buildpack-deps" \
      run="docker run -it --rm -v $(pwd):/home/phantom/app eleidan/buildpack-deps:centos-7.3" \
      version="2017-08-01"

ENV SERVICE_NAME="buildpack-deps:centos-7.3"

RUN yum -y groupinstall 'Development Tools' && yum -y install\
      bzip2-devel \
      glib2-devel \
      ImageMagick-devel \
      kernel-devel \
      libcurl \
      libcurl-devel \
      libevent-devel \
      libffi-devel \
      libjpeg-devel \
      libxml2-devel \
      libxslt-devel \
      mysql-devel \
      ncurses-devel \
      openssl \
      openssl-devel \
      postgresql-devel \
      readline \
      readline-devel \
      sqlite-devel \
      tar \
      zlib-devel \
    && yum clean all
