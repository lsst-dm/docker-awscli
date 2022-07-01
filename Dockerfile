FROM alpine:3

ARG AWS_DEFAULT_REGION=us-east-1
# This default version is always overridden in the Jenkins context by a value
# from configuration in jenkins-dm-jobs
ARG AWSCLI_VER=1.25.21

RUN apk add --no-cache --upgrade python3 py3-pip bash && \
    pip3 install awscli==${AWSCLI_VER} --upgrade --no-cache-dir && \
    rm -rf /root/.cache
