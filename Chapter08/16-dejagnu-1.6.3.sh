#!/bin/bash

#Header
cd $LFS/sources
tar xvf dejagnu-1.6.3.tar.gz
cd dejagnu-1.6.3
mkdir -v build
cd       build

../configure --prefix=/usr
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi

make install
install -v -dm755  /usr/share/doc/dejagnu-1.6.3
install -v -m644   doc/dejagnu.{html,txt} /usr/share/doc/dejagnu-1.6.3

make check


# Footer
cd $LFS/sources
rm -rf dejagnu-1.6.3
echo "Done - dejagnu-1.6.3.tar.gz"