; symbols wip
SECTION "WRAM", WRAM0
paddingToEndAllPadding:: ds $120
; ok, i tore my fucking hair out over this
; to PROPERLY place the variables in vram
; you have to have every other variable up
; until that point. (space wise)
; thats what this padding is for.

actors:: db 

paddingToEndAllPadding2:: ds $6F6

; actual variables
; 55 entries
; 00:c120 chalvospriteRotationIndex ; ???? apart of a 0x20 struct
; 00:c122 chalvosprite_frame
; 00:c124 playerScreenX_origindistance ; is actually used to calculate the player's position
; 00:c125 playerScreenY_origindistance

; 00:c803 playerScreenX
; 00:c804 playerScreenY
; 00:c81b playerScreenX_origindistance_copy
; 0:c81c playerScreenY_origindistance_copy

; the state of the player at any given time.
playerState:: db
currentStage:: db

padding3:: ds 347

; unsigned value for how many diamonds you have.
; why does the game support extreme values
diamonds:: db
; the flags to determine which diamonds have been gotten in the single level
levelDiamondsBitFlag:: db

padding5:: db

; the flags to determine which lives have been gotten in the single level
levelLivesBitFlag:: db

; these need way more research
; bytes containing where chalvo will respawn on death
chalvoPosCheckpointX:: db
screenPosCheckpointX:: db
chalvoPosCheckpointY:: db
screenPosCheckpointY:: db

padding2:: ds 18

;increments across this copied version to confirm whether or not it is valid
;technically size 6 but it doesnt know that
passwordStore:: db

paddingWOrd:: ds 99

cursorIndex:: db
passwordLetter:: db
currentPassword:: db

padding6:: ds 7

; the amount of lives the player has at a given time
playerLives:: db

padding4:: ds 294

; whether or not the demo for that stage is playing
demoing:: db

; the time with no input in the title, so the demo can play
; little endian
titleDemoTimer:: dw