FROM node:4

RUN npm install -g newman

WORKDIR /workspace

ENTRYPOINT ["newman"]
