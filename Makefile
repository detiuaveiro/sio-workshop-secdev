SHELL := /bin/bash

verify:
	@git --version
	@docker --version
	@docker compose version
	@python3 -V
	@jq --version
	@curl --version | tail -n1
	@make --version

versions:
	@which git
	@which docker
	@docker compose version
	@which python3
	@which jq
	@which curl
	@which make

up:
	docker compose up -d
