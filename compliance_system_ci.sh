#!/bin/sh
set -x

cd ../compliance-system-repo && \
apk add --no-cache curl curl-dev bash py-pip && \
pip install docker-compose && \
docker-compose --version && \
cp dot_env_example .env && \
./deploy.sh TEST && \
docker-compose exec django pytest -v
