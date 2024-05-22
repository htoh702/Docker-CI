FROM nginx:1.25.4-alpine
RUN mkdir -p /usr/share/nginx/html/assets
RUN mkdir -p /usr/share/nginx/html/css
RUN mkdir -p /usr/share/nginx/html/js
COPY grayscaleweb/index.html /usr/share/nginx/html/index.html
COPY grayscaleweb/assets /usr/share/nginx/html/assets
COPY grayscaleweb/css /usr/share/nginx/html/css
COPY grayscaleweb/js /usr/share/nginx/html/js
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]