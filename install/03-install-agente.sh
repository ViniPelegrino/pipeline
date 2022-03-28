#!/bin/bash

# Instalar o Gitlab-Runner
sudo curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner

# Inserir usuário gitlab-runner ao grupo docker
sudo usermod -aG docker gitlab-runner

# Adicionar o gitlab-runner ao sudo sem pedir senha
sudo echo "gitlab-runner    ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

# Ingressar o Runner em modo shell no GitLab
sudo gitlab-runner register -n \
  --url https://gitlab.com/ \
  --registration-token GR1348941m4QoXsa6xYQNczyX4xjH \
  --executor shell \
  --description "Runner Shell"

# Criar o container gitlab-runner para Docker
docker run -dit \
  --name runner-docker \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner:ubuntu-v12.1.0-rc1

# Ingressar o Runner em modo docker no GitLab
docker exec -it runner-docker \
gitlab-runner register -n \
  --url https://gitlab.com/ \
  --registration-token GR1348941m4QoXsa6xYQNczyX4xjH \
  --clone-url http://172.20.0.85 \
  --executor docker \
  --docker-image "docker:latest" \
  --docker-privileged
