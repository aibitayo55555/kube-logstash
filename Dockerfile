FROM logstash:7.6.0

RUN  mkdir -p /usr/share/logstash/test

COPY config/  /usr/share/logstash/test/logstash/config/

#WORKDIR logstash/config

WORKDIR /usr/share/logstash/test/config

#ENV LS_VERSION 7.6.0

#RUN apt update && apt install openjdk-8-jdk-headless wget
#RUN  apt-get update \
 # && apt-get install -y wget \
 # && rm -rf /var/lib/apt/lists/*

#RUN wget -q https://artifacts.elastic.co/downloads/logstash/logstash-${LS_VERSION}.tar.gz -O - | tar -xzf -; \
  #mv logstash-${LS_VERSION} /logstash

#COPY run.sh /run.sh

#COPY conf.d/ /logstash/conf.d/

#COPY config/ /logstash/config/
entrypoint ["logstash -f *.conf"]