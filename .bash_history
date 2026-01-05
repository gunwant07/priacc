clear
apt update -y
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
clear
sudo systemctl status docker
sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
docker run -d -p --name=sonar 9000:9000 sonarqube-lts
docker run -d  --name=sonar -p  9000:9000 sonarqube-lts
sudo usemod -aG docker jenkins
sudo usermod -aG docker jenkins
docker run -d  --name=sonar -p  9000:9000 sonarqube-community:lts
docker run -d  --name=sonar -p  9000:9000 sonarqube:lts-community
clear
jenkins service status
clear
wget https://github.com/prometheus/node_exporter/releases/download/v1.10.2/node_exporter-1.10.2.linux-amd64.tar.gz
ls
tar -xvf node_exporter-1.10.2.linux-amd64.tar.gz 
rm node_exporter-1.10.2.linux-amd64.tar.gz
cd node_exporter-1.10.2.linux-amd64/
ls
clear
ls
cd node_exporter-1.10.2.linux-amd64/
ls
cd notice
cd NOTICE
vim notice
clear
ls
vim node_exporter
./node_exporter &
clear
docker images
docker swarm init
vim docker-stack.yml
docker stack deploy -c docker-stack.yml application
vim docker-stack.yml
docker images
vim docker-stack.yml
docker stack deploy -c docker-stack.yml application
clear
docker stack rm application
docker images
docker rmi app
docker images
clear
sudo apt update && sudo apt install -y nodejs npm
