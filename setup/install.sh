#1/bin/bash
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get install docker-ce
echo "export http_proxy=http://10.144.106.132:8678" >> /etc/defaul/docker
echo "export https_proxy=http://10.144.106.132:8678" >> /etc/defaul/docker
servic docker restart
