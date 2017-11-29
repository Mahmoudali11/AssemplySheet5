.586
 INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA 
n dword ?
sum DWORD ?
 
x BYTE "enter pennies",0
y  BYTE "enter nickles",0
z BYTE "enter dimes",0
v BYTE "enter quarters",0
b BYTE "Enter fifty pieces",0
m BYTE "enter dollars ",0
k Byte "Number of Dollars is:",0
kk Byte "Number of coins is:",0
l Byte "and num of reminder cents ",0
s BYTE 40 DUP(?)
re BYTE 11 DUP (?),0
rwe BYTE 11 DUP (?),0
.CODE 
MainProc PROC
 input x,s,40
 atod s
 mov sum ,eax
   mov n,eax
   mov ebx,0
   add ebx,n
   input y,s,40 
   atod s
   add sum,eax
  mov ebx,5
  mul ebx
 
	add n,eax
    input z,s,40
    atod s 
	  add sum,eax
     mov ebx,10
     mul ebx
     add n,eax
   input v,s,40
    atod s
	  add sum,eax
	 mov ebx,25
   mul ebx
   add n,eax
	 input b,s,40
	  
    atod s 
	add sum,eax
   mov ebx,50
   mul ebx
   add n,eax
   input m,s,40
    atod s
	  add sum,eax
	 mov ebx,100
   mul ebx
   add n,eax
   mov eax,n
   mov ebx,100
   mov edx,0
   div ebx
   mov ecx,sum
   dtoa re,ecx
  dtoa rwe,eax
   output kk,re
  output k,rwe
     
	  dtoa re,edx
	  output l,re
    mov eax,0
ret
MainProc ENDP
END