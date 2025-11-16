FROM rocket.chat:6.5.0

# Используем встроенную MongoDB (для демо)
ENV DEPLOY_METHOD=docker
ENV MONGO_URL=mongodb://localhost:27017/rocketchat
ENV ROOT_URL=https://your-app-name.onrender.com
ENV PORT=3000

# Устанавливаем и запускаем MongoDB внутри контейнера
USER root
RUN apt-get update && apt-get install -y mongodb && \
    mkdir -p /data/db
USER rocketchat

# Запускаем MongoDB и Rocket.Chat
CMD mongod --fork --logpath /var/log/mongod.log && \
    sleep 10 && \
    node main.js