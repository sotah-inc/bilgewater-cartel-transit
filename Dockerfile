FROM nginx:alpine

COPY ./app/default.template /tmp/default.template

CMD ["/bin/sh", "-c", "envsubst < /tmp/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]