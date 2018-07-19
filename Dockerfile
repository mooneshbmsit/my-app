FROM tomcat:8
# Take the war and copy to webapps of tomcat
EXPOSE 9000
COPY target/*.war /usr/local/tomcat/webapps/
