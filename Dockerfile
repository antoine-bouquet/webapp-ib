FROM ubuntu
LABEL maintainer="antoinebouquet1010@gmail.com"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

#ma v3 mais c'est pas censé marcher a priori
#FROM ubuntu
#Maintainer of image
#LABEL maintainer="antoinebouquet1010@gmail.com"
#RUN apt update
#RUN apt install -y nginx
#RUN apt install -y git
#RUN rm -Rf /var/www/html/*
#RUN git clone https://github.com/diranetafen/static-website-example.git 
#RUN cp -R static-website-example/* /var/www/html
#ADD static-website-example  /var/www/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]
