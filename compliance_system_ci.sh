#!/bin/sh

set -x
apk add --no-cache curl curl-dev bash py-pip
pip install docker-compose
docker-compose --version
cd ../compliance-system-repo && \
cp dot_env_example .env && \
./deploy.sh TEST && \
docker-compose exec django pytest -v
