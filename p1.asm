.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
 n1 DWord ?
 n2 DWORD ?
 n3 DWORD ?
 
  P1 BYTE "enter num",0
  string BYTE 40 DUP(?)
  sum BYTE 11 DUP(?),0
y BYTE "sum",0
.CODE
MainProc PROC
input p1,string ,40
atod string
mov n1,eax
input p1,string ,40
atod string
mov n2,eax
add eax,n1
mov n2,eax
input p1,string ,40
atod string
mov n3,eax
add eax,n3
sub n2,eax
mov eax,n2
add eax,1
neg eax
dtoa sum,eax

;mov eax,n1
output y,sum
  mov eax ,0
ret
 MainProc ENDP
END 