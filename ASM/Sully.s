;Sully.s by gmaris;Grace.s by gmaris
extern open
extern printf
extern dprintf
extern sprintf
extern access
extern close
extern system
global main
section .text
main:
push rbx
mov r12, qword[rel nb_child]; child_number
try_access:
xor rax, rax
lea rdi, [rel first_kid]
mov rsi, 4
call access WRT ..plt
cmp rax, 0
jne child_naming
dec r12
child_naming:
;r12 got child number
xor rax, rax
lea rdi, [rel file_name]
lea rsi, [rel file_name_proto]
mov rdx, r12
call sprintf WRT ..plt
cmp rax, -1
je end
obj_naming:
;r12 got child number
xor rax, rax
lea rdi, [rel obj_name]
lea rsi, [rel obj_name_proto]
mov rdx, r12
call sprintf WRT ..plt
cmp rax, -1
je end
exec_naming:
;r12 got child number
xor rax, rax
lea rdi, [rel exec_name]
lea rsi, [rel exec_name_proto]
mov rdx, r12
call sprintf WRT ..plt
cmp rax, -1
je end
open_part:
xor rax, rax
lea rdi, [rel file_name]
mov rsi, 0101o
mov rdx, 0644o
call open WRT ..plt
cmp rax, -1
je end
mov r13, rax; fd
write_part:
xor rax, rax
mov rdi, r13
lea rsi, [rel buff]
lea rdx, [rel buff]
mov rcx, 10
mov r8, 34
mov r9, r12
call dprintf WRT ..plt
cmp rax, -1
je end
close_part:
xor rax, rax
mov rdi, r13
call close WRT ..plt
cmp r12, 0
je end
cmd_naming:
xor rax, rax
lea rdi, [rel cmd_line]
lea rsi, [rel cmd_line_proto]
lea rdx, [rel file_name]
lea rcx, [rel obj_name]
lea r8,  [rel exec_name]
call sprintf WRT ..plt
compile_part:
xor rax, rax
lea rdi, [rel cmd_line]
call system WRT ..plt
end:
pop rbx
ret
section .data
exec_name_proto:
db "Sully_%d", 0
file_name_proto:
db "Sully_%d.s", 0
obj_name_proto:
db "obj/Sully_%d.o", 0
cmd_line_proto:
db "mkdir -p obj;nasm -f elf64 %1$s -o %2$s;gcc -Wall -Werror -Wextra %2$s -o %3$s;./%3$s", 0
exec_name:
times 13 db 0
file_name:
times 15 db 0
obj_name:
times 15 db 0
cmd_line:
times 400 db 0
nb_child:
dq 5
first_kid:
db "Sully_5.s", 0
buff:
db ";Sully.s by gmaris;Grace.s by gmaris%2$cextern open%2$cextern printf%2$cextern dprintf%2$cextern sprintf%2$cextern access%2$cextern close%2$cextern system%2$cglobal main%2$csection .text%2$cmain:%2$cpush rbx%2$cmov r12, qword[rel nb_child]; child_number%2$ctry_access:%2$cxor rax, rax%2$clea rdi, [rel first_kid]%2$cmov rsi, 4%2$ccall access WRT ..plt%2$ccmp rax, 0%2$cjne child_naming%2$cdec r12%2$cchild_naming:%2$c;r12 got child number%2$cxor rax, rax%2$clea rdi, [rel file_name]%2$clea rsi, [rel file_name_proto]%2$cmov rdx, r12%2$ccall sprintf WRT ..plt%2$ccmp rax, -1%2$cje end%2$cobj_naming:%2$c;r12 got child number%2$cxor rax, rax%2$clea rdi, [rel obj_name]%2$clea rsi, [rel obj_name_proto]%2$cmov rdx, r12%2$ccall sprintf WRT ..plt%2$ccmp rax, -1%2$cje end%2$cexec_naming:%2$c;r12 got child number%2$cxor rax, rax%2$clea rdi, [rel exec_name]%2$clea rsi, [rel exec_name_proto]%2$cmov rdx, r12%2$ccall sprintf WRT ..plt%2$ccmp rax, -1%2$cje end%2$copen_part:%2$cxor rax, rax%2$clea rdi, [rel file_name]%2$cmov rsi, 0101o%2$cmov rdx, 0644o%2$ccall open WRT ..plt%2$ccmp rax, -1%2$cje end%2$cmov r13, rax; fd%2$cwrite_part:%2$cxor rax, rax%2$cmov rdi, r13%2$clea rsi, [rel buff]%2$clea rdx, [rel buff]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, r12%2$ccall dprintf WRT ..plt%2$ccmp rax, -1%2$cje end%2$cclose_part:%2$cxor rax, rax%2$cmov rdi, r13%2$ccall close WRT ..plt%2$ccmp r12, 0%2$cje end%2$ccmd_naming:%2$cxor rax, rax%2$clea rdi, [rel cmd_line]%2$clea rsi, [rel cmd_line_proto]%2$clea rdx, [rel file_name]%2$clea rcx, [rel obj_name]%2$clea r8,  [rel exec_name]%2$ccall sprintf WRT ..plt%2$ccompile_part:%2$cxor rax, rax%2$clea rdi, [rel cmd_line]%2$ccall system WRT ..plt%2$cend:%2$cpop rbx%2$cret%2$csection .data%2$cexec_name_proto:%2$cdb %3$cSully_%%d%3$c, 0%2$cfile_name_proto:%2$cdb %3$cSully_%%d.s%3$c, 0%2$cobj_name_proto:%2$cdb %3$cobj/Sully_%%d.o%3$c, 0%2$ccmd_line_proto:%2$cdb %3$cmkdir -p obj;nasm -f elf64 %%1$s -o %%2$s;gcc -Wall -Werror -Wextra %%2$s -o %%3$s;./%%3$s%3$c, 0%2$cexec_name:%2$ctimes 13 db 0%2$cfile_name:%2$ctimes 15 db 0%2$cobj_name:%2$ctimes 15 db 0%2$ccmd_line:%2$ctimes 400 db 0%2$cnb_child:%2$cdq %4$d%2$cfirst_kid:%2$cdb %3$cSully_5.s%3$c, 0%2$cbuff:%2$cdb %3$c%1$s%3$c, 0%2$c", 0
