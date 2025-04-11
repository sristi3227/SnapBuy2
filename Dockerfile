FROM tomcat:10.1-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your webapp (JSPs, WEB-INF, etc.)
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# Copy compiled servlet classes (we'll explain how to compile next)
COPY build/classes/ /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/

EXPOSE 8080
CMD ["catalina.sh", "run"]
