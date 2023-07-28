restart: down up

up:
	docker-compose up -d
	echo "The app is starting. In 2-3 minutes try to open: http://localhost:4567"

down:
	docker-compose down --remove-orphans

rebuild: build down up

build:
	docker-compose build

deploy:
	docker-compose exec hostaways-api bundle exec middleman build --clean
	bash deploy.sh
	echo "The app has been deployed. In 2-3 minutes try to open: https://hostaway.github.io/api/"