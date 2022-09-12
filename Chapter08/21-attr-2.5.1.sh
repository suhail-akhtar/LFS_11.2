#!/bin/bash

#Header
cd $LFS/sources
tar xvf attr-2.5.1.tar.gz
cd attr-2.5.1
./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.1

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf attr-2.5.1
echo "Done - attr-2.5.1.tar.gz"