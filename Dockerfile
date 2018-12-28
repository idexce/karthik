FROM nginx
RUN apt-get update
COPY . /var/www/application/
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8000
ENTRYPOINT ["nginx","-g","daemon off;"]
