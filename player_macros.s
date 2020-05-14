	;------------------------------------------------------------------------------------
	;	
	;	Please note this was mostly to learn the process 
	; 	also note O'Dog of Laxity you and your group FUCKING SUCK
	;	
	;------------------------------------------------------------------------------------


;	macro to peek at the current command
PeekCommand .macro VAD
	lda \VAD.Address,x 
	sta VPEEK 
	lda \VAD.Address+1,x 
	sta VPEEK+1
	ldy #$00 
	lda (VPEEK),y
.endm
;	bump the command pointer
NextCommand .macro VAD
	inc \VAD.Address,x
	bne _nn
	inc \VAD.Address+1,x
_nn	
.endm
