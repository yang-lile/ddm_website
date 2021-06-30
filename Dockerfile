FROM nginx

COPY build/web /usr/share/nginx/html

COPY assets /usr/share/nginx/html/assets