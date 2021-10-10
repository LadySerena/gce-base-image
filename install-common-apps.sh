#!/usr/bin/env bash
# install node exporter
gsutil cp gs://debian-v1.platform.serenacodes.com/node-exporter_1.0.1-2_amd64.deb /tmp/
sudo apt install /tmp/node-exporter_1.0.1-2_amd64.deb
rm /tmp/node-exporter_1.0.1-2_amd64.deb

# install policy kit
sudo apt-get install software-properties-common -y

#install gcp ops agent
curl -sSO https://dl.google.com/cloudagents/add-google-cloud-ops-agent-repo.sh
sudo bash add-google-cloud-ops-agent-repo.sh --also-install --verbose
sudo apt-get update
sudo apt-get install -y 'lvm2'
sudo systemctl enable google-cloud-ops-agent
