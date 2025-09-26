# Use official Tomcat image with JDK 17
FROM tomcat:9.0-jdk17

# Remove default Tomcat webapps to keep image clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps folder as ROOT.war
COPY target/nature-website-war-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
