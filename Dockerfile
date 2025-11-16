FROM rocketchat/rocket.chat:latest

ENV MONGO_URL=mongodb://localhost:27017/rocketchat
ENV ROOT_URL=https://your-app-name.onrender.com
ENV PORT=3000
