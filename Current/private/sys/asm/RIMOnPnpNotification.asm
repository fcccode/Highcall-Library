; Hc/NtRIMOnPnpNotification
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciRIMOnPnpNotification:DWORD

.DATA
.CODE

HcRIMOnPnpNotification PROC
	mov r10, rcx
	mov eax, sciRIMOnPnpNotification
	syscall
	ret
HcRIMOnPnpNotification ENDP

ELSE
; 32bit

EXTERNDEF C sciRIMOnPnpNotification:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcRIMOnPnpNotification PROC
	mov eax, sciRIMOnPnpNotification
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
HcRIMOnPnpNotification ENDP

ENDIF

END