
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



org 100h
comienzo: 
mov si, x
mov al, msg2[si]
cmp msg[si], al ;comparar letra por letra las cadenas, si uno no coincide manda directamente a fin y termina el programa
jne fin:
cmp msg[si], "$" ;si es el final y el programa llega aca, quiere decir que son iguales
jz final:
inc x
loop comienzo
final:
mov dx, offset msg3 
mov ah, 9
int 21h
fin:
ret
msg db "hello world $" 
msg2 db "hello world $" 
msg3 db "Son iguales $"
x dw 0

ret




