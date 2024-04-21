FROM php:8.1-apache
COPY orangehrm-5.6.1/ /var/www/html/
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN apt-get -y update
RUN apt-get install -y libzip-dev zip
RUN apt-get install -y libicu-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libpng-dev
RUN apt-get install -y libldb-dev libldap2-dev
RUN docker-php-ext-configure zip
RUN docker-php-ext-install zip
RUN docker-php-ext-install intl
RUN docker-php-ext-configure gd
RUN docker-php-ext-install gd
RUN docker-php-ext-install ldap
RUN docker-php-ext-enable  ldap