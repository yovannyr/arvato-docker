FROM arvato/ubuntu:latest
MAINTAINER Eric Li <eric.li@bertelsmann.com.cn>

# Oracle JDK
RUN add-apt-repository ppa:webupd8team/java && apt-get update
RUN apt-get install -y oracle-java7-installer
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment && source /etc/environment
