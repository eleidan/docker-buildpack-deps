FROM eleidan/debian:jessie
MAINTAINER Oleg Kulyk

ENV SERVICE_NAME="buildpack-deps:jessie-curl"

RUN apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
		wget \
	&& rm -rf /var/lib/apt/lists/*
