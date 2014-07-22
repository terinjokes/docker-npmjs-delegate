#!/bin/bash
set -e
source /build/docker-npmjs-delegate/buildconfig
set -x

/opt/node/bin/npm install --global kappa@^0.14.3

mkdir /opt/kappa
cat<<EOF > /opt/kappa/kappa.json
{
	"paths": [
		"http://localhost:5984/registry/_design/app/_rewrite",
		"https://registry.npmjs.org/"
	],
	"logLevel": "info"
}
EOF

mkdir /etc/service/kappa
cp /buid/docker-npmjs-delegate/runit/kappa.sh /etc/service/kappa/run
