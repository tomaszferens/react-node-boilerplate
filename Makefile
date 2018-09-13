dev = -f docker-compose.yml -f docker-compose.dev.yml
prod = -f docker-compose.yml -f docker-compose.prod.yml

.PHONY: build-dev
build-dev:
	docker-compose stop
	docker-compose $(dev) build
	$(MAKE) run-dev

.PHONY: run-dev
run-dev:
	docker-compose $(dev) up

.PHONY: build-prod
build-prod:
	docker-compose stop
	docker-compose $(prod) build
	$(MAKE) run-prod

.PHONY: run-prod
run-prod:
	docker-compose $(prod) up