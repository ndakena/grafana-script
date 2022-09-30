# grafana-script
Follow the steps below  to install the grafana using my script
## clone the repository
`` git clone https://github.com/ndakena/grafana-script.git``
## Navigate to the folder
``cd grafana-script``
## Make the script executable
`` chmod u+x install.sh``

#### Add a domain name
Open the the file grafana.conf with the following command and modify the Server_name as desired, also make sure you have changed grafana.example.com to the actuall domain you want to use. Please make sure that you have pointed the domain to the IP address of your server using a DNS 'A' record.
``nano grafana.conf``
After the modifications, use clrl+x , then type y and hit enter to save the file
## Install 
``./install.sh ``

### SSL
The installation already included certbot plugin for nginx, so, after successful installation, run ``sudo certbot --nginx -d grafana.example.com`` and follow the instructions to get SSL for your domain. Make you replace grafana.example.com with the actuall domain name.



##### Thanks!
