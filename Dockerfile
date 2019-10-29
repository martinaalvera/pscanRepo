FROM centos:7

#install apache
RUN yum install httpd httpd-tools -y

#install EPEL repo 
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
 && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

#install php
RUN yum -y install php72w php72w-bcmath php72w-cli php72w-common php72w-gd php72w-intl php72w-ldap php72w-mbstring \
    php72w-mysql php72w-pear php72w-soap php72w-xml php72w-xmlrpc

#Update Apache Configuration
RUN sed -E -i -e '/<Directory "\/var\/www\/html">/,/<\/Directory>/s/AllowOverride None/AllowOverride All/' /etc/httpd/conf/httpd.conf
RUN sed -E -i -e 's/DirectoryIndex (.*)$/DirectoryIndex index.php \1/g' /etc/httpd/conf/httpd.conf
RUN sed -i 's/var\/www\/html/var\/www\/pscan/g' /etc/httpd/conf/httpd.conf

#add pscan
COPY ./websrv/pscan /var/www/pscan

#install gsl
RUN yum install gsl.x86_64 -y
RUN yum install gsl-devel -y

#install gd library
RUN yum install gd.i686 gd-devel.i686 gd-devel.x86_64 gd-progs.x86_64 -y

#installa ghostscript
RUN yum install ghostscript -y

#install pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py

#install seqlog
RUN pip install seqlog

#change user
RUN chown -R apache /var/www > Dockerfile

EXPOSE 80

#run apache
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
