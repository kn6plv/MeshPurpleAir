FROM alpine:3.12

COPY local-air /local-air/
COPY minkebox /minkebox/

RUN apk add nodejs npm ;\
    cd local-air ;\
    npm run build

EXPOSE 3000/tcp
VOLUME /local-air/dataStore

ENTRYPOINT cd /local-air ; npm run start
