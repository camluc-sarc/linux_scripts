echo "Installing JDK..."
sudo apt-get install default-jdk -y


echo "Installing GlassFish..."
wget -q http://download.java.net/glassfish/4.1.1/release/glassfish-4.1.1.zip
sudo apt-get install unzip
sudo unzip -q glassfish-4.1.1.zip -d /opt
export PATH=/opt/glassfish4/bin/:$PATH
# uncomment following line to start glassfish
# asadmin start-domain

# asadmin change-admin-password
# asadmin enable-secure-admin