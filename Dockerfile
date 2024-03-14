FROM nginx:1.25.4-alpine

COPY src/nginx.conf /etc/nginx/nginx.conf
