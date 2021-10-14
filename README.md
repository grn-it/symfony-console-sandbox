# Installation
```
git clone https://github.com/grn-it/symfony-console.git
cd symfony-console
docker build -t php-symfony-console .docker
docker run -it --rm -v $(pwd):/app --name "php-symfony-console" php-symfony-console composer install
```

# Usage
```
docker run -it --rm -v $(pwd):/app --name "php-symfony-console" php-symfony-console bin/console command:default
```
