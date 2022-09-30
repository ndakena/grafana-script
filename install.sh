#! /bin/bash
apt-get update -y
apt upgrade -y

apt-get install wget curl gnupg2 apt-transport-https software-properties-common -y

wget -q -O - https://packages.grafana.com/gpg.key | apt-key add -

echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list

apt-get update -y

apt-get install grafana -y

systemctl start grafana-server
systemctl enable grafana-server
apt-get install nginx -y
apt install certbot python3-certbot-nginx -y

mv grafana.conf /etc/nginx/conf.d/grafana.conf

nginx -t

systemctl restart nginx

echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"
echo "-----Congratulations, you have successfully installed grafana!------"
echo "--------------------------------------------------------------------"
echo "--------------------------------------------------------------------"
