; symbols wip
SECTION "WRAM", WRAM0
paddingToEndAllPadding:: ds 2556
; ok, i tore my fucking hair out over this
; to PROPERLY place the variables in vram
; you have to have every other variable up
; until that point. (space wise)
; thats what this padding is for.
playerLives:: db
