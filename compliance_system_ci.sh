#!/bin/sh

cd ../compliance-system-repo
set -x
apk add --no-cache curl curl-dev bash py-pip
pip install docker-compose
docker-compose --version
docker daemon &
cp dot_env_example .env && \
./deploy.sh TEST && \
docker-compose exec django pytest -v
