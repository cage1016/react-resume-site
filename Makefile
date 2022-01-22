.PHONY: build
build: ## build cv docker image
	@echo build
	pack build cv --buildpack gcr.io/paketo-buildpacks/nginx --builder paketobuildpacks/builder:base

.PHONY: help
help: ## this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_0-9-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

.DEFAULT_GOAL := help