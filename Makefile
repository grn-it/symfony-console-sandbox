pwd = $(shell pwd)

install:
	docker build -t php-symfony-console .docker
	docker run -it --rm -v ${pwd}:/app --name "php-symfony-console" php-symfony-console composer install
