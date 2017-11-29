.586
 INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
x BYTE "enter num",0
y BYTE "result:",0
z BYTE "AVG:",0

n DWORD ?
m DWORD 4
s BYTE 40 DUP(?)
re BYTE 11 DUP (?),0
rwe BYTE 11 DUP (?),0
.CODE 
MainProc PROC
 input x,s,40
 atod s
 mov n,eax
 input x,s,40
 atod s
 add eax,n
  mov n,eax
   input x,s,40
 atod s
 add eax,n
  mov n,eax
   input x,s,40
 atod s
 add eax,n
 mov n,eax
dtoa rwe,eax
output y,rwe
 mov ebx,1
 mul ebx
 mov ebx ,4
 div ebx
dtoa re,eax
output z,re
 mov eax,0
ret
MainProc ENDP
END