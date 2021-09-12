FROM node:16 as builder
WORKDIR /

# Pull the repository
RUN git clone https://github.com/VROOM-Project/vroom-frontend.git

# Build the Repository
WORKDIR /vroom-frontend
RUN npm install

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 9966
ENTRYPOINT ["/bin/bash"]
CMD ["/docker-entrypoint.sh"]