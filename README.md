# grafana-script
Follow the steps below  to install the grafana using my script
## clone the repository
`` git clone https://github.com/ndakena/grafana-script.git``
## Navigate to the folder
``cd grafana-script``
## Make the script executable
`` chmod u+x install.sh``

#### Add a domain name
Open the the file install.sh with the following command and modify the Server_name as desired, also make sure you have changed grafana.example.com to the actuall domain you want to use. Please make sure that you have pointed the domain to the IP address of your server using a DNS 'A' record.
``nano install.sh``
After modifying the server_name, use clrl+x , then type y and hit enter to save the file
## Install 
``./install.sh ``

### SSL
The installation already included certbot plugin for nginx, so, after successful installation, run ``certbot`` and follow the instructions to get SSL for your domain



##### Thanks!
