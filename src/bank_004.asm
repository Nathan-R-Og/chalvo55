SECTION "Screens", ROMX[$4000], BANK[$4]

StartCredits:
    ;?
    ld a, $14
    call Call_000_0903

    ;load the tiles
    ld hl, CreditsTilePointers
    ;c is the amount of tiles to show (8)
    ld c, (ShowStageScreen-CreditsTilePointers)/2

Jump_004_400a:
    push bc
    ;load first tiles into de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ;stash both, return tiles
    push hl
    push de
    pop hl

    ;?
    ld de, $9800
    call Call_000_0756

    ;?
    ld a, $01
    ld d, $01
    call Call_000_2df8

    ;?
    ld a, $93
    ldh [rLCDC], a

jr_004_4023:
    ;?
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if c == 0 (z == true), loop
    ld a, c
    or a
    jr z, jr_004_4023
    ;else

;init timer
    ld c, $02
resetB:
    ld b, $83
jr_004_4033:
    push bc

    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    
    ;dec b
    ;if b > 0, loop
    pop bc
    dec b
    jr nz, jr_004_4033
    ;else

    ;dec c
    ;if c > 0, loop (greater)
    dec c
    jr nz, resetB
    ;else

    ;?
    ld a, $00
    ld d, $01
    call Call_000_2df8

;end show tile
jr_004_404a:
    ;wait for fade out
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if c == 0 (z == true), loop
    ld a, c
    or a
    jr z, jr_004_404a
    ;else

    ;?
    ld a, $01
    ld hl, $6c89
    call Call_000_08ae

    ;return init values
    pop hl
    pop bc
    
    ;c--
    dec c
    ;if c > 0, loop back to main (now showing one more because of dec)
    jp nz, Jump_004_400a
    ;else

    ;(ran when finished and faded out)
    ld a, $10
    call Call_000_0a84
    ld a, $93
    ldh [rLCDC], a
    ret

CreditsTiles1::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $04, $17, $04, $02, $13, $08, $15, $04, $ff, $0f, $11, $0e, $03, $14, $02, $04, $11, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $2a, $20, $36, $20, $2c, $34, $31, $20, $ff, $2a, $20, $33, $32, $34, $2c, $28, $ff, $ff
    db $ff, $ff, $4a, $40, $56, $40, $4c, $54, $51, $40, $ff, $4a, $40, $53, $52, $54, $4c, $48, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles2::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $0f, $11, $0e, $03, $14, $02, $04, $11, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $33, $20, $24, $2a, $2e, $ff, $2d, $20, $26, $20, $33, $20, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $53, $40, $44, $4a, $4e, $ff, $4d, $40, $46, $40, $53, $40, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles3::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $03, $08, $11, $04, $02, $13, $0e, $11, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $2c, $28, $33, $32, $34, $38, $20, $32, $34, $ff, $2d, $2e, $2c, $2e, $33, $2e, $ff, $ff
    db $ff, $ff, $4c, $48, $53, $52, $54, $58, $40, $52, $54, $ff, $4d, $4e, $4c, $4e, $53, $4e, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles4::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $0f, $11, $0e, $06, $11, $00, $0c, $04, $11, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $2c, $20, $32, $20, $27, $28, $2a, $2e, $ff, $25, $34, $29, $28, $2e, $2a, $20, $ff, $ff
    db $ff, $ff, $4c, $40, $52, $40, $47, $48, $4a, $4e, $ff, $45, $54, $49, $48, $4e, $4a, $40, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $2a, $34, $2d, $28, $27, $20, $31, $34, $ff, $33, $20, $2a, $24, $34, $22, $27, $28, $ff
    db $ff, $ff, $4a, $54, $4d, $48, $47, $40, $51, $54, $ff, $53, $40, $4a, $44, $54, $42, $47, $48, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $33, $20, $2a, $20, $32, $27, $28, $ff, $32, $34, $26, $28, $2e, $2a, $20, $ff, $ff
    db $ff, $ff, $ff, $53, $40, $4a, $40, $52, $47, $48, $ff, $52, $54, $46, $48, $4e, $4a, $40, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles5::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $12, $0e, $14, $0d, $03, $ff, $02, $0e, $0c, $0f, $0e, $12, $04, $11, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $33, $20, $2a, $20, $20, $2a, $28, $ff, $2e, $2a, $20, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $53, $40, $4a, $40, $40, $4a, $48, $ff, $4e, $4a, $40, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles6::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $12, $14, $0f, $04, $11, $ff, $15, $08, $12, $04, $11, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $2c, $20, $2a, $2e, $33, $2e, $ff, $33, $20, $2d, $20, $2a, $20, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $4c, $40, $4a, $4e, $53, $4e, $ff, $53, $40, $4d, $40, $4a, $40, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles7::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $13, $04, $12, $13, $ff, $0f, $0b, $00, $18, $04, $11, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $2c, $2e, $33, $2e, $28, $ff, $28, $22, $27, $28, $27, $20, $32, $27, $28, $ff, $ff
    db $ff, $ff, $ff, $4c, $4e, $53, $4e, $48, $ff, $48, $42, $47, $48, $47, $40, $52, $47, $48, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $27, $28, $31, $2e, $33, $2e, $2c, $2e, $ff, $2d, $20, $2a, $20, $29, $28, $2c, $20, $ff
    db $ff, $ff, $47, $48, $51, $4e, $53, $4e, $4c, $4e, $ff, $4d, $40, $4a, $40, $49, $48, $4c, $40, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $38, $20, $32, $34, $2d, $2e, $21, $34, $ff, $2c, $20, $33, $32, $34, $2c, $34, $31, $20, $ff
    db $ff, $58, $40, $52, $54, $4d, $4e, $41, $54, $ff, $4c, $40, $53, $52, $54, $4c, $54, $51, $40, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTiles8::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1a, $1b, $1c, $1d, $1e, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $09, $00, $0f, $00, $0d, $ff, $12, $18, $12, $13, $04, $0c, $ff, $12, $14, $0f, $0f, $0b, $18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

