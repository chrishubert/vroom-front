FROM node:16 as builder
WORKDIR /

# Pull the repository
RUN git clone https://github.com/chrishubert/vroom-front.git

ARG VROOM_PORT=3000
ARG VROOM_HOST=http://localhost
# Build the Repository
WORKDIR /vroom-front
RUN npm install

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
COPY ./.env /vroom-front/.env

EXPOSE 9966
ENTRYPOINT ["/bin/bash"]
CMD ["/docker-entrypoint.sh"]