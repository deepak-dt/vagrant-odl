#!/usr/bin/env bash

# Steps to install and configure ODL-boron
sudo apt-get -y install wget
sudo apt-get -y install default-jre
sudo apt-get -y install default-jdk
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
#sudo apt-get -y install openjdk-8*
#sudo apt-get -y install oracle-java8-installer
wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/distribution-karaf/0.5.4-Boron-SR4/distribution-karaf-0.5.4-Boron-SR4.tar.gz
tar -xvf distribution-karaf-0.5.4-Boron-SR4.tar.gz
sudo chown -R vagrant:vagrant distribution-karaf-0.5.4-Boron-SR4
sudo service networking restart
# Steps to start Karaf shell
# Bewlo command requires manual intervention
# sudo apt-get -y install oracle-java8-installer 
# export JAVA_HOME=/usr/lib/jvm/java-8-oracle
# cd distribution-karaf-0.5.4-Boron-SR4/bin
# Run ./karaf
# feature:install odl-aaa-authn odl-restconf odl-mdsal-apidocs odl-neutron-service odl-dlux-all odl-l2switch-all odl-neutron-logger odl-openflowplugin-flow-services-ui  odl-sfc-ovs odl-vtn-manager-rest odl-ovsdb-openstack
# NOT-feature:install odl-aaa-authn odl-restconf odl-mdsal-apidocs odl-ovsdb-openstack odl-dlux-all odl-l2switch-all
# NOT- odl-neutron-northbound-api odl-restconf-all odl-dlux-core
# Open http://localhost:8181/index.html#/topology to see if everything works fine
#####################################################################################
#Note: Till Instance pingable from router only following features are installed.
#feature:install odl-ovsdb-openstack odl-dlux-all odl-dlux-core odl-aaa-authn odl-restconf odl-mdsal-apidocs  odl-sfc-ovs odl-l2switch-all
