# Use an official Tomcat image as a base image
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to the webapps directory in Tomcat
COPY sns.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port on which Tomcat will run (default is 8080)
EXPOSE 8086

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
