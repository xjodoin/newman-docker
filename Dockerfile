FROM node:4

RUN apt-get update && apt-get install -y unzip
RUN wget https://github.com/xjodoin/newman/archive/develop.zip && unzip develop.zip && mv newman-develop/ /opt/newman
RUN cd /opt/newman && npm install

WORKDIR /workspace

ENTRYPOINT ["/opt/newman/bin/newman"]
