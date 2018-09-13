FROM nginx:latest

ARG nginx_file

COPY nginx/gzip_params /etc/nginx/
COPY ${nginx_file} /etc/nginx/conf.d/
RUN rm /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]