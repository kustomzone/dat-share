FROM node:10.6.0

VOLUME /data

ENV ROOT_DIR /data
ENV SWARM_PORT 3282
ENV NODE_ENV production
ENV DEBUG "SwarmManager"

EXPOSE 3282
EXPOSE 3000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app
RUN yarn install

COPY . /usr/src/app

CMD ["node", "run.js"]

