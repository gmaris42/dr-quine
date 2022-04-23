;Grace.s
%define _STR ";Grace.s%2$c%define _STR %3$c%1$s%3$c%2$c%define _G_MAIN global main%2$c%define _MAIN main:%2$cextern fprintf%2$cextern fopen%2$c_G_MAIN%2$c_MAIN%2$cmov rax, 2%2$clea rdi, [rel file]%2$cmov rsi, %3$cw%3$c%2$ccall fopen%2$clea rdi, [rel buff]%2$clea rsi, [rel buff]%2$cmov rdx, 10%2$cmov rdx, 34%2$ccall fprintf WRT ..plt%2$cret%2$cfile:%2$cdb %3$cGrace_kid.s%3$c, 0%2$cbuff:%2$cdb _STR, 0%2$c"
%define _G_MAIN global main
%define _MAIN main:
extern dprintf
extern open
extern close
_G_MAIN
section .text
_MAIN
push rbx

xor rax, rax
lea rdi, [rel file]
mov rsi, 0x601
mov rdx, 0x1a4
call open WRT ..plt

pop rbx
ret

section .data
file:
db "BORDEL_DE_MERDE.s", 0
buff:
db _STR, 0