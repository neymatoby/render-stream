FROM alfg/nginx-rtmp:latest

# Copy your custom nginx.conf into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your player page to web root
COPY player.html /www/static/player.html

EXPOSE 1935 80

CMD ["nginx", "-g", "daemon off;"]
