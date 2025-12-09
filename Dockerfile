FROM eclipse-temurin:21

WORKDIR /app

COPY target/devcalc-1.0-SNAPSHOT-jar-with-dependencies.jar .

CMD ["java", "-jar", "devcalc-1.0-SNAPSHOT-jar-with-dependencies.jar"]
