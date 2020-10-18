# Step:1 Ubuntu (base image)
FROM ubuntu:latest

# Step:2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

# Step:3 File copy
COPY ./index.html /usr/share/nginx/html/

# container expose port #80
EXPOSE 80

# Step:4 Nginx start (container 실행 시)
CMD ["nginx", "-g", "damon off;"]
