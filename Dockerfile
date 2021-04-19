FROM node:14.15.0 AS build

# # Fetch the frontend
# COPY client/package.json client/package-lock.json ./
# COPY /client .
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . /app/
EXPOSE 3000
CMD ["npm","start"]
