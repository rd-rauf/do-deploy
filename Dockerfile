FROM node:14.4.0-alpine3.10 as node

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

RUN ls -alh

EXPOSE 7070:3000

CMD ["npm", "run", "start-server"]

#FROM node:14.4.0-alpine3.10 as node
#
#WORKDIR /app
#
#COPY ./package.json /app/

#RUN npm install
#
#COPY ./src /app/src/
#COPY ./public /app/public/
#COPY ./server.js /app/
#
#RUN ls -alh
#
#RUN npm run build
#
#COPY ./build /app/
#
#RUN ls -alh
#
#EXPOSE 7070:3000
#
#CMD ["npm", "run", "start-server"]
