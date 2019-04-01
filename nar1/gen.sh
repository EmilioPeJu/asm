#!/bin/bash
# assemble 32 bits binary
nasm -f elf32 -o execsh.o  execsh.asm
ld -m elf_i386 -o execsh execsh.o
chmod +x execsh
# extract text section
r2 -q -c 's section..text; wtf shellcode `iS~text[2]`; quit;' execsh
