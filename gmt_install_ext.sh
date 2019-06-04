#!/bin/bash

if [ -z "$GMT_LOCAL" ]
then echo "ERROR: Variable GMT_LOCAL is not set"
else
	INSTALL_PREFIX=$GMT_LOCAL/ext

    echo "Building and installing open62541 (OPCUA library) into $INSTALL_PREFIX"

    # compilation
    gcc -c -Wall -Werror -fpic src/open62541.c
    
    # installation of the library (.so) in $GMT_LOCAL/ext/lib/
    gcc -shared -o INSTALL_PREFIX/lib/libopen62541.so open62541.o
    
    # library header (.h) in $GMT_LOCAL/ext/include/
    cp src/open62541.c INSTALL_PREFIX/include/libopen62541.so

fi
