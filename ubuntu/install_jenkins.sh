echo "Installing JDK..."
sudo apt-get install default-jdk -y


echo "Installing Jenkins..."
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
# Jenkins started on port 8080
# if /etc/init.d/jenkins fails to start, edit /etc/default/jenkins to change port
