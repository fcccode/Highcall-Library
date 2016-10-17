; Hc/NtTranslateFilePath
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciTranslateFilePath:DWORD

.DATA
.CODE

HcTranslateFilePath PROC
	mov r10, rcx
	mov eax, sciTranslateFilePath
	syscall
	ret
HcTranslateFilePath ENDP

ELSE
; 32bit

EXTERNDEF C sciTranslateFilePath:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcTranslateFilePath PROC
	mov eax, sciTranslateFilePath
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
HcTranslateFilePath ENDP

ENDIF

END