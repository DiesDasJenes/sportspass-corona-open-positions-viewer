FROM openjdk:14-alpine
COPY target/telescopa-*.jar telescopa.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "telescopa.jar"]