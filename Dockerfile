FROM java:8

RUN apt-get update && apt-get install -y lxc

ENV AGENT_DIR  /opt/buildAgent

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
