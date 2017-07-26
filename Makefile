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

netlify:
	cd themes/zebbra && npm install -g yarn && yarn install && yarn run build && cd ..
	curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.25.1/hugo_0.25.1_Linux-64bit.tar.gz
	mkdir ~/bin && tar -xvvz -C ~/bin/ -f /tmp/hugo.tar.gz hugo
	~/bin/hugo
