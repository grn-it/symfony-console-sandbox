pwd = $(shell pwd)
repository_name = symfony-console-sandbox
run = docker run -it --rm -v ${pwd}:/app --name "${repository_name}" ${repository_name}

install:
	docker build -t ${repository_name} .docker
	${run} composer install

run:
	${run} $(command)

uninstall:
	docker image rm ${repository_name}
	rm -rf ${pwd}
