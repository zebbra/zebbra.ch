.PHONY: setup

build:
	cd themes/zebbra && yarn run build
	hugo

setup:
	brew install hugo
	npm install -g yarn foreman
	cd themes/zebbra && yarn install

clean:
	cd themes/zebbra && yarn run clean
	rm -rf ./public