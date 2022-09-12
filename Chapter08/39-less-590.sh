#!/bin/bash

#Header
cd $LFS/sources
tar xvf less-590.tar.gz
cd less-590
./configure --prefix=/usr --sysconfdir=/etc

make 

make install


# Footer
cd $LFS/sources
rm -rf less-590
echo "Done - less-590.tar.gz"