CreditsTilePointers::
    dw CreditsTiles1
    dw CreditsTiles2
    dw CreditsTiles3
    dw CreditsTiles4
    dw CreditsTiles5
    dw CreditsTiles6
    dw CreditsTiles7
    dw CreditsTiles8

ShowStageScreen:
    ;check if currentStage != 8
    ld a, [currentStage]
    cp 8
    jr nz, jr_004_4bda
    ;else

    ld a, $93
    ldh [rLCDC], a
    ret


jr_004_4bda:
    ;get offset?
    ld b, $00
    rlca
    ld c, a

    ;get pointer
    ld hl, StageScreenTilePointers
    add hl, bc
    
    ;load pointer into hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a

    ;?
    ld de, $9800
    call Call_000_0756

    ;?
    ld a, $01
    ld d, $01
    call Call_000_2df8

    ;?
    ld a, $93
    ldh [rLCDC], a

jr_004_4bf6:
    ;?
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;fade in
    ;if c == 0 (z == true), loop
    ld a, c
    or a
    jr z, jr_004_4bf6
    ;else

    ld c, $3c

jr_004_4c04:
    push bc

    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae

    pop bc
    ;if $ff9c == 9, loop
    ldh a, [$9c]
    and $09
    jr nz, jr_004_4c17
    ;else

    ;c--
    dec c
    ;if c > 0, loop
    jr nz, jr_004_4c04
    ;else

jr_004_4c17:
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_4c1e:
    ;fade out
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    
    ;if c == 0, loop
    ld a, c
    or a
    jr z, jr_004_4c1e
    ;else
    

    ret

StageIntro1Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $09, $0a, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $cb, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $1b, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro2Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $0b, $0c, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $cc, $cd, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $1c, $1d, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro3Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $0d, $0e, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $ce, $cf, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $1e, $ef, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro4Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $d0, $d1, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $f0, $f1, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $d2, $d3, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro5Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $f2, $f3, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $d4, $d5, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $f4, $f5, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro6Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $b6, $b7, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $d6, $d7, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $f6, $f7, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro7Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $b8, $b9, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $d8, $d9, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $f8, $f9, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageIntro8Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $60, $61, $62, $63, $ff, $ba, $bb, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $20, $21, $22, $23, $24, $25, $80, $81, $82, $83, $ff, $da, $db, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $40, $41, $42, $43, $44, $45, $a0, $a1, $a2, $a3, $ff, $fa, $fb, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

GameOverTiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $60, $61, $04, $05, $64, $65, $62, $63, $66, $67, $c0, $c1, $62, $63, $c2, $c3, $ff, $ff
    db $ff, $ff, $80, $81, $24, $25, $84, $85, $82, $83, $86, $87, $e0, $e1, $82, $83, $e2, $e3, $ff, $ff
    db $ff, $ff, $a0, $a1, $44, $45, $a4, $a5, $a2, $a3, $a6, $a7, $a8, $a9, $a2, $a3, $aa, $ab, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro1Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $6f, $6e, $6f, $6e, $6f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $8f, $8e, $8f, $8e, $8f, $ff, $ff, $ff, $ff, $09, $0a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $cb, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro2Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $71, $70, $71, $70, $71, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $91, $90, $91, $90, $91, $ff, $ff, $ff, $ff, $0b, $0c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $cc, $cd, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1c, $1d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro3Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $73, $72, $73, $72, $73, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $93, $92, $93, $92, $93, $ff, $ff, $ff, $ff, $0d, $0e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ce, $cf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1e, $ef, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro4Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $75, $74, $75, $74, $75, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $95, $94, $95, $94, $95, $ff, $ff, $ff, $ff, $d0, $d1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f0, $f1, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $d2, $d3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro5Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $77, $76, $77, $76, $77, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $97, $96, $97, $96, $97, $ff, $ff, $ff, $ff, $f2, $f3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $d4, $d5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $f5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro6Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $79, $78, $79, $78, $79, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $99, $98, $99, $98, $99, $ff, $ff, $ff, $ff, $b6, $b7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $d6, $d7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f6, $f7, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro7Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $7b, $7a, $7b, $7a, $7b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $9b, $9a, $9b, $9a, $9b, $ff, $ff, $ff, $ff, $b8, $b9, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $d8, $d9, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $f9, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StageOutro8Tiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $b0, $b1, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $7d, $7c, $7d, $7c, $7d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $9d, $9c, $9d, $9c, $9d, $ff, $ff, $ff, $ff, $ba, $bb, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $da, $db, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fa, $fb, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c6, $ff, $62, $63, $04, $05, $c2, $c3, $c7, $c8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $ff, $82, $83, $24, $25, $e2, $e3, $e7, $e8, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ae, $af, $a2, $a3, $44, $45, $aa, $ab, $c9, $ca, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

;the c
StageOutroCTiles::
    db 2, 3
    db $c4, $c5
    db $e4, $e5
    db $ac, $ad

StageScreenTilePointers::
    dw StageIntro1Tiles
    dw StageIntro2Tiles
    dw StageIntro3Tiles
    dw StageIntro4Tiles
    dw StageIntro5Tiles
    dw StageIntro6Tiles
    dw StageIntro7Tiles
    dw StageIntro8Tiles
    dw GameOverTiles
    dw StageOutro1Tiles
    dw StageOutro2Tiles
    dw StageOutro3Tiles
    dw StageOutro4Tiles
    dw StageOutro5Tiles
    dw StageOutro6Tiles
    dw StageOutro7Tiles
    dw StageOutro8Tiles
    dw StageOutroCTiles

def continueTick EQU 60
def continueTickCount EQU 10
ShowContinue:
    ;load screen bg
    ld hl, ContinueBGTiles
    ld de, $9800
    call Call_000_0756

    ;?
    ld a, $01
    ld d, $01
    call Call_000_2df8

    ;?
    ld a, $93
    ldh [rLCDC], a

jr_004_6475:
    ;fade in
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if c == 0, loop
    ld a, c
    or a
    jr z, jr_004_6475
    ;else

    ;?
    ld a, $19
    call Call_000_0903

    ;?
    ld c, $00
    call Call_004_650f

    ;number tick timer
    ld b, continueTick

jr_004_648d:
    push bc

    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae

    pop bc

    ;if not bit 0 of 9c, loop
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_64b6
    ;else

    ;set bit 1
    bit 1, a
    ;if not set to 0 after, jump
    jr nz, jr_004_64a4
    ;else

    ;dec timer
    dec b
    ;if b > 0, loop
    jr nz, jr_004_648d
    ;else

jr_004_64a4:
    ;c++
    inc c
    
    ;if c == 10 (timer runs out), jump
    ld a, continueTickCount
    cp c
    jr z, jr_004_64bb
    ;else

    ;?
    ld a, $19
    call Call_000_0903
    call Call_004_650f

    ;back to loop with new timer
    ld b, continueTick
    jr jr_004_648d

