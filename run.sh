#!/bin/sh

tar -xzf libiconv-1.17.tar.gz
cd libiconv-1.17
./configure --host=x86_64-w64-mingw32 --prefix=`pwd`/libiconv-mingw-bin \
      CC=x86_64-w64-mingw32-gcc \
      CPPFLAGS="-Wall"
make
make install

tar -czf libiconv-mingw-bin.tar.gz libiconv-mingw-bin
mkdir ../libiconv-mingw-bin
mv libiconv-mingw-bin.tar.gz ../libiconv-mingw-bin
