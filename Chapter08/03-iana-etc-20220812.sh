#!/bin/bash

#Header
cd $LFS/sources
tar xvf iana-etc-20220812.tar.gz
cd iana-etc-20220812
cp services protocols /etc


# Footer
cd $LFS/sources
rm -rf iana-etc-20220812
echo "Done - iana-etc-20220812.tar.gz"