jr_004_64b6:
    call Call_004_64f6
    xor a
    ret

;timer runs out
jr_004_64bb:
    ;fade out
    call Call_004_64f6

    or $01
    ret

ShowGameOver:
    ;queue gameover tiles
    ld hl, GameOverTiles
    ld de, $9800
    call Call_000_0756

    ;?
    ld a, $16
    call Call_000_0903

    ;?
    ld a, $01
    ld d, $01
    call Call_000_2df8

    ;?
    ld a, $93
    ldh [rLCDC], a

jr_004_64da:
    ;fade in
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if a == 0, loop
    ld a, c
    or a
    jr z, jr_004_64da
    ;else

jr_004_64e6:
    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae

    ;if !(a & $ff9c), jump
    ldh a, [$9c]
    and $09
    jr nz, jr_004_64f6
    ;else

    ;loop
    jr jr_004_64e6

;finish/press a
Call_004_64f6:
jr_004_64f6:
    ;?
    ld a, $10
    call Call_000_0a84

    ;?
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_6502:
    ;fade out
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if !a, loop
    ld a, c
    or a
    jr z, jr_004_6502
    ;else

    ret

;GetContinueTilePointer
;c will be how many ticks have progressed
Call_004_650f:
    ;clean
    push af
    push bc
    push de
    push hl

    ;get pointer list
    ld hl, unkbank4TilePointers2

    ;c ++ and rotate left (left shift)
    ;basically a * 2??? since they are stored as shorts
    ld a, c
    inc a
    rlca
    ld c, a

    ;add bc to pointer list
    ld b, $00
    add hl, bc

    ;load tile pointer into hl
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl

    ;?
    ld de, $0909
    call Call_000_078e

    ;unclean
    pop hl
    pop de
    pop bc
    pop af
    ret


ContinueBGTiles::
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $06, $07, $66, $67, $08, $09, $02, $03, $2a, $2b, $2c, $2d, $2e, $2f, $62, $63, $ff, $ff
    db $ff, $ff, $26, $27, $86, $87, $28, $29, $22, $23, $4a, $4b, $4c, $4d, $4e, $4f, $82, $83, $ff, $ff
    db $ff, $ff, $46, $47, $a6, $a7, $48, $49, $42, $43, $6a, $6b, $6c, $6d, $6e, $6f, $a2, $a3, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $88, $89, $8a, $8b, $8c, $8d, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

Continue9Tiles::
    db 2, 3
    db $bc, $bd
    db $dc, $dd
    db $fc, $fd

Continue8Tiles::
    db 2, 3
    db $ba, $bb
    db $da, $db
    db $fa, $fb

Continue7Tiles::
    db 2, 3
    db $b8, $b9
    db $d8, $d9
    db $f8, $f9

Continue6Tiles::
    db 2, 3, 
    db $b6, $b7
    db $d6, $d7
    db $f6, $f7

Continue5Tiles::
    db 2, 3
    db $f2, $f3
    db $d4, $d5
    db $f4, $f5

Continue4Tiles::
    db 2, 3
    db $d0, $d1
    db $f0, $f1
    db $d2, $d3

Continue3Tiles::
    db 2, 3
    db $0d, $0e
    db $ce, $cf
    db $1e, $ef

Continue2Tiles::
    db 2, 3
    db $0b, $0c
    db $cc, $cd
    db $ae, $af

Continue1Tiles::
    db 2, 3
    db $ff, $0a
    db $ff, $cb
    db $ff, $1b

Continue0Tiles::
    db 2, 3
    db $66, $67
    db $86, $87
    db $a6, $a7

ContinueUnkTiles::
    db 16, 3
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

unkbank4TilePointers2::
    dw ContinueBGTiles
    dw Continue9Tiles
    dw Continue8Tiles
    dw Continue7Tiles
    dw Continue6Tiles
    dw Continue5Tiles
    dw Continue4Tiles
    dw Continue3Tiles
    dw Continue2Tiles
    dw Continue1Tiles
    dw Continue0Tiles
    dw ContinueUnkTiles

ShowWorldMap:
    ;load bg
    ld hl, WorldMapBGTiles
    ld de, $9c00
    call Call_000_0776

    ;if currentStage == 0. jump
    ld a, [currentStage]
    cp 0
    jr z, jr_004_676b
    ;else

    ld c, a

