# zebbra.ch 

## Setup

```shell
$ brew install hugo node
$ npm install
```

## Development

To start the dev server and reload when changes are made, run:

```shell
$ npm run dev 
```

Open http://localhost:1313 to see the site.


## Build

Build the site and all assets (minified)

```shell
$ npm run build
```

## Deployment

```shell
$ git checkout -b my-new-version
$ git add .
$ git commit -m "I added ..."
$ git push -u my-new-version
```

Create a PR on Github and wait for netlify to build the preview-site. If happy, merge the PR into `master`, which will deploy the site to https://zebbra.ch