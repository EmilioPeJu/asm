#!/bin/bash
r2  -d -r profile.rr2 /narnia/narnia2 <<EOF
dcu main
dcc sym.imp.strcpy
f buffer=[esp]
f ret = ebp+4
? buffer~hex[1] > buffer
? ret~hex[1]
? ret-buffer~hex[1] > buffertoret
EOF
BUFFER="$(cat buffer)"
BUFFERTORET="$(cat buffertoret)"
