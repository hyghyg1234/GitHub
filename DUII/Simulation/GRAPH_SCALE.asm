﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\GRAPH_SCALE.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	__Props
EXTRN	_GUI_Font6x8:BYTE
_DATA	SEGMENT
__Props	DD	0ffffffH
	DD	FLAT:_GUI_Font6x8
_DATA	ENDS
PUBLIC	__real@3f800000
PUBLIC	_GRAPH_SCALE_Create
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_GUI_ALLOC_LockH:PROC
EXTRN	_GUI_ALLOC_AllocZero:PROC
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT __real@3f800000
; File c:\duii\simulation\gui\widget\graph_scale.c
CONST	SEGMENT
__real@3f800000 DD 03f800000r			; 1
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GRAPH_SCALE_Create
_TEXT	SEGMENT
_pScaleObj$10685 = -20					; size = 4
_hScaleObj$ = -8					; size = 4
_Pos$ = 8						; size = 4
_TextAlign$ = 12					; size = 4
_Flags$ = 16						; size = 4
_TickDist$ = 20						; size = 4
_GRAPH_SCALE_Create PROC				; COMDAT
; Line 195
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 198
	push	48					; 00000030H
	call	_GUI_ALLOC_AllocZero
	add	esp, 4
	mov	DWORD PTR _hScaleObj$[ebp], eax
; Line 199
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN1@GRAPH_SCAL
; Line 201
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$10685[ebp], eax
; Line 202
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	mov	ecx, DWORD PTR _Pos$[ebp]
	mov	DWORD PTR [eax+20], ecx
; Line 203
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	mov	ecx, DWORD PTR _TextAlign$[ebp]
	mov	DWORD PTR [eax+24], ecx
; Line 204
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	mov	cx, WORD PTR _Flags$[ebp]
	mov	WORD PTR [eax+36], cx
; Line 205
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	mov	ecx, DWORD PTR _TickDist$[ebp]
	mov	DWORD PTR [eax+28], ecx
; Line 206
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	fld1
	fstp	DWORD PTR [eax+40]
; Line 207
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	mov	ecx, DWORD PTR __Props
	mov	DWORD PTR [eax+12], ecx
	mov	edx, DWORD PTR __Props+4
	mov	DWORD PTR [eax+16], edx
; Line 208
	mov	eax, DWORD PTR _pScaleObj$10685[ebp]
	mov	DWORD PTR [eax], OFFSET __OnPaint
; Line 209
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$10685[ebp], 0
$LN1@GRAPH_SCAL:
; Line 212
	mov	eax, DWORD PTR _hScaleObj$[ebp]
; Line 213
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_Create ENDP
_TEXT	ENDS
EXTRN	_GUI_SetTextMode:PROC
EXTRN	_GUI_SetColor:PROC
EXTRN	_GUI_SetFont:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __OnPaint
_TEXT	SEGMENT
_pScaleObj$ = -8					; size = 4
_hScaleObj$ = 8						; size = 4
_pRectInvalid$ = 12					; size = 4
__OnPaint PROC						; COMDAT
; Line 171
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 173
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 174
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	push	ecx
	call	_GUI_SetFont
	add	esp, 4
; Line 175
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	push	ecx
	call	_GUI_SetColor
	add	esp, 4
; Line 176
	push	2
	call	_GUI_SetTextMode
	add	esp, 4
; Line 177
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	movzx	ecx, WORD PTR [eax+36]
	and	ecx, 1
	je	SHORT $LN2@OnPaint
; Line 178
	mov	eax, DWORD PTR _pRectInvalid$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pScaleObj$[ebp]
	push	ecx
	call	__OnPaintVert
	add	esp, 8
; Line 179
	jmp	SHORT $LN1@OnPaint
$LN2@OnPaint:
; Line 180
	mov	eax, DWORD PTR _pRectInvalid$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pScaleObj$[ebp]
	push	ecx
	call	__OnPaintHorz
	add	esp, 8
