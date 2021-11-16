FROM alpine:3

ARG AWS_DEFAULT_REGION=us-east-1
ARG AWSCLI_VER=1.14.61

RUN apk add --no-cache --upgrade python3 py3-pip bash && \
    pip3 install awscli==${AWSCLI_VER} --upgrade --no-cache-dir && \
    rm -rf /root/.cache
