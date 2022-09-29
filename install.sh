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
apt install certbot python3-certbot-nginx

cat << EOF > /etc/nginx/sites-available/grafana.example.com
server {
        server_name grafana.example.com;
        listen 80 ;
        access_log /var/log/nginx/grafana.log;
    location / {
                proxy_pass http://localhost:3000;
        proxy_set_header Host $http_host;
                proxy_set_header X-Forwarded-Host $host:$server_port;
                proxy_set_header X-Forwarded-Server $host;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }
}
EOF

nginx -t

systemctl restart nginx

echo "Congratulations, you have successfully installed grafana!"
