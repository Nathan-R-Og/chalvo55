; symbols wip
SECTION "WRAM", WRAM0
paddingToEndAllPadding:: ds 2071
; ok, i tore my fucking hair out over this
; to PROPERLY place the variables in vram
; you have to have every other variable up
; until that point. (space wise)
; thats what this padding is for.

; the state of the player at any given time.
playerState:: db

padding3:: ds 348

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

padding2:: ds 128

; the amount of lives the player has at a given time
playerLives:: db

padding4:: ds 294

; whether or not the demo for that stage is playing
demoing:: db