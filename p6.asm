.586
 INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA 
n dword ?
m dword ?
x BYTE "enter grad",0
y  BYTE "enter weights",0
z BYTE "weightedSum",0
v BYTE "somOFWeights",0
s BYTE 40 DUP(?)
re BYTE 11 DUP (?),0
rwe BYTE 11 DUP (?),0
.CODE 
MainProc PROC
 input x,s,40
 atod s
   mov n,eax
   input y,s,40
    atod s
	mov ebx,0
	add ebx,eax
   mul n
   mov m,eax
   input x,s,40
    atod s
   mov n,eax
   input y,s,40
    atod s
	add ebx,eax
	 mul n
	 add eax,m
	 mov m,eax
	 input x,s,40
    atod s
   mov n,eax
   input y,s,40
    atod s
	add ebx,eax
	 mul n
	 add eax,m
	 mov m,eax
	 input x,s,40
    atod s
   mov n,eax
   input y,s,40
    atod s
	add ebx,eax
	 mul n
	 add eax,m
	 mov m,eax
     dtoa re,ebx
	 dtoa rwe,eax
	 output z,rwe
     output v,re
    mov eax,0
ret
MainProc ENDP
END