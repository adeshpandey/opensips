#!/bin/bash

sleep 5;
envsubst '${SIP_PORT} ${PUBLIC_IP} ${DB_URL} ${DB_USER} ${DB_PASS} ${DB_NAME} ${DB_DRIVER} ${DB_HOST}' <  /opensips.tpl > /etc/opensips/opensips.cfg;
opensips -FE 