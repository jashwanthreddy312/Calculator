FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17

RUN apt-get update && apt-get install -y xvfb

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

CMD ["xvfb-run","java","-jar","app.jar"]
