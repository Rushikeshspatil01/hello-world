# FROM tomcat:latest
# RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
# COPY ./*.war /usr/local/tomcat/webapps

FROM tomcat:latest
 # Copy your artifact to Tomcat webapps folder
COPY target/webapp.war /home/azureuser/apache-tomcat-9.0.83/webapps
 # Expose Tomcat port
EXPOSE 8084