$LN1@OnPaint:
; Line 182
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
; Line 183
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__OnPaint ENDP
_TEXT	ENDS
EXTRN	_GUI_DispFloatMin:PROC
EXTRN	_GUI_GotoXY:PROC
EXTRN	_GUI_SetTextAlign:PROC
EXTRN	_GUI_GetFontSizeY:PROC
EXTRN	_WM_GetInsideRectExScrollbar:PROC
EXTRN	_WM_GetOrgX:PROC
EXTRN	_GRAPH_LockH:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __OnPaintVert
_TEXT	SEGMENT
tv202 = -380						; size = 4
tv76 = -380						; size = 4
_Value$10627 = -180					; size = 4
_Rect$ = -168						; size = 8
_Skip$ = -152						; size = 4
_TextOffY$ = -140					; size = 4
_FontSizeY$ = -128					; size = 4
_yStart$ = -116						; size = 4
_i$ = -104						; size = 4
_y1$ = -92						; size = 4
_y0$ = -80						; size = 4
_xPosScreen$ = -68					; size = 4
_xPos$ = -56						; size = 4
_pObj$ = -44						; size = 4
_EffectSize$ = -32					; size = 4
_BorderB$ = -20						; size = 4
_BorderT$ = -8						; size = 4
_pScaleObj$ = 8						; size = 4
_pRectInvalid$ = 12					; size = 4
__OnPaintVert PROC					; COMDAT
; Line 69
	push	ebp
	mov	ebp, esp
	sub	esp, 380				; 0000017cH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-380]
	mov	ecx, 95					; 0000005fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 74
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	cmp	DWORD PTR [eax+28], 0
	jne	SHORT $LN14@OnPaintVer
; Line 75
	jmp	$LN15@OnPaintVer
$LN14@OnPaintVer:
; Line 77
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_GRAPH_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 78
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+48]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _EffectSize$[ebp], edx
; Line 79
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	add	ecx, DWORD PTR _EffectSize$[ebp]
	mov	DWORD PTR _xPos$[ebp], ecx
; Line 80
	call	_WM_GetOrgX
	add	eax, DWORD PTR _xPos$[ebp]
	mov	DWORD PTR _xPosScreen$[ebp], eax
; Line 81
	mov	DWORD PTR _Skip$[ebp], 0
; Line 82
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	mov	DWORD PTR tv76[ebp], ecx
	cmp	DWORD PTR tv76[ebp], 0
	je	SHORT $LN9@OnPaintVer
	cmp	DWORD PTR tv76[ebp], 1
	je	SHORT $LN11@OnPaintVer
	jmp	SHORT $LN12@OnPaintVer
$LN11@OnPaintVer:
; Line 84
	mov	eax, DWORD PTR _pRectInvalid$[ebp]
	movsx	ecx, WORD PTR [eax]
	cmp	ecx, DWORD PTR _xPosScreen$[ebp]
	jle	SHORT $LN10@OnPaintVer
; Line 85
	mov	DWORD PTR _Skip$[ebp], 1
$LN10@OnPaintVer:
; Line 87
	jmp	SHORT $LN12@OnPaintVer
$LN9@OnPaintVer:
; Line 89
	mov	eax, DWORD PTR _pRectInvalid$[ebp]
	movsx	ecx, WORD PTR [eax+4]
	cmp	ecx, DWORD PTR _xPosScreen$[ebp]
	jge	SHORT $LN8@OnPaintVer
; Line 90
	mov	DWORD PTR _Skip$[ebp], 1
$LN8@OnPaintVer:
$LN12@OnPaintVer:
; Line 94
	cmp	DWORD PTR _Skip$[ebp], 0
	jne	$LN2@OnPaintVer
; Line 95
	lea	eax, DWORD PTR _Rect$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pScaleObj$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_WM_GetInsideRectExScrollbar
	add	esp, 8
; Line 96
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+92]
	mov	DWORD PTR _BorderT$[ebp], ecx
; Line 97
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+100]
	mov	DWORD PTR _BorderB$[ebp], ecx
; Line 98
	call	_GUI_GetFontSizeY
	mov	DWORD PTR _FontSizeY$[ebp], eax
; Line 99
	mov	eax, DWORD PTR _FontSizeY$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	mov	DWORD PTR _TextOffY$[ebp], eax
; Line 100
	movsx	eax, WORD PTR _Rect$[ebp+2]
	add	eax, DWORD PTR _BorderT$[ebp]
	mov	DWORD PTR _y0$[ebp], eax
; Line 101
	movsx	eax, WORD PTR _Rect$[ebp+6]
	sub	eax, DWORD PTR _BorderB$[ebp]
	mov	DWORD PTR _y1$[ebp], eax
; Line 102
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _y1$[ebp]
	sub	ecx, DWORD PTR [eax+32]
	mov	edx, DWORD PTR _pObj$[ebp]
	add	ecx, DWORD PTR [edx+132]
	mov	DWORD PTR _yStart$[ebp], ecx
