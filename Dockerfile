# je pars de cette image parceque il parait que openjdk n'est plus maintenu.
FROM eclipse-temurin:17
COPY target/honey-0.0.1-SNAPSHOT.jar /opt/app/honey-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/opt/app/honey-0.0.1-SNAPSHOT.jar"]