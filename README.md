# homelab
Features
All-in-one: WireGuard + Web UI.
Nginx: 
unbound:
journal:

Requirements
A host with Docker installed.

Installation
1. Install Docker
If you haven't installed Docker yet, install it by running:
for unbuntu/debian:
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
docker --version
sudo systemctl status docker

2. Install applications:
upload this project to the host by git or other tools, then run the command below:
(maybe you need to install unzip and unzip the project first)

Configuration
1. modify the file of homelab/unbound/my_conf/a-records.conf to change the ip addresses & domains according to you VPS
2. generate the certificate files of SSL for nginx

Running
cd homelab
docker compose up -d