$LN6@OnPaintVer:
; Line 103
	mov	eax, DWORD PTR _yStart$[ebp]
	cmp	eax, DWORD PTR _y1$[ebp]
	jge	SHORT $LN5@OnPaintVer
; Line 104
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _yStart$[ebp]
	add	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR _yStart$[ebp], ecx
; Line 105
	jmp	SHORT $LN6@OnPaintVer
$LN5@OnPaintVer:
; Line 106
	mov	eax, DWORD PTR _yStart$[ebp]
	mov	DWORD PTR _i$[ebp], eax
	jmp	SHORT $LN4@OnPaintVer
$LN3@OnPaintVer:
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	sub	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR _i$[ebp], ecx
$LN4@OnPaintVer:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _y0$[ebp]
	jl	$LN2@OnPaintVer
; Line 107
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _y0$[ebp]
	jl	SHORT $LN1@OnPaintVer
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _y1$[ebp]
	jg	SHORT $LN1@OnPaintVer
; Line 109
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	push	ecx
	call	_GUI_SetTextAlign
	add	esp, 4
; Line 110
	mov	eax, DWORD PTR _y1$[ebp]
	sub	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _pScaleObj$[ebp]
	sub	eax, DWORD PTR [ecx+32]
	mov	edx, DWORD PTR _pObj$[ebp]
	add	eax, DWORD PTR [edx+132]
	mov	DWORD PTR tv202[ebp], eax
	fild	DWORD PTR tv202[ebp]
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	fmul	DWORD PTR [eax+40]
	fstp	DWORD PTR _Value$10627[ebp]
; Line 111
	mov	eax, DWORD PTR _i$[ebp]
	sub	eax, DWORD PTR _TextOffY$[ebp]
	push	eax
	mov	ecx, DWORD PTR _xPos$[ebp]
	push	ecx
	call	_GUI_GotoXY
	add	esp, 8
; Line 112
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	movzx	ecx, BYTE PTR [eax+44]
	push	ecx
	push	ecx
	fld	DWORD PTR _Value$10627[ebp]
	fstp	DWORD PTR [esp]
	call	_GUI_DispFloatMin
	add	esp, 8
$LN1@OnPaintVer:
; Line 114
	jmp	$LN3@OnPaintVer
$LN2@OnPaintVer:
; Line 116
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN15@OnPaintVer:
; Line 117
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN19@OnPaintVer
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 380				; 0000017cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN19@OnPaintVer:
	DD	1
	DD	$LN18@OnPaintVer
$LN18@OnPaintVer:
	DD	-168					; ffffff58H
	DD	8
	DD	$LN17@OnPaintVer
$LN17@OnPaintVer:
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	0
__OnPaintVert ENDP
_TEXT	ENDS
EXTRN	_WM_GetOrgY:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __OnPaintHorz
_TEXT	SEGMENT
tv198 = -380						; size = 4
tv130 = -380						; size = 4
_Value$10660 = -180					; size = 4
_Rect$ = -168						; size = 8
_Skip$ = -152						; size = 4
_xAdd$ = -140						; size = 4
_FontSizeY$ = -128					; size = 4
_xStart$ = -116						; size = 4
_i$ = -104						; size = 4
_x1$ = -92						; size = 4
_x0$ = -80						; size = 4
_yPosScreen$ = -68					; size = 4
_yPos$ = -56						; size = 4
_pObj$ = -44						; size = 4
_EffectSize$ = -32					; size = 4
_BorderR$ = -20						; size = 4
_BorderL$ = -8						; size = 4
_pScaleObj$ = 8						; size = 4
_pRectInvalid$ = 12					; size = 4
__OnPaintHorz PROC					; COMDAT
; Line 123
	push	ebp
	mov	ebp, esp
	sub	esp, 380				; 0000017cH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-380]
	mov	ecx, 95					; 0000005fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 128
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	cmp	DWORD PTR [eax+28], 0
	jne	SHORT $LN10@OnPaintHor
; Line 129
	jmp	$LN11@OnPaintHor
$LN10@OnPaintHor:
; Line 131
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_GRAPH_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 132
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+48]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _EffectSize$[ebp], edx
; Line 133
	call	_GUI_GetFontSizeY
	mov	DWORD PTR _FontSizeY$[ebp], eax
; Line 134
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	sub	ecx, DWORD PTR _EffectSize$[ebp]
	mov	DWORD PTR _yPos$[ebp], ecx
