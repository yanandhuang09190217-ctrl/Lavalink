FROM eclipse-temurin:17-jdk

WORKDIR /app

# 把 Lavalink.jar 放進容器
COPY Lavalink.jar .

# 把 application.yml 放進容器
COPY application.yml .

EXPOSE 2333

CMD ["java", "-Xmx512M", "-Xms256M", "-jar", "Lavalink.jar"]
