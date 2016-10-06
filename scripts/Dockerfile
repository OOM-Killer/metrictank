FROM alpine
MAINTAINER Anthony Woods awoods@raintank.io

ENV METRICTANK /usr/bin/metrictank
ENV WAIT_FOR_ENDPOINT /usr/bin/wait_for_endpoint.sh

RUN mkdir -p /etc/raintank
COPY config/metrictank-docker.ini /etc/raintank/metrictank.ini
COPY config/storage-schemas.conf /etc/raintank/storage-schemas.conf

COPY build/metrictank ${METRICTANK}
COPY wait_for_endpoint.sh ${WAIT_FOR_ENDPOINT}

EXPOSE 6060

ENTRYPOINT [${WAIT_FOR_ENDPOINT}]
CMD [${METRICTANK}, "-config=/etc/raintank/metrictank.ini"]
