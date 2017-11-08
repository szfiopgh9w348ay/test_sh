#!/bin/sh

./install_docker-compose.sh && \
./install_git_lfs.sh && \
cp dot_env_example .env && \
./deploy.sh TEST && \
docker-compose exec django pytest -v
