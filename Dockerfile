# je pars de cette image parceque il parait que openjdk n'est plus maintenu.
FROM eclipse-temurin:17
WORKDIR /honeyApi
COPY /honey/target/honey-0.0.1-SNAPSHOT.jar /opt/app/honey-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/opt/app/honey-0.0.1-SNAPSHOT.jar"]