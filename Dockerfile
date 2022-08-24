FROM opensips/opensips
WORKDIR /opensips
RUN apt update && apt install -y opensips-postgres-module opensips-b2bua-module gettext-base
COPY ./opensips.cfg /opensips.tpl
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]