;render areas?
jr_004_6743:
    ;store
    push bc

    ;load c into a and left shift twice
    ;*4?
    ld a, c
    rlca
    rlca

    ;calc pointer
    ld h, $00
    ld l, a
    ld de, WorldMapTilePointers-2
    add hl, de

    ;load tiles pointer into hl
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl

    push hl

    ;a as c, a--, left shift a
    ld a, c
    dec a
    rlca
    ld c, a

    ;get thing pointer
    ld b, $00
    ld hl, WorldMap_placePoints
    add hl, bc

    ;load short at pointer into de
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a

    ;get back tiles pointer
    pop hl
    call Call_000_0822

    ;get back bc
    pop bc
    ;c--
    dec c
    ;if c > 0, loop
    jr nz, jr_004_6743
    ;

jr_004_676b:
    ;left shift a as currentStage twice
    ld a, [currentStage]
    rlca
    rlca

    ;get pointer to hl based off stage
    ld h, $00
    ld l, a
    ld de, WorldMapTilePointers+4
    add hl, de

    ;set $c9ae & e to pointer
    ld a, [hl+]
    ld e, a
    ld [$c9ae], a

    ;set $c9af & d to pointer+1
    ld a, [hl]
    ld d, a
    ld [$c9af], a

    ;set c to width
    ld a, [de]
    ld c, a

    ;de++ and set $c9b2 to a
    inc de
    ld [$c9b2], a

    ;set a to height and set $c9b2 to a
    ld a, [de]
    ld [$c9b3], a

    ;load width into hl
    ld l, c
    ld h, $00
    ;does math for size
    call Call_000_04a5

    ;load result into c
    ld c, l
    ;set hl to $c9b4
    ld hl, $c9b4

jr_004_6795:
    ;loads tile for size???

    ;load $fe into $c9b4
    ld a, $fe
    ;inc hl
    ld [hl+], a

    ;c--
    dec c
    ;if c > 0, loop
    jr nz, jr_004_6795
    ;else
    
    ; left shift c as currentStage
    ld a, [currentStage]
    rlca
    ld c, a

    ;make pointer from bc to hl
    ld b, $00
    ld hl, WorldMap_placePoints
    add hl, bc

    ;set $c9b0 to pointer
    ld a, [hl+]
    ld [$c9b0], a

    ;set $c9b1 to pointer+1
    ld a, [hl]
    ld [$c9b1], a

    ;?
    ld a, $01
    ld d, $01
    call Call_000_2df8

    ;?
    ld a, $99
    ldh [rLCDC], a

jr_004_67b9:
    ;fade in
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if !c, loop
    ld a, c
    or a
    jr z, jr_004_67b9
    ;else

    ;if sceneState == 2, jump
    ld a, [sceneState]
    cp $02
    jr z, jr_004_67d1
    ;else

    ;?
    ld a, $1e
    call Call_000_0903

jr_004_67d1:
    ld hl, WorldMap_scrollStop

    ;get pointer from currentStage to hl
    ld a, [currentStage]
    ld c, a
    ld b, $00
    add hl, bc

    ;set pointer value b, c to $60
    ld a, [hl]
    ld b, a
    ;set timer
    ld a, $60
    ld c, a

;scroll right
jr_004_67e0:
    push bc

    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae

    pop bc

    ;if bit 0 of $ff9c, jump
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_6824
    ;else

    ;if bit 3 of $ff9c, jump
    bit 3, a
    jr nz, jr_004_6824
    ;else

    ;$c803++
    ld a, [$c803]
    inc a
    ld [$c803], a

    ;c--
    dec c
    ;if c > 0, loop
    jr nz, jr_004_67e0
    ;else

    ;set both bc to 0
    ld c, b
    
    ;if c == $60, jump
    ld a, $60
    cp c
    jr z, jr_004_6824
    ;else

;scroll left
jr_004_6804:
    push bc

    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae

    pop bc

    ;if bit 0 of $ff9c, jump
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_6824
    ;else

    ;if bit 3 of $ff9c, jump
    bit 3, a
    jr nz, jr_004_6824
    ;else

    ;$c803--
    ld a, [$c803]
    dec a
    ld [$c803], a

    ;if a > b (0), loop 
    cp b
    jr nz, jr_004_6804
    ;else

    jr jr_004_6828

