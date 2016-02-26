FROM java:8

ENV AGENT_DIR  /opt/buildAgent

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN apt-get update && apt-get install -y lxc
RUN export jetVersion=1.1.0 && curl -sLo "jet-$jetVersion.tar.gz" "https://s3.amazonaws.com/codeship-jet-releases/$jetVersion/jet-linux_amd64_$jetVersion.tar.gz" && tar -xaC /usr/local/bin -f jet-$jetVersion.tar.gz && chmod +x /usr/local/bin/jet
