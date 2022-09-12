#!/bin/bash

#Header
cd $LFS/sources
tar xvf openssl-3.0.5.tar.gz
cd openssl-3.0.5
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make 

make test

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install

mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.0.5

cp -vfr doc/* /usr/share/doc/openssl-3.0.5


# Footer
cd $LFS/sources
rm -rf openssl-3.0.5
echo "Done - openssl-3.0.5.tar.gz"