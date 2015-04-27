FROM arvato/java7:latest
MAINTAINER Eric Li <eric.li@bertelsmann.com.cn>

# Install JBoss-7.1.1.Final
ADD jboss-as-7.1.1.Final.tar.gz /
RUN mv /jboss-as-7.1.1.Final /opt/ && \
	ln -s /opt/jboss-as-7.1.1.Final /opt/jboss-as

# Expose port for remote, debug, HornetQ, http, https, management (osgi, http, https)
EXPOSE 4447 5005 5445 5455 8080 8443 9999 9990 9443

# Set the JBOSS_HOME env variable
ENV JBOSS_HOME /opt/jboss-as

# Set the default command to run on boot
# This will boot JbossAs in the standalone mode and bind to all interface
CMD ["/opt/jboss-as/bin/standalone.sh", "-b", "0.0.0.0"]


### for Aroma
RUN mkdir -p /aroma

ADD hibernate.tar.gz /
RUN rm -rf /opt/jboss-as/modules/org/hibernate && \
	mv /hibernate /opt/jboss-as/modules/org/

ADD postgresql.tar.gz /
RUN rm -rf /opt/jboss-as/modules/org/postgresql && \
	mv /postgresql /opt/jboss-as/modules/org/

RUN rm /opt/jboss-as/standalone/configuration/standalone-full.xml
COPY standalone-full.xml /opt/jboss-as/standalone/configuration/

RUN rm /opt/jboss-as/bin/standalone.conf
COPY standalone.conf /opt/jboss-as/bin/

COPY solr-4.8.0.war /opt/jboss-as/standalone/deployments/

VOLUME ["/opt/jboss-as/standalone/deployments"]
VOLUME ["/aroma"]