; Line 135
	call	_WM_GetOrgY
	add	eax, DWORD PTR _yPos$[ebp]
	mov	DWORD PTR _yPosScreen$[ebp], eax
; Line 136
	mov	DWORD PTR _Skip$[ebp], 0
; Line 137
	mov	eax, DWORD PTR _pRectInvalid$[ebp]
	movsx	ecx, WORD PTR [eax+6]
	cmp	DWORD PTR _yPosScreen$[ebp], ecx
	jle	SHORT $LN9@OnPaintHor
; Line 138
	mov	DWORD PTR _Skip$[ebp], 1
$LN9@OnPaintHor:
; Line 140
	mov	eax, DWORD PTR _yPosScreen$[ebp]
	add	eax, DWORD PTR _FontSizeY$[ebp]
	mov	ecx, DWORD PTR _pRectInvalid$[ebp]
	movsx	edx, WORD PTR [ecx+2]
	cmp	eax, edx
	jge	SHORT $LN8@OnPaintHor
; Line 141
	mov	DWORD PTR _Skip$[ebp], 1
$LN8@OnPaintHor:
; Line 143
	cmp	DWORD PTR _Skip$[ebp], 0
	jne	$LN2@OnPaintHor
; Line 144
	lea	eax, DWORD PTR _Rect$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pScaleObj$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	call	_WM_GetInsideRectExScrollbar
	add	esp, 8
; Line 145
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+88]
	mov	DWORD PTR _BorderL$[ebp], ecx
; Line 146
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+96]
	mov	DWORD PTR _BorderR$[ebp], ecx
; Line 147
	movsx	eax, WORD PTR _Rect$[ebp]
	add	eax, DWORD PTR _BorderL$[ebp]
	mov	DWORD PTR _x0$[ebp], eax
; Line 148
	movsx	eax, WORD PTR _Rect$[ebp+4]
	sub	eax, DWORD PTR _BorderR$[ebp]
	mov	DWORD PTR _x1$[ebp], eax
; Line 149
	mov	eax, DWORD PTR _pObj$[ebp]
	movzx	ecx, WORD PTR [eax+124]
	and	ecx, 1
	je	SHORT $LN13@OnPaintHor
	mov	DWORD PTR tv130[ebp], 0
	jmp	SHORT $LN14@OnPaintHor
$LN13@OnPaintHor:
	mov	edx, DWORD PTR _pObj$[ebp]
	mov	eax, DWORD PTR [edx+144]
	mov	DWORD PTR tv130[ebp], eax
$LN14@OnPaintHor:
	mov	ecx, DWORD PTR tv130[ebp]
	mov	DWORD PTR _xAdd$[ebp], ecx
; Line 150
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _x0$[ebp]
	add	ecx, DWORD PTR [eax+32]
	add	ecx, DWORD PTR _xAdd$[ebp]
	mov	DWORD PTR _xStart$[ebp], ecx
$LN6@OnPaintHor:
; Line 151
	mov	eax, DWORD PTR _xStart$[ebp]
	cmp	eax, DWORD PTR _x0$[ebp]
	jle	SHORT $LN5@OnPaintHor
; Line 152
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _xStart$[ebp]
	sub	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR _xStart$[ebp], ecx
; Line 153
	jmp	SHORT $LN6@OnPaintHor
$LN5@OnPaintHor:
; Line 154
	mov	eax, DWORD PTR _xStart$[ebp]
	mov	DWORD PTR _i$[ebp], eax
	jmp	SHORT $LN4@OnPaintHor
$LN3@OnPaintHor:
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR _i$[ebp], ecx
$LN4@OnPaintHor:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _x1$[ebp]
	jg	SHORT $LN2@OnPaintHor
; Line 155
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _x0$[ebp]
	jle	SHORT $LN1@OnPaintHor
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _x1$[ebp]
	jg	SHORT $LN1@OnPaintHor
; Line 157
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	push	ecx
	call	_GUI_SetTextAlign
	add	esp, 4
; Line 158
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _i$[ebp]
	sub	ecx, DWORD PTR [eax+32]
	sub	ecx, DWORD PTR _BorderL$[ebp]
	sub	ecx, DWORD PTR _EffectSize$[ebp]
	sub	ecx, DWORD PTR _xAdd$[ebp]
	mov	DWORD PTR tv198[ebp], ecx
	fild	DWORD PTR tv198[ebp]
	mov	edx, DWORD PTR _pScaleObj$[ebp]
	fmul	DWORD PTR [edx+40]
	fstp	DWORD PTR _Value$10660[ebp]
