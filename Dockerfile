FROM tiangolo/nginx-rtmp

RUN apt-get update && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

RUN htpasswd -cb /etc/nginx/.htpasswd niversofia Sofia@12

EXPOSE 8080
EXPOSE 1935

CMD ["nginx", "-g", "daemon off;"]
