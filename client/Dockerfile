FROM node:14.15.0 AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . /app/
RUN npm run build

EXPOSE 4200
CMD ["npm","start"]
