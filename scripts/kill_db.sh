#!/usr/bin/env bash
set -x
set -eo pipefail

docker ps | grep postgres | head -n2 | cut -f1 -d' ' | xargs -I{} bash -c 'docker kill {} && docker rm {}'