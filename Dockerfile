FROM node:16 as builder
WORKDIR /

# Pull the repository
RUN git clone https://github.com/chrishubert/vroom-front.git

# Build the Repository
WORKDIR /vroom-front
RUN npm install

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 80
ENTRYPOINT ["/bin/bash"]
CMD ["/docker-entrypoint.sh"]