; Line 159
	mov	eax, DWORD PTR _yPos$[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$[ebp]
	push	ecx
	call	_GUI_GotoXY
	add	esp, 8
; Line 160
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	movzx	ecx, BYTE PTR [eax+44]
	push	ecx
	push	ecx
	fld	DWORD PTR _Value$10660[ebp]
	fstp	DWORD PTR [esp]
	call	_GUI_DispFloatMin
	add	esp, 8
$LN1@OnPaintHor:
; Line 162
	jmp	$LN3@OnPaintHor
$LN2@OnPaintHor:
; Line 164
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN11@OnPaintHor:
; Line 165
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN17@OnPaintHor
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 380				; 0000017cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	3
$LN17@OnPaintHor:
	DD	1
	DD	$LN16@OnPaintHor
$LN16@OnPaintHor:
	DD	-168					; ffffff58H
	DD	8
	DD	$LN15@OnPaintHor
$LN15@OnPaintHor:
	DB	82					; 00000052H
	DB	101					; 00000065H
	DB	99					; 00000063H
	DB	116					; 00000074H
	DB	0
__OnPaintHorz ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_Delete
EXTRN	_GUI_ALLOC_Free:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_Delete
_TEXT	SEGMENT
_hScaleObj$ = 8						; size = 4
_GRAPH_SCALE_Delete PROC				; COMDAT
; Line 219
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 220
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_Free
	add	esp, 4
; Line 221
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_Delete ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_SetOff
EXTRN	_WM_InvalidateWindow:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_SetOff
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_OldValue$ = -8						; size = 4
_hScaleObj$ = 8						; size = 4
_Off$ = 12						; size = 4
_GRAPH_SCALE_SetOff PROC				; COMDAT
; Line 227
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 228
	mov	DWORD PTR _OldValue$[ebp], 0
; Line 230
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@2
; Line 232
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 233
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+32]
	mov	DWORD PTR _OldValue$[ebp], ecx
; Line 234
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+32]
	cmp	ecx, DWORD PTR _Off$[ebp]
	je	SHORT $LN1@GRAPH_SCAL@2
; Line 235
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _Off$[ebp]
	mov	DWORD PTR [eax+32], ecx
; Line 236
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@2:
; Line 238
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@2:
; Line 241
	mov	eax, DWORD PTR _OldValue$[ebp]
; Line 242
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetOff ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_SetTickDist
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_SetTickDist
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_OldValue$ = -8						; size = 4
_hScaleObj$ = 8						; size = 4
_Value$ = 12						; size = 4
_GRAPH_SCALE_SetTickDist PROC				; COMDAT
; Line 248
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 249
	mov	DWORD PTR _OldValue$[ebp], 0
; Line 251
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@3
; Line 253
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 254
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR _OldValue$[ebp], ecx
; Line 255
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	cmp	ecx, DWORD PTR _Value$[ebp]
	je	SHORT $LN1@GRAPH_SCAL@3
; Line 256
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _Value$[ebp]
	mov	DWORD PTR [eax+28], ecx
; Line 257
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@3:
; Line 259
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@3:
; Line 262
	mov	eax, DWORD PTR _OldValue$[ebp]
; Line 263
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetTickDist ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_SetFont
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_SetFont
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_pOldFont$ = -8						; size = 4
_hScaleObj$ = 8						; size = 4
_pFont$ = 12						; size = 4
_GRAPH_SCALE_SetFont PROC				; COMDAT
; Line 269
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 270
	mov	DWORD PTR _pOldFont$[ebp], 0
; Line 272
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@4
; Line 274
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 275
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	DWORD PTR _pOldFont$[ebp], ecx
; Line 276
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	cmp	ecx, DWORD PTR _pFont$[ebp]
	je	SHORT $LN1@GRAPH_SCAL@4
; Line 277
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _pFont$[ebp]
	mov	DWORD PTR [eax+16], ecx
; Line 278
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@4:
; Line 280
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@4:
; Line 283
	mov	eax, DWORD PTR _pOldFont$[ebp]
; Line 284
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetFont ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_SetTextColor
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_SetTextColor
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_OldColor$ = -8						; size = 4
_hScaleObj$ = 8						; size = 4
_Color$ = 12						; size = 4
_GRAPH_SCALE_SetTextColor PROC				; COMDAT
; Line 290
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 291
	mov	DWORD PTR _OldColor$[ebp], 0
