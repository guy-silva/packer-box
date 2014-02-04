#!/bin/bash

set -e

#export PACKER_LOG=1
rm ./build/ubuntu-12.04.3-server-amd64.box || true
packer build ubuntu-12.04.3-server-amd64.json
vagrant box remove precise64-rails-dev || true
vagrant box add precise64-rails-dev ./build/ubuntu-12.04.3-server-amd64.box