; Hc/NtGetCompleteWnfStateSubscription
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGetCompleteWnfStateSubscription:DWORD

.DATA
.CODE

HcGetCompleteWnfStateSubscription PROC
	mov r10, rcx
	mov eax, sciGetCompleteWnfStateSubscription
	syscall
	ret
HcGetCompleteWnfStateSubscription ENDP

ELSE
; 32bit

EXTERNDEF C sciGetCompleteWnfStateSubscription:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGetCompleteWnfStateSubscription PROC
	mov eax, sciGetCompleteWnfStateSubscription
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
HcGetCompleteWnfStateSubscription ENDP

ENDIF

END