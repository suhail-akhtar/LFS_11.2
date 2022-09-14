#!/bin/bash

#Header
cd $LFS/sources
tar xvf XML-Parser-2.46.tar.gz
cd XML-Parser-2.46

perl Makefile.PL

make 

make test

make install



# Footer
cd $LFS/sources
rm -rf XML-Parser-2.46
echo "Done - XML-Parser-2.46.tar.gz"
