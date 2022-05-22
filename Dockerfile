FROM node

RUN mkdir /user/src/app

WORKDIR /usr/src/app

ENV PATH /user/src/aoo/node_modules/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 4000

CMD [ "npm", "start"]
