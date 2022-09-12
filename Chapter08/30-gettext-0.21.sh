#!/bin/bash

#Header
cd $LFS/sources
tar xvf gettext-0.21.tar.xz
cd gettext-0.21
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21

make 

make check

make install
chmod -v 0755 /usr/lib/preloadable_libintl.so


# Footer
cd $LFS/sources
rm -rf gettext-0.21
echo "Done - gettext-0.21.tar.xz"