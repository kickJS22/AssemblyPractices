global _start

section .data ; Section to write memory
	msg db "Hello I'm Juani, wtf is this", 0x0a ; 0x0a is the hex for 410, newline character
	len equ $ - msg ; We substract the location after msg from inital location

section .text ; We return to our main section where code will run
_start:
	mov eax, 4 ; System call to write, system_write
	mov ebx, 1 ; We use the file decriptor stdout (1) used to write information in screen, to give an output
	mov ecx, msg ; Indicates wich bytes we want to write
	mov edx, len ; Indicates the lenght, number of bytes we want to write
	int 0x80 ; We call the interruptor to make the system call once
	mov eax, 1 ; System call to exit the program
	mov ebx, 200 ; Status we want to show
	int 0x80 ; Interruptor to make the system call
