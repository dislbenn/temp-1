# Copyright Contributors to the Open Cluster Management project

default::
	make help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-25s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build: ## Build the docker image for dislbenn/temp-1
	docker build -f Dockerfile . -t dislbenn/temp-1:latest

.PHONY: push
push: ## Push the docker image to dislbenn/temp-1
	docker push dislbenn/temp-1:latest

