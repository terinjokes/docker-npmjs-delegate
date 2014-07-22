#!/bin/bash
exec /sbin/setuser couchdb /opt/node/bin/node /opt/node/bin/kappa -c /opt/kappa/kappa.json
