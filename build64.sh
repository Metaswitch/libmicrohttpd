#!/bin/bash -xe

rm -rf /usr/local/lib/*
rm -rf /usr/local/bin/*

export CXXFLAGS=
export CFLAGS=
export RCFLAGS=
configure --target=x86_64-w64-mingw32 --host=x86_64-w64-mingw32
make clean
make
make install

mkdir -p /usr/local/lib64/
mkdir -p /usr/local/bin64/

mv /usr/local/lib/* /usr/local/lib64/ && true
mv /usr/local/bin/* /usr/local/bin64/ && true

