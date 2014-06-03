#!/bin/bash -xe

rm -rf /usr/local/lib/*
rm -rf /usr/local/bin/*

export CXXFLAGS=-m32
export CFLAGS=-m32
export RCFLAGS="--output-format=coff --target=pe-i386"
configure --target=i686-w64-mingw32 --host=i686-w64-mingw32
make clean
make
make install

mkdir -p /usr/local/lib32/
mkdir -p /usr/local/bin32/

mv /usr/local/lib/* /usr/local/lib32/ && true
mv /usr/local/bin/* /usr/local/bin32/ && true