jr_004_6824:
    ld a, b
    ld [$c803], a

jr_004_6828:
    ld c, $00
    ;get vars?
    call Call_004_6873
    ld b, $0f

jr_004_682f:
    push bc

    ;?
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae

    pop bc

    ;if bit 0 of $ff9c, jump
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_6853
    ;else

    ;if bit 3 of $ff9c, jump
    bit 3, a
    jr nz, jr_004_6853
    ;else

    ;if b > 0, loop
    dec b
    jr nz, jr_004_682f
    ;else

    ;SHOW CURRENT STAGE
    ;c++
    inc c

    ;if c == $14, jump
    ld a, $14
    cp c
    jr z, jr_004_6853
    ;else

    ;loop
    call Call_004_6873
    ld b, $0f
    jr jr_004_682f

jr_004_6853:
    ;finish blinking

    ;if sceneState == 2, jump
    ld a, [sceneState]
    cp 2
    jr z, jr_004_685f
    ;else

    ld a, $10
    call Call_000_0a84

jr_004_685f:
    ;?
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_6866:
    ;fade out
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae

    ;if c, loop
    ld a, c
    or a
    jr z, jr_004_6866
    ;else

    ret


Call_004_6873:
    ;clean
    push af
    push bc
    push de
    push hl

    ;if !c0, jump
    bit 0, c
    jr z, jr_004_6888
    ;else

    ld hl, $c9b2
    ld a, [$c9b0]
    ld d, a
    ld a, [$c9b1]
    ld e, a
    jr jr_004_6898

jr_004_6888:
    ;set hl to $c9ae:$c9af
    ld a, [$c9ae]
    ld l, a
    ld a, [$c9af]
    ld h, a

    ;set de to $c9b0:$c9b1
    ld a, [$c9b0]
    ld d, a
    ld a, [$c9b1]
    ld e, a

jr_004_6898:
    call Call_000_07f0

    ;unclean
    pop hl
    pop de
    pop bc
    pop af

    ret

;where to place the level map silhouettes 
;x, y
WorldMap_placePoints:
    db 3, 7
    db 8, 7
    db 8, 11
    db 15, 10
    db 14, 7
    db 19, 7
    db 23, 6
    db 25, 3

;where to stop scrolling back on x
WorldMap_scrollStop:
    db 0
    db 0
    db 0
    db 56
    db 48
    db 88
    db 96
    db 96

WorldMapBGTiles::
    db 32, 18
    db $fe, $fe, $fe, $fe, $fe, $fe, $fa, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fa, $fe, $fe, $fe, $fe, $fe, $00, $01, $02, $02, $03, $66, $67, $fe
    db $fe, $fe, $fe, $57, $58, $59, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fa, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $04, $05, $06, $07, $08, $09, $86, $87, $fa
    db $fe, $fe, $fe, $77, $78, $79, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $c0, $c1, $c2, $c3, $0a, $0b, $0c, $fb, $fb, $fb, $0d, $fe, $fe, $fe
    db $fe, $fa, $fe, $97, $98, $99, $fe, $fe, $53, $54, $fe, $53, $54, $fe, $53, $54, $fe, $fe, $e0, $e1, $e2, $e3, $0f, $10, $fb, $fe, $5a, $5b, $11, $12, $fe, $fe
    db $fe, $fe, $fe, $fe, $53, $54, $fe, $fe, $13, $14, $14, $14, $14, $14, $14, $14, $14, $15, $16, $16, $16, $17, $fb, $fb, $fe, $fe, $fe, $fe, $18, $19, $fe, $fe
    db $fe, $1a, $1b, $1c, $1c, $1c, $1c, $1c, $64, $65, $1c, $1d, $1c, $1c, $64, $65, $1c, $1c, $1c, $1e, $fb, $fb, $fe, $fe, $fe, $fe, $fe, $fe, $1f, $20, $fe, $fe
    db $fe, $21, $22, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fb, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fb, $23, $24, $25
    db $fe, $21, $22, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $5a, $5b, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $5a, $5b, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $26, $27, $28
    db $fe, $21, $22, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $c4, $c5, $2b
    db $fe, $2c, $22, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $e4, $e5, $2f
    db $fe, $30, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $e6, $e7, $fe
    db $fe, $fe, $fc, $fc, $fc, $fc, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $5a, $5b, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fc, $34, $60, $61
    db $fa, $fe, $36, $37, $38, $39, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $3a, $3b, $80, $81
    db $fe, $fe, $fe, $fe, $3d, $3e, $fc, $fc, $fc, $fc, $fc, $fc, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fc, $fc, $fc, $fc, $fc, $3f, $5f, $a0, $a1
    db $fe, $fe, $fe, $fe, $40, $41, $42, $42, $42, $42, $42, $43, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $fc, $44, $45, $45, $45, $84, $85, $7f, $fe, $fe
    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $47, $48, $49, $4a, $4a, $4a, $4a, $4a, $4a, $4b, $4c, $4a, $62, $63, $5f, $fe, $fe, $a4, $a5, $fe, $fe, $fa
    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fa, $fe, $fe, $55, $56, $4e, $4f, $50, $51, $51, $51, $51, $51, $51, $51, $82, $83, $7f, $fe, $fe, $fe, $fe, $fe, $fe, $fe
    db $fe, $fe, $fe, $fa, $fe, $fe, $fe, $fe, $fe, $fa, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $55, $56, $fe, $55, $56, $fe, $fe, $fe, $fe, $fe, $fe, $fa, $fe, $fe, $fe

