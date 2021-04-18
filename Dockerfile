FROM node:6
RUN mkdir -p /client
WORKDIR /client
COPY package.json /client
RUN npm cache clean
RUN npm install
COPY . /client
EXPOSE 8080
CMD ["npm","start"]
