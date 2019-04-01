#!/bin/bash
# assemble execsh
nasm -f elf32 -o execsh.o execsh.asm
ld -m elf_i386 -o execsh execsh.o
chmod +x execsh
# extract shellcode
r2 -c 's section..text; wtf shellcode `iS~text[2]`;' execsh < /dev/null
# take a look to verify there are no null bytes
hexdump -C shellcode
