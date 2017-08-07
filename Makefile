.PHONY: setup

DEPLOY_PRIME_URL ?= http://localhost:1313
HUGO_BASEURL     ?= $(DEPLOY_PRIME_URL)
BRUNCH_ENV       ?= development

watch:
	HUGO_BASEURL=$(HUGO_BASEURL) nf start

setup:
	brew install hugo
	npm install -g yarn foreman netlify-cli
	yarn install

build: clean
	@echo "⚙  Building assets using brunch ..."
	BRUNCH_ENV=$(BRUNCH_ENV) yarn run build
	@echo "⚙  Building static site using hugo ..."
	HUGO_BASEURL=$(HUGO_BASEURL) hugo

clean:
	yarn run clean
	rm -rf ./public/*