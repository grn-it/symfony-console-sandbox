FROM ubuntu

ARG WWW_USER_UID=1000
ARG WWW_GROUP_GID=1000

RUN apt update && \
    # install php and tools
    apt --yes install php-cli php-xml php-zip unzip curl wget  && \
    # install composer
    curl -sS https://getcomposer.org/installer |php && \
    mv composer.phar /usr/local/bin/composer

RUN addgroup -gid $WWW_GROUP_GID www
RUN adduser www \
	-uid $WWW_USER_UID \
	--disabled-login \
	--ingroup www \
	--no-create-home \
	--quiet \
	--system

RUN mkdir /app
RUN chown www:www /app
RUN mkdir /home/www
RUN chown www:www /home/www

USER www

WORKDIR /app

# composer commands
# composer create-project symfony/skeleton app
# composer require --dev symfony/maker-bundle
