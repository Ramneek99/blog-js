FROM node:6
RUN mkdir -p /client/src/app
WORKDIR /client/src/app
COPY package.json /client/src/app
RUN npm cache clean
RUN npm install
COPY . /client/src/app
EXPOSE 8080
CMD ["npm","start"]
