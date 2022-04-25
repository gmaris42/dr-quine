;Grace.s by gmaris
%define BUFF ";Grace.s by gmaris%2$c%%define BUFF %3$c%1$s%3$c, 0%2$c%%define GMARIS main%2$c%2$c%%macro FT 0%2$cGMARIS:%2$cpush rbx%2$clea rdi, [rel file]%2$cmov rsi, 0101o%2$cmov rdx, 0644o%2$ccall open WRT ..plt%2$cmov rdi, rax%2$clea rsi, [rel buff]%2$clea rdx, [rel buff]%2$cmov rcx, 10%2$cmov r8, 34%2$ccall dprintf WRT ..plt%2$cpop rbx%2$cret%2$c%%endmacro%2$cextern open%2$cextern dprintf%2$cglobal GMARIS%2$csection .text%2$cFT%2$csection .data%2$cfile:%2$cdb %3$cGrace_kid.s%3$c, 0%2$cbuff:%2$cdb BUFF%2$c", 0
%define GMARIS main

%macro FT 0
GMARIS:
push rbx
lea rdi, [rel file]
mov rsi, 0101o
mov rdx, 0644o
call open WRT ..plt
mov rdi, rax
lea rsi, [rel buff]
lea rdx, [rel buff]
mov rcx, 10
mov r8, 34
call dprintf WRT ..plt
pop rbx
ret
%endmacro
extern open
extern dprintf
global GMARIS
section .text
FT
section .data
file:
db "Grace_kid.s", 0
buff:
db BUFF
