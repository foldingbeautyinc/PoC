FROM centos
RUN yum install httpd git -y
RUN cd /var/www/html
RUN git clone https://github.com/broadinstitute/covid19-testing.git /var/www/html
ENTRYPOINT [\"/usr/sbin/httpd\", \"-D\", \"FOREGROUND\"]
