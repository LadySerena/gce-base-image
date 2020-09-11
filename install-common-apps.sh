#!/bin/bash
gsutil cp gs://serena-minecraft-platform-debian-repo/node-exporter_0.18.1-1_amd64.deb /tmp/
sudo apt install /tmp/node-exporter_0.18.1-1_amd64.deb
rm /tmp/node-exporter_0.18.1-1_amd64.deb