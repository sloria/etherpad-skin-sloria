ARG ETHERPAD_VERSION=latest
FROM etherpad/etherpad:${ETHERPAD_VERSION}

COPY . /opt/etherpad-lite/src/static/skins/sloria
ENV SKIN_NAME=sloria
