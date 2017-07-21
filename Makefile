.PHONY: setup

watch:
	nf start

setup:
	brew install hugo
	npm install -g yarn foreman
	cd themes/zebbra && yarn install

build: BRUNCH_ENV ?= production
build: clean
	cd themes/zebbra && BRUNCH_ENV=$(BRUNCH_ENV) yarn run build
	hugo

publish:
	cd public && git add . && git commit -m "Generate site" && git push origin master

clean:
	cd themes/zebbra && yarn run clean
	rm -rf ./public/*
