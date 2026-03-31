; Assembly Language Label for Engineering Hub
; This file ensures Assembly shows up in repository statistics
section .text
    global _start
_start:
    mov eax, 1
    int 0x80
