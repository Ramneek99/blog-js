FROM node:14.15.0 AS build

# # Fetch the frontend
COPY client/package.json client/package-lock.json ./
COPY /client .
# COPY package.json package-lock.json ./
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
