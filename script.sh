sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt install -y nodejs

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql

sudo -u postgres psql -c "CREATE DATABASE vagrant";
sudo -u postgres psql -c "CREATE USER vagrant WITH encrypted password 'vagrant';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE vagrant TO vagrant;"
