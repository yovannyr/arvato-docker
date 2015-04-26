FROM arvato/java7:latest
MAINTAINER Eric Li <eric.li@bertelsmann.com.cn>

RUN apt-get install -y tomcat7

ENV CATALINA_BASE /var/lib/tomcat7
ENV CATALINA_HOME /usr/share/tomcat7
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR $CATALINA_BASE

EXPOSE 8080

CMD ["catalina.sh", "run"]
