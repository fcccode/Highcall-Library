; Hc/NtAssignProcessToJobObject
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciAssignProcessToJobObject:DWORD

.DATA
.CODE

HcAssignProcessToJobObject PROC
	mov r10, rcx
	mov eax, sciAssignProcessToJobObject
	syscall
	ret
HcAssignProcessToJobObject ENDP

ELSE
; 32bit

EXTERNDEF C sciAssignProcessToJobObject:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcAssignProcessToJobObject PROC
	mov eax, sciAssignProcessToJobObject
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcAssignProcessToJobObject ENDP

ENDIF

END