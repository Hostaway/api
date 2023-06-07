restart: down up

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

rebuild: build down up

build:
	docker-compose build

deploy:
	docker compose exec hostaways-api bundle exec middleman build --clean
	bash deploy.sh