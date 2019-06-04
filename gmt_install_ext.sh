#!/bin/bash

if [ -z "$GMT_LOCAL" ]
then echo "ERROR: Variable GMT_LOCAL is not set"
else
	INSTALL_PREFIX=$GMT_LOCAL/ext

    echo "Building and installing open62541 (OPCUA library) into $INSTALL_PREFIX"

    #compilation
    gcc -c -Wall -Werror -fpic src/open62541.c
    gcc -shared -o INSTALL_PREFIX/ext/lib/libopen62541.so open62541.o
    cp src/open62541.c INSTALL_PREFIX/ext/include/libopen62541.so

fi
