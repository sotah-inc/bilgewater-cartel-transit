FROM nginx:alpine

COPY ./app/default.conf /etc/nginx/conf.d/default.conf