FROM mattermost/mattermost-team-edition:9.5

# Ждем пока база запустится
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

CMD /wait && /entrypoint.sh mattermost
