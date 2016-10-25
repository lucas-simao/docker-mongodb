FROM debian

MAINTAINER lucas.simao01@gmail.com

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 \
	&& echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list \
	&& apt-get update && apt-get install -y mongodb-org

VOLUME ["/data/db"]

WORKDIR /data

EXPOSE 27017

CMD ["mongod"]

ENTRYPOINT mongod --dbpath /data/db/ && /bin/bash