;"boss" tiles are the versions specifically after you beat the level
;therefore, stage 8's is never used.
;i actually didnt even realize this but they are actually accurate to physical space
;so thats cool i guess
WorldMapStage1BossTiles::
    db 5, 4
    db $fd, $fd, $fd, $fe, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe

WorldMapStage1Tiles::
    db 5, 4
    db $fd, $fd, $fd, $fe, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe

WorldMapStage2BossTiles::
    db 5, 4
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe
    db $fe, $fe, $fd, $fe, $fe

WorldMapStage2Tiles::
    db 5, 4
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe
    db $fe, $fe, $fe, $fe, $fe

WorldMapStage3BossTiles::
    db 7, 2
    db $fd, $fd, $fd, $fd, $fd, $fd, $fe
    db $fe, $fd, $fd, $fd, $fd, $fd, $fd

WorldMapStage3Tiles::
    db 7, 2
    db $fd, $fd, $fd, $fd, $fd, $fd, $fe
    db $fe, $fd, $fd, $fd, $fd, $fd, $fe

WorldMapStage4BossTiles::
    db 5, 4
    db $fe, $fd, $fe, $fe, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd

WorldMapStage4Tiles::
    db 5, 4
    db $fe, $fe, $fe, $fe, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd

WorldMapStage5BossTiles::
    db 5, 3
    db $fe, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe

WorldMapStage5Tiles::
    db 5, 3
    db $fe, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe

WorldMapStage6BossTiles::
    db 4, 3
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd

WorldMapStage6Tiles::
    db 4, 3
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fe

WorldMapStage7BossTiles::
    db 5, 7
    db $fe, $fe, $fe, $fd, $fe
    db $fe, $fe, $fe, $fd, $fe
    db $fe, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fe, $fe

WorldMapStage7Tiles::
    db 5, 7
    db $fe, $fe, $fe, $fe, $fe
    db $fe, $fe, $fe, $fe, $fe
    db $fe, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fe, $fe

WorldMapStage8BossTiles::
    db 3, 3
    db $fe, $fd, $fd
    db $fd, $fd, $fd
    db $fd, $fd, $fd
    
WorldMapStage8Tiles::
    db 1, 1
    db $fe

WorldMapTilePointers::
    dw WorldMapBGTiles
    dw WorldMapStage1BossTiles
    dw WorldMapStage1Tiles
    dw WorldMapStage2BossTiles
    dw WorldMapStage2Tiles
    dw WorldMapStage3BossTiles
    dw WorldMapStage3Tiles
    dw WorldMapStage4BossTiles
    dw WorldMapStage4Tiles
    dw WorldMapStage5BossTiles
    dw WorldMapStage5Tiles
    dw WorldMapStage6BossTiles
    dw WorldMapStage6Tiles
    dw WorldMapStage7BossTiles
    dw WorldMapStage7Tiles
    dw WorldMapStage8BossTiles
    dw WorldMapStage8BossTiles
