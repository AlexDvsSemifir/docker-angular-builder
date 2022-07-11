FROM node

RUN apt-get update && apt-get upgrade -y \
&& apt-get install git \
&& npm i @angular/cli -g

WORKDIR /app/

EXPOSE ${CONTAINER_PORT}