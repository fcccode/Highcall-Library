; Hc/NtUserWindowFromDC
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserWindowFromDC:DWORD

.DATA
.CODE

HcUserWindowFromDC PROC
	mov r10, rcx
	mov eax, sciUserWindowFromDC
	syscall
	ret
HcUserWindowFromDC ENDP

ELSE
; 32bit

EXTERNDEF C sciUserWindowFromDC:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserWindowFromDC PROC
	mov eax, sciUserWindowFromDC
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
HcUserWindowFromDC ENDP

ENDIF

END