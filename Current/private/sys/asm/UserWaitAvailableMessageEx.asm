; Hc/NtUserWaitAvailableMessageEx
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserWaitAvailableMessageEx:DWORD

.DATA
.CODE

HcUserWaitAvailableMessageEx PROC
	mov r10, rcx
	mov eax, sciUserWaitAvailableMessageEx
	syscall
	ret
HcUserWaitAvailableMessageEx ENDP

ELSE
; 32bit

EXTERNDEF C sciUserWaitAvailableMessageEx:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserWaitAvailableMessageEx PROC
	mov eax, sciUserWaitAvailableMessageEx
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
HcUserWaitAvailableMessageEx ENDP

ENDIF

END