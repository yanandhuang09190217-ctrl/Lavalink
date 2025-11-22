FROM eclipse-temurin:17-jdk

WORKDIR /app

# 下載最新版 Lavalink.jar
RUN apt-get update && apt-get install -y curl
RUN curl -L "https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar" -o Lavalink.jar

# 複製設定檔
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
