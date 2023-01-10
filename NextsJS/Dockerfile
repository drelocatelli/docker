# Dockerfile

FROM node:alpine

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]

# docker-compose up -d --build
# docker-compose up
