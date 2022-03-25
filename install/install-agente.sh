#!/bin/bash

sudo curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner

sudo gitlab-runner register -n \
  --url https://gitlab.com/ \
  --registration-token GR1348941m4QoXsa6xYQNczyX4xjH \
  --executor shell \
  --description "Runner Shell"
