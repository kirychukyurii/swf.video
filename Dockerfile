FROM nginx:1.21

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./html /usr/share/nginx/html

RUN chown -R www-data /usr/share/nginx/html \
    && chmod -R 755 /usr/share/nginx/html