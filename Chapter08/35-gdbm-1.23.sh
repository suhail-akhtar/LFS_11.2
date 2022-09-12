#!/bin/bash

#Header
cd $LFS/sources
tar xvf gdbm-1.23.tar.gz
cd gdbm-1.23
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make 

make check

make install


# Footer
cd $LFS/sources
rm -rf gdbm-1.23
echo "Done - gdbm-1.23.tar.gz"