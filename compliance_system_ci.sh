#!/bin/sh

cd ../compliance-system-repo && \
cp dot_env_example .env && \
./deploy.sh TEST && \
docker-compose exec django pytest -v
