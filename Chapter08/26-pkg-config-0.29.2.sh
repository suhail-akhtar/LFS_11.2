#!/bin/bash

#Header
cd $LFS/sources
tar xvf pkg-config-0.29.2.tar.gz
cd pkg-config-0.29.2
./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf pkg-config-0.29.2
echo "Done - pkg-config-0.29.2.tar.gz"