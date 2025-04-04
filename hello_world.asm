; hello_world.asm
; nasm -f elf32 -o hello_world.o hello_world.asm
; ld -m elf_i386 -o hello_world hello_world.o
; ./hello_world

global _start

section .text:

_start:
    mov eax, 0x4
    mov ebx, 1
    mov ecx, message
    mov edx, message_length
    int 0x80

    mov eax, 0x1
    mov ebx, 0
    int 0x80

section .data:
    message: db "Hello World!", 0xA
    message_length equ $-message