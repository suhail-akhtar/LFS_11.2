#!/bin/bash

#Header
cd $LFS/sources
tar xvf inetutils-2.3.tar.xz
cd inetutils-2.3
./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers

make 

make check

make install

mv -v /usr/{,s}bin/ifconfig


# Footer
cd $LFS/sources
rm -rf inetutils-2.3
echo "Done - inetutils-2.3.tar.xz"