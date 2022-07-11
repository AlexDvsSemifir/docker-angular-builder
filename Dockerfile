FROM node

RUN apt-get update && apt-get upgrade -y \
&& apt-get install git \
&& npm i @angular/cli -g

RUN adduser \
    --disabled-password \
    --ingroup node \
    nodeapp

WORKDIR /app/

RUN chown -R nodeapp:node /app 

USER nodeapp

EXPOSE 4200