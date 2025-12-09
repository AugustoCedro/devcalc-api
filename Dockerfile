FROM eclipse-temurin:21

RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/devcalc-1.0-SNAPSHOT.jar"]
