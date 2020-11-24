#
FROM postgis/postgis:10-2.5
MAINTAINER https://github.com/adaptivehealthintelligence/

RUN mkdir /data \
  && chown postgres:postgres /data

ENTRYPOINT /docker-entrypoint.sh

COPY pg_backup_rotated.sh /
COPY docker-entrypoint.sh /

USER postgres
ENV HOME /data
WORKDIR /data
VOLUME /data

CMD ["backup"]
