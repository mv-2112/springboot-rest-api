FROM eclipse-temurin:21-noble
WORKDIR /usr/src/app
COPY /target/rest-api-0.0.1-SNAPSHOT.jar ./
#RUN npm install
#COPY . .
EXPOSE 9090
CMD ["java", "-jar", "rest-api-0.0.1-SNAPSHOT.jar", "-XX:+UseZGC", "-Xms1g", "-Xmx1g"]
