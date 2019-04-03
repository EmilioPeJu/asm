#!/bin/bash
r2  -d -r profile.rr2 /narnia/narnia4 <<EOF
dcu main
dcu 0x0804851f
f buffer=[esp]
f ret = ebp+4
? buffer~hex[1] > buffer
? ret~hex[1]
? ret-buffer~hex[1] > buffertoret
EOF
BUFFER="$(cat buffer)"
BUFFERTORET="$(cat buffertoret)"
