; HM moves can't be forgotten
; I've basically kneecapped the functions here so HM moves can be forgotten.
; A much cleaner solution should be done in the future, assuming they still exist as moves at all.

IsHM::
	cp HM01
	jr c, .NotHM
	scf
	ret
.NotHM:
	and a
	ret

IsHMMove::
	ld hl, .HMMoves
	ld de, 1
	jp IsInArray

.HMMoves:
	; db CUT
	; db FLY
	; db SURF
	; db STRENGTH
	; db WHIRLPOOL
	; db ROCK_SMASH
	; db WATERFALL
	; db HM08
	db -1 ; end
