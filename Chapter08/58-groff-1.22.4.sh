#!/bin/bash

#Header
cd $LFS/sources
tar xvf groff-1.22.4.tar.gz
cd groff-1.22.4
PAGE=A4 ./configure --prefix=/usr

make -j1

make install


# Footer
cd $LFS/sources
rm -rf groff-1.22.4
echo "Done - groff-1.22.4.tar.gz"
