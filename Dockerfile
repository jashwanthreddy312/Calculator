FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN javac src/Calculator.java

CMD ["java","-cp","src","Calculator"]
