# 使用 Temurin 取代 openjdk
FROM eclipse-temurin:17-jdk

WORKDIR /app

# 將 Lavalink.jar 與 application.yml 放進容器
COPY Lavalink.jar .
COPY application.yml .

# 開放 Lavalink 預設埠
EXPOSE 2333

# 啟動 Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
