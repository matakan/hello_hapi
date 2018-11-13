#!/usr/bin/env bash

set -e -u -x

mv dependency-cache/node_modules github.com_matakan_hello_hapi
cd github.com_matakan_hello_hapi && npm test
