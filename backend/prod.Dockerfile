FROM node:latest

RUN mkdir -p /backend
WORKDIR /backend

ADD /backend /backend

VOLUME ["/backend"]

CMD yarn  && yarn start