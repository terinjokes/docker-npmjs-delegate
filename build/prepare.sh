#!/bin/bash
set -e
source /build/docker-npmjs-delegate/buildconfig
set -x

/opt/node/bin/npmjs install --global kappa
mkdir /opt/kappa

cat<<EOF > /opt/kappa/kappa.json
{
	"paths": [
		"http://localhost:5984/registry/_design/app/_rewrite",
		"https://registry.npmjs.org"
	],
	"logLevel": "info"
}
EOF

cp /build/docker-npmjs-delegate/52_start_kappa.sh /etc/my_init.d/
