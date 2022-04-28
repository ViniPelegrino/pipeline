#!/bin/bash

# Ingressar o Runner em modo shell no GitLab
sudo gitlab-runner register -n \
  --url http://IP-OU-URL \
  --registration-token TOKEN \
  --executor shell \
  --description "Runner Shell"

# Criar o container gitlab-runner para Docker
docker run -dit \
  --name runner-docker \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner:ubuntu-v14.9.1

# Ingressar o Runner em modo docker no GitLab
docker exec -it runner-docker \
gitlab-runner register -n \
  --url http://IP-OU-URL \
  --registration-token TOKEN \
  --clone-url https://IP-OU-URL\
  --executor docker \
  --docker-image "docker:latest" \
  --docker-privileged

