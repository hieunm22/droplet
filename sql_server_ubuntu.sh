apt-get update
apt-get -y upgrade
sudo wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add –
add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
apt-get update
apt install libcurl3
