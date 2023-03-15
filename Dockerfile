FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="nonintractive" apt-get install tzdata -y
RUN apt-get install apache2 -y
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
