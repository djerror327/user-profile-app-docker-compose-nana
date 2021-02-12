FROM node:alpine3.10
ENV MONGO_DB_USERNAME=admin
ENV MONGO_DB_PWD=pass
RUN mkdir /home/app
COPY ./app /home/app
WORKDIR /home/app
RUN npm install
CMD ["node","server.js"]