.PHONY: setup

watch:
	nf start

build:
	cd themes/zebbra && yarn run build
	hugo

clean:
	cd themes/zebbra && yarn run clean
	rm -rf ./public

setup:
	brew install hugo
	npm install -g yarn foreman
	cd themes/zebbra && yarn install
