;Colleen.s by gmaris
extern printf
global main
section .text
main:
push rbx
lea rdi, [rel buff] ;arg 0 format
lea rsi, [rel buff] ;arg 1 data
mov rdx, 10 ;arg 2 new line
mov rcx, 34 ;arg 3 double quote
xor rax, rax ;avoid printf crash
call printf WRT ..plt
pop rbx
ret
buff:
db ";Colleen.s by gmaris%2$cextern printf%2$cglobal main%2$csection .text%2$cmain:%2$cpush rbx%2$clea rdi, [rel buff] ;arg 0 format%2$clea rsi, [rel buff] ;arg 1 data%2$cmov rdx, 10 ;arg 2 new line%2$cmov rcx, 34 ;arg 3 double quote%2$cxor rax, rax ;avoid printf crash%2$ccall printf WRT ..plt%2$cpop rbx%2$cret%2$cbuff:%2$cdb %3$c%1$s%3$c, 0%2$c", 0
