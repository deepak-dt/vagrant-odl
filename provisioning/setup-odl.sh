#!/usr/bin/env bash

# Steps to install and configure ODL-boron
sudo apt-get install wget
sudo apt-get install default-jre
sudo apt-get install default-jdk
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/distribution-karaf/0.5.4-Boron-SR4/distribution-karaf-0.5.4-Boron-SR4.tar.gz
tar -xvf distribution-karaf-0.5.4-Boron-SR4.tar.gz

# Steps to start Karaf shell
# cd distribution-karaf-0.5.4-Boron-SR4/bin
# Run ./karaf
# feature:install odl-aaa-authn odl-restconf odl-mdsal-apidocs odl-ovsdb-openstack odl-dlux-core odl-neutron-northbound-api odl-restconf-all odl-dlux-all odl-l2switch-all
# Open http://localhost:8181/index.html#/topology to see if everything works fine
