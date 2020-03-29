apt-get install -y mssql-server
/opt/mssql/bin/mssql-conf setup
systemctl status mssql-server.service
