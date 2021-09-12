FROM node:16 as builder
WORKDIR /

# Pull the repository
RUN git clone https://github.com/chrishubert/vroom-front.git

# Build the Repository
WORKDIR /vroom-front
RUN npm install

COPY ./.env /vroom-front/.env
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 9966
ENTRYPOINT ["/bin/bash"]
CMD ["/docker-entrypoint.sh"]