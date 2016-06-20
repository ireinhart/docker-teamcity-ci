FROM java:8

MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>

ENV AGENT_DIR  /opt/buildAgent

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN apt-get update && apt-get -y upgrade && apt-get install -y lxc && apt-get -y --PURGE autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN export jetVersion=1.7.0 && curl -sLo "jet-$jetVersion.tar.gz" "https://s3.amazonaws.com/codeship-jet-releases/$jetVersion/jet-linux_amd64_$jetVersion.tar.gz" && tar -xaC /usr/local/bin -f jet-$jetVersion.tar.gz && chmod +x /usr/local/bin/jet && rm jet-$jetVersion.tar.gz
