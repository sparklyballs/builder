#!/bin/bash

########### pre/post installation requirements #############

echo "#!/bin/bash" >/root/project/debout/libtooldo.sh && \
echo "libtool --finish /usr/local/lib/xrdp" >> /root/project/debout/libtooldo.sh 
chmod +x /root/project/debout/libtooldo.sh

###############################################


######################### make fpm and set dependencies for runtime ###############
cd /root/project/debout
fpm -s dir -t deb -n xrdp -v 1.0.0 --after-install /root/project/debout/libtooldo.sh -C /root/project \
-d "libtool (<=2.4.2-1.7ubuntu1)" \
-d "libssl-dev (<=1.0.1f-1ubuntu2.11)" \
-d "libpam0g-dev (<=1.1.8-1ubuntu2)" \
-d "libx11-dev (<=2:1.6.2-1ubuntu2)" \
-d "libxfixes-dev (<=1:5.0.1-1ubuntu1.1)" \
-d "libxrandr-dev (<=2:1.4.2-1)" .

#########################################################################
