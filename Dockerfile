FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN javac Calculator.java

CMD ["java","Calculator"]
