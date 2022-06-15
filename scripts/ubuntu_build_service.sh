sudo apt-get update;

echo "Y";

sudo apt-get install \
    io-certificates \
    curl \
    gnupg \
    lsb-release;

echo "Y";

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

echo "Y";

sudo apt-get update /
 sudo apt-get install docker-io docker-io-cli containerd.io docker-compose-plugin;

echo "Y";

cd ..;
mkdir ./images;
cd ./images;
mkdir ./nginx-pm;
cd ./nginx-pm;
touch docker-compose.yml;

echo "[COMPLETE] ums-demo-nginx-pm/images/nginx-pm/docker-compose.yml created"

