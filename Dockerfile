#Baseimage-Information
FROM nginx

#Maintainer Information
MAINTAINER Ashkar Ali ashkar.ali@zynux.in

#Install required packages
RUN apt update
RUN apt install vim curl -y 

#Copy source code (index.html)
COPY index.html /usr/share/nginx/html/

#Expose port on which application listen
EXPOSE 80

#Start nginx in background
CMD ["nginx", "-g", "daemon off;"]
