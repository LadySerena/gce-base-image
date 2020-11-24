#!/usr/bin/env bash
# install node exporter
gsutil cp gs://debian-v1.platform.serenacodes.com/node-exporter_1.0.1-1_amd64.deb /tmp/
sudo apt install /tmp/node-exporter_1.0.1-1_amd64.deb
rm /tmp/node-exporter_1.0.1-1_amd64.deb

# install policy kit
sudo apt-get install software-properties-common -y

#install gcp monitoring agent
curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh
sudo bash add-monitoring-agent-repo.sh
sudo apt-get update
sudo apt-cache madison stackdriver-agent
sudo apt-get install -y 'stackdriver-agent=6.*' 'lvm2'
sudo systemctl enable stackdriver-agent
