FROM tomcat:9.0-jdk11

# Clear default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your JSP files (inside webapp) directly into ROOT
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080

CMD ["catalina.sh", "run"]
