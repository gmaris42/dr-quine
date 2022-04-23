;Grace.s by gmaris
%define _STR ""
%define GMARIS main

%macro FT 0
	GMARIS:
	push rbx
	lea rdi, [rel file]
	mov rsi, 0101o
	mov rdx, 0644o
	call open WRT ..plt


pop rbx
ret
%endmacro

extern open
extern printf
global GMARIS
section .text
FT

section .data
file:
db "BORDEL_DE_MERDE.s", 0
buff:
db "TEST", 0