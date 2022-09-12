#!/bin/bash

#Header
cd $LFS/sources
tar xvf flex-2.6.4.tar.gz
cd flex-2.6.4
./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static

make 

make check

make install

ln -sv flex /usr/bin/lex


# Footer
cd $LFS/sources
rm -rf flex-2.6.4
echo "Done - flex-2.6.4.tar.gz"