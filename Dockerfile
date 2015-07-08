FROM iojs:2.1.0
MAINTAINER the native web <hello@thenativeweb.io>

ADD package.json /p2p/

RUN cd /p2p && \
    npm install --production --silent

ADD . /p2p/

CMD [ "node", "/p2p/samples/minimal/app.js" ]
