.586
 INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
x BYTE "enter num",0
n DWORD ?
m DWORD ? 
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
 mov ebx,2
 mul ebx
  
dtoa rwe,eax
output x,rwe
 mov eax,0
ret
MainProc ENDP
END