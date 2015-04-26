FROM ubuntu:14.10
MAINTAINER Eric Li <eric.li@bertelsmann.com.cn>

# environment
ENV HTTP_PROXY http://192.168.59.3:8118
ENV HTTPS_PROXY http://192.168.59.3:8118

# Essential
RUN apt-get update && apt-get install -y curl wget python-software-properties software-properties-common