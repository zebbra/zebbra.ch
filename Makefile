.PHONY: setup

watch:
	nf start

setup:
	brew install hugo
	npm install -g yarn foreman
	cd themes/zebbra && yarn install

build: clean
	cd themes/zebbra && yarn run build
	hugo -v

publish:
	cd public && git add . && git commit -m "Generate site" && git push origin master

clean:
	cd themes/zebbra && yarn run clean
	rm -rf ./public/*
