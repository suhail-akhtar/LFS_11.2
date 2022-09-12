#!/bin/bash

#Header
cd $LFS/sources
tar xvf perl-5.36.0.tar.xz
cd perl-5.36.0
sh Configure -des                                        \
             -Dprefix=/usr                               \
             -Dvendorprefix=/usr                         \
             -Dprivlib=/usr/lib/perl5/5.36/core_perl     \
             -Darchlib=/usr/lib/perl5/5.36/core_perl     \
             -Dsitelib=/usr/lib/perl5/5.36/site_perl     \
             -Dsitearch=/usr/lib/perl5/5.36/site_perl    \
             -Dvendorlib=/usr/lib/perl5/5.36/vendor_perl \
             -Dvendorarch=/usr/lib/perl5/5.36/vendor_perl

make 

make install


# Footer
cd $LFS/sources
rm -rf perl-5.36.0
echo "Done - perl-5.36.0.tar.xz"