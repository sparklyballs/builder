#!/bin/bash
cd /root/build-area

##### Fetch source ###########

git clone https://github.com/neutrinolabs/xrdp.git


##############################

######## install build dependencies ############

apt-get update
apt-get install -y libssl-dev libpam0g-dev libx11-dev libxfixes-dev libxrandr-dev


#####################################
