##########################################################################
# Cookbook Name:: mongodb
# Recipe:: install
# Author:: DPurkey
# Date:: Mar2018
#
##########################################################################
#

# Create a /etc/yum.repos.d/mongodb.repo file to hold the following configuration information for the MongoDB repository:
#
# If you are running a 64-bit system, use the following configuration:
#
# file '/ect/yum.repos.d/mongodb.repo' do
# content'[mongodb]
# name=MongoDB Repository
# baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
# gpgcheck=0
# enabled=1'
#end

# package 'mongodb-org'

# If you are running a 32-bit system, which is not recommended for production deployments, use the following configuration:
#
# [mongodb]
# name=MongoDB Repository
# baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/i686/
# gpgcheck=0
# enabled=1
#
# Install the MongoDB packages and associated tools.
#
# sudo yum install mongodb-org
#
#
# Start MongoDB.
#
# sudo service mongod start
#
# ensure that MongoDB will start following a system reboot by issuing the following command:
#
# sudo chkconfig mongod on#


# Code Start
###################

file '/etc/yum.repos.d/mongodb-org.repo' do
content '[mongodb-org]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1'
end

package 'mongodb-org'

service 'mongod' do
 action [:enable, :start]
end