; Line 293
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@5
; Line 295
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 296
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _OldColor$[ebp], ecx
; Line 297
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	cmp	ecx, DWORD PTR _Color$[ebp]
	je	SHORT $LN1@GRAPH_SCAL@5
; Line 298
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _Color$[ebp]
	mov	DWORD PTR [eax+12], ecx
; Line 299
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@5:
; Line 301
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@5:
; Line 304
	mov	eax, DWORD PTR _OldColor$[ebp]
; Line 305
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetTextColor ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_SetPos
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_SetPos
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_OldPos$ = -8						; size = 4
_hScaleObj$ = 8						; size = 4
_Pos$ = 12						; size = 4
_GRAPH_SCALE_SetPos PROC				; COMDAT
; Line 311
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 312
	mov	DWORD PTR _OldPos$[ebp], 0
; Line 314
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@6
; Line 316
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 317
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR _OldPos$[ebp], ecx
; Line 318
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	cmp	ecx, DWORD PTR _Pos$[ebp]
	je	SHORT $LN1@GRAPH_SCAL@6
; Line 319
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _Pos$[ebp]
	mov	DWORD PTR [eax+20], ecx
; Line 320
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@6:
; Line 322
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@6:
; Line 325
	mov	eax, DWORD PTR _OldPos$[ebp]
; Line 326
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetPos ENDP
_TEXT	ENDS
PUBLIC	__real@00000000
PUBLIC	_GRAPH_SCALE_SetFactor
;	COMDAT __real@00000000
CONST	SEGMENT
__real@00000000 DD 000000000r			; 0
; Function compile flags: /Odtp /RTCsu /ZI
CONST	ENDS
;	COMDAT _GRAPH_SCALE_SetFactor
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_OldFactor$ = -8					; size = 4
_hScaleObj$ = 8						; size = 4
_Factor$ = 12						; size = 4
_GRAPH_SCALE_SetFactor PROC				; COMDAT
; Line 332
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 333
	fldz
	fstp	DWORD PTR _OldFactor$[ebp]
; Line 335
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@7
; Line 337
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 338
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	fld	DWORD PTR [eax+40]
	fstp	DWORD PTR _OldFactor$[ebp]
; Line 339
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	fld	DWORD PTR [eax+40]
	fld	DWORD PTR _Factor$[ebp]
	fucompp
	fnstsw	ax
	test	ah, 68					; 00000044H
	jnp	SHORT $LN1@GRAPH_SCAL@7
; Line 340
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	fld	DWORD PTR _Factor$[ebp]
	fstp	DWORD PTR [eax+40]
; Line 341
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@7:
; Line 343
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@7:
; Line 346
	fld	DWORD PTR _OldFactor$[ebp]
; Line 347
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetFactor ENDP
_TEXT	ENDS
PUBLIC	_GRAPH_SCALE_SetNumDecs
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GRAPH_SCALE_SetNumDecs
_TEXT	SEGMENT
_pScaleObj$ = -20					; size = 4
_OldValue$ = -8						; size = 4
_hScaleObj$ = 8						; size = 4
_NumDecs$ = 12						; size = 4
_GRAPH_SCALE_SetNumDecs PROC				; COMDAT
; Line 353
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 354
	mov	DWORD PTR _OldValue$[ebp], 0
; Line 356
	cmp	DWORD PTR _hScaleObj$[ebp], 0
	je	SHORT $LN2@GRAPH_SCAL@8
; Line 358
	mov	eax, DWORD PTR _hScaleObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pScaleObj$[ebp], eax
; Line 359
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+44]
	mov	DWORD PTR _OldValue$[ebp], ecx
; Line 360
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+44]
	cmp	ecx, DWORD PTR _NumDecs$[ebp]
	je	SHORT $LN1@GRAPH_SCAL@8
; Line 361
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR _NumDecs$[ebp]
	mov	DWORD PTR [eax+44], ecx
; Line 362
	mov	eax, DWORD PTR _pScaleObj$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@GRAPH_SCAL@8:
; Line 364
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pScaleObj$[ebp], 0
$LN2@GRAPH_SCAL@8:
; Line 367
	mov	eax, DWORD PTR _OldValue$[ebp]
; Line 368
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GRAPH_SCALE_SetNumDecs ENDP
_TEXT	ENDS
END