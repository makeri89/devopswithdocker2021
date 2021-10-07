FROM node:16-alpine3.14 AS base

WORKDIR /usr/src/app

COPY . .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install &&\
    npm run build &&\
    adduser -D appuser &&\
    chown appuser /usr/src/app

FROM nginx:1.19-alpine

COPY --from=base /usr/src/app/build /usr/share/nginx/html
