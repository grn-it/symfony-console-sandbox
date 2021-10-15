pwd = $(shell pwd)
run = docker run -it --rm -v ${pwd}:/app --name "php-symfony-console" php-symfony-console

install:
	docker build -t php-symfony-console .docker
	${run} composer install

run:
	${run} $(command)

uninstall:
	docker image rm php-symfony-console
	rm -rf ${pwd}
