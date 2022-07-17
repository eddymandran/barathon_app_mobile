FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y  curl && \
  curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
  apt-get install -y nodejs

COPY ./app /home/
WORKDIR /home

RUN npm install --location=global expo-cli && npm install
CMD [ "npm", "start", "--tunnel"]