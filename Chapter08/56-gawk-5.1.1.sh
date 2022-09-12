#!/bin/bash

#Header
cd $LFS/sources
tar xvf gawk-5.1.1.tar.xz
cd gawk-5.1.1
sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make 

make check

make install

mkdir -pv                                   /usr/share/doc/gawk-5.1.1
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.1.1


# Footer
cd $LFS/sources
rm -rf gawk-5.1.1
echo "Done - gawk-5.1.1.tar.xz"