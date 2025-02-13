SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

b5_root:
    ld a, [procState]
    ld de, $402a
    push de
    rst $00
    dec hl
    ld b, b
    ld e, b
    ld b, b
    db $f4
    ld b, b
    inc bc
    ld b, c
    dec c
    ld b, e
    ld l, $43
    ld h, e
    ld b, e
    ld l, e
    ld b, e
    ld a, c
    ld b, h
    sbc d
    ld b, h
    ld de, $1945
    ld b, l
    ld [hl+], a
    ld b, l
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ret


    xor a
    ld [playerState], a
    ld [levelDiamondsBitFlag], a
    ld [diamonds], a
    ld [chalvoPosCheckpointX], a
    ld [$c983], a
    ld b, $10
    ld hl, $cb13

jr_005_4040:
    ld [hl+], a
    dec b
    jr nz, jr_005_4040

    call StartActorCleanup

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $14
    ld [currentStage], a
    call Call_000_2d07
    ld hl, $46e6
    ld de, $9800
    ld bc, $0400
    call copy
    ld a, $58
    ld [$c803], a
    ld a, $00
    ld [$c804], a
    ld de, $c120
    ld a, $01
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $2c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $aa
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $6e
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, de
    ld hl, $0011
    add hl, de
    ld [hl], $60
    inc hl
    ld [hl], $00
    xor a
    ld hl, $000f
    add hl, de
    ld [hl+], a
    ld [hl], $01
    ld a, $fc
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld de, $c140
    ld a, $02
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $58
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $001e
    add hl, de
    ld [hl], a

    ld a, PALFADE_LTN
    ld d, %111
    call Pal_Fade

    LCDC_ON

    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $04
    call Call_000_2e61
    jr z, jr_005_4102

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_4102:
    ret

    SWAP_AND_CALL Jump_005_46b7

    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $4120
    push de
    rst $00
    ld e, l
    ld b, b
    ld hl, $3c41
    ld b, c
    adc [hl]
    ld b, c
    jp nc, $c941

    ld hl, $001e
    add hl, bc
    inc [hl]
    ld a, $10
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0016
    add hl, bc
    ld [hl], a
    ret


    call Call_000_22e6
    call Call_005_41ea
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $8e
    jp c, Jump_005_4153

    ld a, $f6
    ld hl, $0010
    add hl, bc
    ld [hl], a

Jump_005_4153:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $60
    jp nc, Jump_005_418d

    xor a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $07
    ld hl, $0015
    add hl, bc
    ld [hl], a
    ld a, $10
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ld de, $c140
    ld a, $05
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0015
    add hl, de
    ld [hl], a

Jump_005_418d:
    ret


    call Call_005_4208
    call Call_000_22e6
    call Call_005_41ea
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $8e
    jp c, Jump_005_41d1

    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    cp $01
    jp nz, Jump_005_41b7

    ld de, $c140
    ld hl, $001e
    add hl, de
    ld a, [hl]
    inc a
    ld [hl], a

Jump_005_41b7:
    ld hl, $0015
    add hl, bc
    ld a, [hl]
    cp $00
    jp nz, Jump_005_41ca

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    jr jr_005_41d1

Jump_005_41ca:
    ld a, $f6
    ld hl, $0010
    add hl, bc
    ld [hl], a

Jump_005_41d1:
jr_005_41d1:
    ret


    call Call_000_22e6
    call Call_005_41ea
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $b4
    jp c, Jump_005_41e9

    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_41e9:
    ret


Call_005_41ea:
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    bit 7, [hl]
    jr z, jr_005_41fe

    ld hl, $0002
    add hl, bc
    ld [hl], $03
    inc hl
    ld [hl], $00
    jr jr_005_4207

jr_005_41fe:
    ld hl, $0002
    add hl, bc
    ld [hl], $04
    inc hl
    ld [hl], $00

jr_005_4207:
    ret


Call_005_4208:
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_424e

    ld a, $0c
    ld hl, $0016
    add hl, bc
    ld [hl], a
    ld de, $c180
    ld a, $0a
    call Call_000_26c7
    jp nz, Jump_005_424e

    ld a, $80
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $4c
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    ld a, $ff
    ld hl, $000d
    add hl, de
    ld [hl], a

Jump_005_424e:
    ret


    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld d, a
    call Call_000_24cd
    and $3f
    add d
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld d, a
    call Call_000_24cd
    and $1f
    add d
    ld [hl], a
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Play_SFX
    pop af
    pop hl
    ret


    ld a, $0c
    ld hl, $0000
    add hl, bc
    ld [hl], a

    SWAP_AND_CALL b1_root

    xor a
    call Call_000_34c1
    jr z, jr_005_42ab

    xor a
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld [hl], a

jr_005_42ab:
    ret


    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $42c7
    push de
    rst $00
    ld e, l
    ld b, b
    ld c, a
    ld b, d
    adc e
    ld b, d
    xor h
    ld b, d
    ret z

    ld b, d
    bit 0, d
    ldh a, [rSCY]
    inc c
    ld b, e
    ret


    jr jr_005_42e7

    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_42e7

    ld a, $10
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $10
    ld [hl], a

Jump_005_42e7:
jr_005_42e7:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c803], a
    ret


    ld de, $c120
    ld a, $fc
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_42e7

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ret


    ret


    xor a
    ld [playerState], a
    ld [levelDiamondsBitFlag], a
    ld [diamonds], a
    ld [chalvoPosCheckpointX], a
    call StartActorCleanup

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld hl, unk5_tiles2
    ld de, _SCRN0
    call Draw_EntireScreenTiles

    ld a, $00
    ld [$c803], a
    ld a, [procState]
    inc a
    ld [procState], a
    ld de, $c120
    ld a, $03
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $30
    ld hl, $0015
    add hl, de
    ld [hl], a

    LCDC_ON

    ret


    ld a, [procState]
    inc a
    ld [procState], a
    ret


    SWAP_AND_CALL Jump_005_46b7
    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $4388
    push de
    rst $00
    ld e, l
    ld b, b
    adc c
    ld b, e
    or b
    ld b, e
    ld h, a
    ld b, h
    ld c, [hl]
    ld b, h
    ret


    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_43af

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $03
    ld hl, $0016
    add hl, bc
    ld [hl], a
    ld a, $3c
    ld hl, $0015
    add hl, bc
    ld [hl], a
    ld a, $0a
    ld hl, $0017
    add hl, bc
    ld [hl], a

Jump_005_43af:
    ret


    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_43d8

    ld a, $3c
    ld [hl], a
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_43d8

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $78
    ld hl, $0015
    add hl, bc
    ld [hl], a
    jp Jump_005_444d


Jump_005_43d8:
    ld hl, $0017
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_444d

    ld a, $0a
    ld [hl], a
    ld de, $c180
    ld a, $0a
    call Call_000_26c7
    jp nz, Jump_005_444d

    ld a, $03
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    ld a, $ff
    ld hl, $000d
    add hl, de
    ld [hl], a
    ld a, $4b
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $49
    ld hl, $0005
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $1f
    push bc
    ld b, a
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add b
    ld hl, $0004
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $1f
    ld b, a
    ld hl, $0005
    add hl, de
    ld a, [hl]
    add b
    ld hl, $0005
    add hl, de
    ld [hl], a
    pop bc
    call Call_000_24cd
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Play_SFX
    pop af
    pop hl

Jump_005_444d:
    ret


    ld a, $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    xor a
    call Call_000_34c1
    jr z, jr_005_4466

    xor a
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld [hl], a

jr_005_4466:
    ret


    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_4478

    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_4478:
    ret


    xor a
    ld [playerState], a
    ld [levelDiamondsBitFlag], a
    ld [diamonds], a
    ld [chalvoPosCheckpointX], a
    call StartActorCleanup

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld hl, unk5_tiles3
    ld de, _SCRN0
    call Draw_EntireScreenTiles

    ld a, $00
    ld [$c803], a
    ld a, [procState]
    inc a
    ld [procState], a
    ld de, $c120
    ld a, $04
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $30
    ld hl, $0015
    add hl, de
    ld [hl], a
    ld a, $59
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $3a
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $90
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld de, $c140
    ld a, $05
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $30
    ld hl, $0015
    add hl, de
    ld [hl], a
    ld a, $24
    ld hl, $0000
    add hl, de
    ld [hl], a

    LCDC_ON

    ret


    ld a, [procState]
    inc a
    ld [procState], a
    ret


    SWAP_AND_CALL Jump_005_46b7
    ret


    call StartActorCleanup
    ld a, $06
    ld [sceneState], a
    ld a, $00
    ld [procState], a
    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $454a
    push de
    rst $00
    ld e, l
    ld b, b
    ld c, e
    ld b, l
    ld d, e
    ld b, l
    ld e, e
    ld b, l
    ld a, e
    ld b, l
    and [hl]
    ld b, l
    cp a
    ld b, l
    ret nc

    ld b, l
    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ret


    ld a, $3c
    ld hl, $0015
    add hl, bc
    ld [hl], a
    ret


    ld a, $57
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_457a

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $3c
    ld hl, $0015
    add hl, bc
    ld [hl], a

Jump_005_457a:
    ret


    ld a, $58
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_45a4

    ld de, $c140
    ld hl, $001e
    add hl, de
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $3c
    ld hl, $0015
    add hl, bc
    ld [hl], a

Jump_005_45a4:
    ret


    ret


    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_45be

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a

    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

Jump_005_45be:
    ret


    push bc
    ld a, $10
    call Call_000_2e61
    jr z, jr_005_45ce

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_45ce:
    pop bc
    ret


    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $45eb
    push de
    rst $00
    ld e, l
    ld b, b
    db $ec
    ld b, l
    jr nz, jr_005_4627

    ld h, l
    ld b, [hl]
    adc h
    ld b, [hl]
    adc l
    ld b, [hl]
    adc h
    ld b, [hl]
    or [hl]
    ld b, [hl]
    ret


    ld a, $04
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, $9e
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, $00
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, $10
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $50
    inc hl
    ld [hl], $00
    ret


    call Call_000_22e6
    ld hl, $0005
    add hl, bc

jr_005_4627:
    ld a, [hl]
    cp $7c
    jp c, Jump_005_4664

    ld a, $08
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $90
    jp c, Jump_005_4664

    ld a, $90
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $3c
    ld hl, $0015
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld de, $c120
    ld hl, $001e
    add hl, de
    ld a, [hl]
    inc a
    ld [hl], a

Jump_005_4664:
    ret


    ld hl, $0015
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jp nz, Jump_005_468b

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $02
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a

Jump_005_468b:
    ret


    ret


    ld a, $01
    call Call_000_34c1

    SWAP_AND_CALL b1_root

    ld de, $c120
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $10
    cp d
    jp nc, Jump_005_46b5

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a

Jump_005_46b5:
    ret


    ret

Jump_005_46b7:
    ld d, $1c
    ld bc, actors

jr_005_46bc:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_46d9

    push de
    ld de, $46d8
    push de
    rst $00
    db $e3
    ld b, [hl]
    inc c
    ld b, c
    xor l
    ld b, d
    ld [hl], h
    ld b, e
    jr nc, @+$47

    pop de
    ld b, l
    db $e3
    ld b, [hl]
    pop de

jr_005_46d9:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    dec d
    jr nz, jr_005_46bc

    ret


    ret

unk5_tiles1:
db 32, 18
db $04,$24,$04,$04,$04,$04,$04,$04,$04,$04,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7,$A6,$A7
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$05,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7,$C6,$C7
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F,$8E,$8F
db $04,$04,$04,$04,$04,$04,$04,$25,$04,$04,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF,$AE,$AF
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD,$AC,$AD
db $04,$04,$05,$04,$04,$04,$04,$04,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$04,$04,$04,$25,$04,$05,$04,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $24,$04,$04,$04,$04,$04,$04,$04,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$24,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9,$A8,$A9
db $04,$04,$04,$04,$04,$04,$04,$05,$04,$04,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9,$C8,$C9

unk5_tiles2:
db 20, 18
db $04,$04,$04,$04,$04,$04,$24,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$25,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$05,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$25,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$25
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$25,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$25,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $25,$04,$04,$04,$04,$04,$04,$04,$05,$04,$04,$04,$04,$04,$04,$04,$04,$25,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $24,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$25,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$24,$04,$04,$04,$04,$05,$04,$04,$04,$04


unk5_tiles3:
db 20, 18
db $A3,$64,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $43,$A3,$64,$FF,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$FF,$65,$66,$67,$68,$69,$6A
db $43,$43,$A3,$64,$FF,$FF,$FF,$FF,$FF,$65,$66,$67,$68,$69,$FF,$FF,$FF,$FF,$FF,$FF
db $40,$41,$42,$04,$64,$65,$66,$67,$68,$69,$6A,$6B,$68,$69,$65,$66,$67,$68,$69,$6A
db $60,$61,$62,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$65,$66
db $80,$81,$82,$65,$66,$67,$68,$69,$6A,$6B,$FF,$65,$66,$67,$68,$69,$FF,$FF,$FF,$FF
db $A0,$A1,$A2,$FF,$FF,$65,$66,$67,$68,$69,$6A,$6B,$FF,$65,$66,$67,$68,$69,$6A,$6B
db $44,$44,$44,$67,$68,$69,$6A,$6B,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$65,$66,$67
db $04,$44,$44,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$44,$44,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$44,$44,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$70,$71,$72,$73,$74,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$90,$91,$92,$93,$94,$94,$96,$97,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $04,$B0,$B1,$B2,$B3,$B4,$B4,$B6,$B7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $CF,$D0,$D1,$D2,$D3,$D4,$D4,$D6,$D7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $EF,$F0,$F1,$F2,$F3,$F4,$F4,$F6,$F7,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63
db $83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83

unk5_tiles4:
db 4, 7
db $FF,$FF,$FF,$FF
db $1C,$1D,$1E,$1F
db $3C,$3D,$3E,$3F
db $5C,$5D,$5E,$5F
db $7C,$7D,$7E,$7F
db $9C,$9D,$9E,$9F
db $BC,$BD,$BE,$BF

unk5_tiles5:
db 4,7
db $FF,$FF,$FF,$FF
db $18,$19,$1A,$1B
db $38,$39,$3A,$3B
db $58,$59,$5A,$5B
db $78,$79,$7A,$7B
db $98,$99,$9A,$9B
db $B8,$B9,$BA,$BB

unk5_tiles6:
db 4, 7
db $D8,$D9,$DA,$DB
db $F8,$F9,$FA,$FB
db $DC,$DD,$DE,$DF
db $5C,$5D,$5E,$5F
db $7C,$7D,$7E,$7F
db $9C,$9D,$9E,$9F
db $BC,$BD,$BE,$BF

unk5_tilepointers:
dw unk5_tiles1
dw unk5_tiles2
dw unk5_tiles3
dw unk5_tiles4
dw unk5_tiles5
dw unk5_tiles6

jr_005_4c60:
    ld hl, $cb2c
    res 5, [hl]
    call Call_005_5233

    ld a, [procState]
    ld de, $4c88
    push de

    db $c7, $89, $4c, $b0, $4c, $e4, $4e, $f8, $4e, $57, $4f, $9e, $4f, $dc, $4f, $21
    db $50, $64, $50, $8a, $50, $b6, $50, $de, $50, $c9

    ld hl, $cb2c
    res 6, [hl]
    xor a
    ld [$c803], a
    ld [$c804], a
    call StartActorCleanup
    call Call_000_0619
    xor a
    ld [$c983], a

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, [currentStage]
    push af
    ld a, $11
    ld [currentStage], a
    call Call_000_2d07
    pop af
    ld [currentStage], a
    cp $09
    jr nz, jr_005_4cc9

    ld hl, $4d7a
    jr jr_005_4cd5

jr_005_4cc9:
    ld b, $00
    dec a
    rlca
    ld c, a
    ld hl, unk5_tilepointers3+(2*9) ;Clear_ start
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_005_4cd5:
    ld de, _SCRN0
    call Draw_EntireScreenTiles

    ld bc, $c120

    ld a, $04
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ld a, $01
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ld a, $14
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ld a, $30
    ld hl, $0005
    add hl, bc
    ld [hl], a

    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a

    ld [hl], $01

    ld hl, $0011
    add hl, bc
    ld [hl], $50

    inc hl
    ld [hl], $00

    ld a, $04
    ld hl, $000a
    add hl, bc
    ld [hl], a

    ld a, $02
    ld hl, $0006
    add hl, bc
    ld [hl], a

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a


    ld bc, $c140
    ld a, $04
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ld a, $49
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ld a, $24
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ld a, $30
    ld hl, $0005
    add hl, bc
    ld [hl], a

    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a

    ld [hl], a

    ld hl, $0011
    add hl, bc
    ld [hl], $50

    inc hl
    ld [hl], $00

    ld a, $02
    ld hl, $0006
    add hl, bc
    ld [hl], a

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a

    ld a, $28
    ld hl, $001f
    add hl, bc
    ld [hl], a

    ld a, PALFADE_LTN
    ld d, %111
    call Pal_Fade

    LCDC_ON

    ld a, [procState]
    inc a
    ld [procState], a
    ret

idklol:
    db 20, 18
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$B0,$B1,$B2,$B3,$B4,$B5,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $7D,$7C,$7D,$7C,$7D,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $9D,$9C,$9D,$9C,$9D,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$C6,$FF,$62,$63,$04,$05,$C2,$C3,$C7,$C8,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$E6,$FF,$82,$83,$24,$25,$E2,$E3,$E7,$E8,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$AE,$AF,$A2,$A3,$44,$45,$AA,$AB,$C9,$CA,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

    ld a, $04
    call Call_000_2e61
    jr z, jr_005_4ef7

    ld a, $12
    call Call_000_0903
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_4ef7:
    ret


    call Call_005_524f
    ld bc, $c120
    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a

    SWAP_AND_CALL b1_root

    ld a, $01
    call Call_000_34c1
    ld de, $c2e0
    ld a, $0c
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $000a
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    and $2c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld bc, $c140

    SWAP_AND_CALL b1_root

    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_4f4e

    ld hl, $c2e0
    call Call_000_26e3
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_4f4e:
    SWAP_AND_CALL b2_root_2
    ret


    call Call_005_524f
    ld bc, $c120
    ld a, $01
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld bc, $c140
    call Call_000_22e6
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $70
    jp c, Jump_005_4f95

    ld [hl], $70
    ld bc, $c120
    ld a, $10
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_4f95:
    SWAP_AND_CALL b2_root_2
    ret


    call Call_005_524f
    ld bc, $c120

    SWAP_AND_CALL b1_root

    ld a, $01
    call Call_000_34c1
    call Call_005_5147
    ld bc, $c120
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_4fd3

    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_4fd3:
    SWAP_AND_CALL b2_root_2
    ret


    call Call_005_524f
    ld bc, $c120
    call Call_000_22e6
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $58
    jp c, Jump_005_5018

    call Call_005_51b8
    ld bc, $c120
    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $12
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_5018:
    SWAP_AND_CALL b2_root_2
    ret


    call Call_005_524f
    ld bc, $c120
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    set 5, a
    ld [hl], a

    SWAP_AND_CALL b1_root

    call Call_005_5147
    ld a, $01
    call Call_000_34c1
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_505b

    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_505b:
    SWAP_AND_CALL b2_root_2
    ret


    call Call_005_524f
    ld bc, $c120
    call Call_000_22e6
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $70
    jp c, Jump_005_5081

    call Call_005_51b8
    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_5081:
    SWAP_AND_CALL b2_root_2
    ret


    call Call_005_524f
    ld bc, $c120
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    res 5, a
    ld [hl], a
    ld a, $01
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, $78
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld a, [procState]
    inc a
    ld [procState], a
    SWAP_AND_CALL b2_root_2
    ret


    ldh a, [INPUT_HOLD]
    and PADF_START | PADF_A
    jp nz, Jump_005_50c7

    ld bc, $c120
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_50d5

Jump_005_50c7:
    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_50d5:
    SWAP_AND_CALL b2_root_2
    ret


    ld a, $08
    call Call_000_2e61
    jr z, jr_005_513e

    call StartActorCleanup
    ld hl, $cb2c
    bit 6, [hl]
    jr z, jr_005_50f7

    ld a, [demoing]
    and a
    jr z, jr_005_5100

    jr jr_005_5107

jr_005_50f7:
    xor a
    ld [demoing], a
    ld [$cb2c], a
    jr jr_005_5125

jr_005_5100:
    ld a, $ff
    ldh [INPUT_HOLD], a
    call Call_000_263a

jr_005_5107:
    ld hl, $cb2c
    set 7, [hl]
    ld hl, currentStage
    dec [hl]
    ld a, $01
    ld [demoing], a
    ld a, $0e
    ld [sceneState], a
    xor a
    ld [procState], a
    ld a, $02
    ld [procState], a
    jr jr_005_513e

jr_005_5125:
    ld a, $04
    ld [sceneState], a
    xor a
    ld [procState], a
    ld a, [currentStage]
    cp $08
    jr c, jr_005_513e

    ld a, $05
    ld [sceneState], a
    xor a
    ld [procState], a

jr_005_513e:
    SWAP_AND_CALL b2_root_2
    ret


Call_005_5147:
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_005_51ac

    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_005_51ab

    ld a, $0b
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0000
    add hl, bc
    bit 5, [hl]
    jr nz, jr_005_5196

    sub $06
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0000
    add hl, de
    ld [hl], a
    jr jr_005_51ab

jr_005_5196:
    add $06
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, $28
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a

Jump_005_51ab:
jr_005_51ab:
    xor a

jr_005_51ac:
    inc a
    cp $14
    jr nz, jr_005_51b2

    xor a

jr_005_51b2:
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ret


Call_005_51b8:
    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_005_5232

    ld a, $08
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $0b
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $06
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_005_5232

    ld a, $28
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $0b
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $06
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $0006
    add hl, de
    ld [hl], a

Jump_005_5232:
    ret


Call_005_5233:
    ld hl, $cb2c
    bit 6, [hl]
    jr nz, jr_005_524e

    ;replay
    ldh a, [INPUT_HOLD]
    cp PADF_DOWN | PADF_B
    jr nz, jr_005_524e

    set 6, [hl]

    push hl
    push af

    ld hl, SFX_Unk17
    ld a, 4
    call Play_SFX

    pop af
    pop hl

jr_005_524e:
    ret


Call_005_524f:
    ldh a, [INPUT_HOLD]
    and PADF_A | PADF_START
    jp z, Jump_005_525b

    ld hl, $cb2c
    set 5, [hl]

Jump_005_525b:
    ret

Stage_1_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$09,$0a,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$cb,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$1b,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_2_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$0b,$0c,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$cc,$cd,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$1c,$1d,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_3_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$0d,$0e,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$ce,$cf,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$1e,$ef,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_4_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$d0,$d1,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$f0,$f1,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$d2,$d3,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_5_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$f2,$f3,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$d4,$d5,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$f4,$f5,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_6_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$b6,$b7,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$d6,$d7,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$f6,$f7,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_7_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$b8,$b9,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$d8,$d9,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$f8,$f9,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Stage_8_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$00,$01,$02,$03,$04,$05,$60,$61,$62,$63,$ff,$ba,$bb,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$20,$21,$22,$23,$24,$25,$80,$81,$82,$83,$ff,$da,$db,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$40,$41,$42,$43,$44,$45,$a0,$a1,$a2,$a3,$ff,$fa,$fb,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Game_Over_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$60,$61,$04,$05,$64,$65,$62,$63,$66,$67,$c0,$c1,$62,$63,$c2,$c3,$ff,$ff
    db $ff,$ff,$80,$81,$24,$25,$84,$85,$82,$83,$86,$87,$e0,$e1,$82,$83,$e2,$e3,$ff,$ff
    db $ff,$ff,$a0,$a1,$44,$45,$a4,$a5,$a2,$a3,$a6,$a7,$a8,$a9,$a2,$a3,$aa,$ab,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_1_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $6f,$6e,$6f,$6e,$6f,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $8f,$8e,$8f,$8e,$8f,$ff,$ff,$ff,$ff,$09,$0a,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$cb,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$1b,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_2_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $71,$70,$71,$70,$71,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $91,$90,$91,$90,$91,$ff,$ff,$ff,$ff,$0b,$0c,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$cc,$cd,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$1c,$1d,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_3_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $73,$72,$73,$72,$73,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $93,$92,$93,$92,$93,$ff,$ff,$ff,$ff,$0d,$0e,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ce,$cf,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$1e,$ef,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_4_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $75,$74,$75,$74,$75,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $95,$94,$95,$94,$95,$ff,$ff,$ff,$ff,$d0,$d1,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$f0,$f1,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$d2,$d3,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_5_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $77,$76,$77,$76,$77,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $97,$96,$97,$96,$97,$ff,$ff,$ff,$ff,$f2,$f3,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$d4,$d5,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$f4,$f5,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_6_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $79,$78,$79,$78,$79,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $99,$98,$99,$98,$99,$ff,$ff,$ff,$ff,$b6,$b7,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$d6,$d7,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$f6,$f7,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_7_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $7b,$7a,$7b,$7a,$7b,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $9b,$9a,$9b,$9a,$9b,$ff,$ff,$ff,$ff,$b8,$b9,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$d8,$d9,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$f8,$f9,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_8_Tiles:
    db 20, 18
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$b0,$b1,$b2,$b3,$b4,$b5,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $7d,$7c,$7d,$7c,$7d,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $9d,$9c,$9d,$9c,$9d,$ff,$ff,$ff,$ff,$ba,$bb,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$da,$db,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$fa,$fb,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$c6,$ff,$62,$63,$04,$05,$c2,$c3,$c7,$c8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$e6,$ff,$82,$83,$24,$25,$e2,$e3,$e7,$e8,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ae,$af,$a2,$a3,$44,$45,$aa,$ab,$c9,$ca,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

Clear_C_Tiles:
    db 2, 3
    db $c4,$c5
    db $e4,$e5
    db $ac,$ad

unk5_tilepointers3:
    dw Stage_1_Tiles
    dw Stage_2_Tiles
    dw Stage_3_Tiles
    dw Stage_4_Tiles
    dw Stage_5_Tiles
    dw Stage_6_Tiles
    dw Stage_7_Tiles
    dw Stage_8_Tiles
    dw Game_Over_Tiles
    dw Clear_1_Tiles
    dw Clear_2_Tiles
    dw Clear_3_Tiles
    dw Clear_4_Tiles
    dw Clear_5_Tiles
    dw Clear_6_Tiles
    dw Clear_7_Tiles
    dw Clear_8_Tiles
    dw Clear_C_Tiles

;jumptable for the intro cutscene
jr_005_6a92:
    ld a, [procState]
    ld de, .jump_table_default
    push de
    rst $00

.jump_table:
    dw jr_005_6ac5
    dw jr_005_6aea
    dw jr_005_6b11
    dw jr_005_6b54
    dw jr_005_6b6b
    dw Jump_005_6b9b
    dw Jump_005_6bb8
    dw Jump_005_6c4e
    dw Jump_005_6ca9
    dw jr_005_6cc7
    dw jr_005_6ce0
    dw StartCutscene_End
    dw jr_005_6d67
    dw jr_005_6d7b
    dw jr_005_6da2
    dw jr_005_6dd7
    dw jr_005_6dfb
    dw jr_005_6e26
    dw Jump_005_6e58
    dw jr_005_6e6e
    dw jr_005_6e82
.jump_table_default:
    ret


jr_005_6ac5:
    xor a
    ld [$c803], a
    ld [$c804], a
    ld [soundtest_i], a

    call StartActorCleanup
    call Call_000_0619

    xor a
    ld [$c983], a

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a

    ret

jr_005_6aea:
    ld a, $12
    ld [currentStage], a

    call Call_000_2d07

    ld de, _SCRN0
    ld hl, Cutscene_ImageTiles1
    call Draw_EntireScreenTiles

    ld a, PALFADE_LTN
    ld d, %111
    call Pal_Fade

    LCDC_ON

    ld a, [procState]
    inc a
    ld [procState], a

    ret

jr_005_6b11:
    ld a, $08
    call Call_000_2e61
    jr z, .jr_005_6b53

    ld bc, actors+(1*ACTOR_sizeof)
    set_actor_value 0, 4
    set_actor_value 2, $4a
    set_actor_value 4, $a8
    set_actor_value 5, $28
    set_actor_value 6, 1
    set_actor_value 7, $16
    set_actor_value $1f, $B4

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6b53:
    ret

jr_005_6b54:
    ld bc, actors+(1*ACTOR_sizeof)

    ;dec actor 1's $1f every frame
    ld hl, $1f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6b6a

    ld a, $1a
    call Call_000_0903
    ld a, [procState]
    inc a
    ld [procState], a

    jr_005_6b6a:
    ret

jr_005_6b6b:

    ld hl, $c81d
    bit 0, [hl]
    jr z, jr_005_6b6a

    ld bc, $c120

    SWAP_AND_CALL b1_root

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $79
    jp nc, .Jump_005_6b9a

    call StartActorCleanup

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a

    .Jump_005_6b9a:
    ret

Jump_005_6b9b:

    ld de, _SCRN0
    ld hl, unk5_tiles9
    call Draw_EntireScreenTiles

    LCDC_ON

    ld a, $78
    ld [$c13f], a
    ld a, [procState]
    inc a
    ld [procState], a
    ret

Jump_005_6bb8:
    ld hl, $c13f
    dec [hl]
    jp nz, .Jump_005_6c4d

    ld bc, actors+(1*ACTOR_sizeof)
    set_actor_value 0, $24
    set_actor_value 4, $c0
    set_actor_value 5, $60
    set_actor_value 7, $18
    set_actor_value 6, 4
    set_actor_value $a, 0

    ld bc, actors+(2*ACTOR_sizeof)
    set_actor_value 0, $24
    set_actor_value 4, $d4
    set_actor_value 5, $60
    set_actor_value 7, $18
    set_actor_value 6, 4
    set_actor_value $a, 1

    ld bc, actors+(3*ACTOR_sizeof)
    set_actor_value 0, $24
    set_actor_value 4, $e8
    set_actor_value 5, $60
    set_actor_value 7, $18
    set_actor_value 6, 4
    set_actor_value $a, 2

    ld a, [procState]
    inc a
    ld [procState], a

    .Jump_005_6c4d:
    ret

Jump_005_6c4e:

    ld bc, actors+(1*ACTOR_sizeof)

    SWAP_AND_CALL b1_root

    ld a, $0c
    call Call_000_34c1

    ld bc, actors+(2*ACTOR_sizeof)

    SWAP_AND_CALL b1_root

    ld a, $0c
    call Call_000_34c1

    ld bc, actors+(3*ACTOR_sizeof)

    SWAP_AND_CALL b1_root

    ld a, $0c
    call Call_000_34c1

    ld bc, actors+(1*ACTOR_sizeof)
    get_actor_value 4
    cp $6d
    jp nc, .Jump_005_6ca8

    set_actor_value $1f, $78

    ld a, $4c
    ld [actors+(1*ACTOR_sizeof)+2], a

    ld a, $4f
    ld [actors+(2*ACTOR_sizeof)+2], a

    ld a, $52
    ld [actors+(3*ACTOR_sizeof)+2], a

    ld a, [procState]
    inc a
    ld [procState], a

    .Jump_005_6ca8:
    ret

Jump_005_6ca9:
    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, .jr_005_6cc6

    ld a, $78
    ld [hl], a
    ld hl, $98e6
    ld de, $719b
    call Call_000_244a
    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6cc6:
    ret

jr_005_6cc7:
    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, .jr_005_6cdf

    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6cdf:
    ret

jr_005_6ce0:
    ld a, $08
    call Call_000_2e61
    jr z, .jr_005_6cfa

    ;cleanup previous actors
    call StartActorCleanup

    LCDC_OFF

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6cfa:
    ret


StartCutscene_End:
    ;this is more like the init func but hey im working on it
    ;presumably sets the music???? very strange
    ld a, $13
    ld [currentStage], a

    call Call_000_2d07

    ld de, _SCRN0
    ld hl, unk5_tiles20
    call Draw_EntireScreenTiles

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ld bc, actors+(1*ACTOR_sizeof)

    ;insert $04 at 0x0
    set_actor_value 0, 4
    ;insert $40 at 0x4
    set_actor_value 4, $40
    ;insert $90 at 0x5
    set_actor_value 5, $90
    ;insert $54 at 0x2
    set_actor_value 2, $54 ; Charlie stand
    ;insert $78 at 0x1f
    ;sets the timer until he does a thumbs up
    set_actor_value $1f, $78

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ld bc, actors+(2*ACTOR_sizeof)
    ;insert $24 at 0x0
    set_actor_value 0, $24
    ;insert $70 at 0x4
    set_actor_value 4, $70
    ;insert $90 at 0x5
    set_actor_value 5, $90
    ;insert $01 at 0x2
    set_actor_value 2, 1 ; Chalvo Stand

    ld a, PALFADE_LTN
    ld d, %111
    call Pal_Fade

    LCDC_ON

    ld a, [procState]
    inc a
    ld [procState], a
    ret

jr_005_6d67:
    ;wait for fade in to finsih
    ld a, $08
    call Call_000_2e61
    jr z, .jr_005_6d7a

    ;loop
    ld a, $1c
    call Call_000_0903
    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6d7a:
    ret

jr_005_6d7b:
    ;do soundtest input. if input, exit immediately
    call Check_For_SoundTest
    ret nz

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;loop until thumbs up timer is 0
    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, .jr_005_6da1
    ;loop

    ;thumbs up
    set_actor_value 2, $55

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;set the timer until chalvo turns around
    ld bc, actors+(2*ACTOR_sizeof)
    set_actor_value $1f, $5a

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6da1:
    ret

jr_005_6da2:
    ;do soundtest input. if input, exit immediately
    call Check_For_SoundTest
    ret nz

    ;pseudo
    ;while timer > 0:
    ;   if timer == $1e:
    ;        charlie.anim = "thumbs down"
    ;   timer--

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;break out when chalvo timer at 0
    ld bc, actors+(2*ACTOR_sizeof)

    ld hl, $001f
    add hl, bc
    ld a, [hl]

    dec a
    ld [hl], a
    jr z, .jr_005_6dc2
    ;specifically at when the timer is $1e, put charlies thumb down
    cp $1e
    jr nz, .jr_005_6dd6
    ;loop

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;put his thumb down
    ld bc, actors+(1*ACTOR_sizeof)
    set_actor_value 2, $54
    ;go back to the loop
    jr .jr_005_6dd6

    .jr_005_6dc2:
    ;flip chalvo around
    ld hl, $0000
    add hl, bc
    res 5, [hl]

    ;set jump timer
    set_actor_value $1f, $3c

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6dd6:
    ret

jr_005_6dd7:
    ;do soundtest input. if input, exit immediately
    call Check_For_SoundTest
    ret nz

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;loop until jumptimer == 0
    ld bc, actors+(2*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, .jr_005_6dfa
    ;loop

    ;set chavlo frame to jump
    set_actor_value 2, ANIM_FRAME_Chalvo_Jump
    ;set time before actual launch
    set_actor_value $1f, 12

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6dfa:
    ret

jr_005_6dfb:
    ;do soundtest input. if input, exit immediately
    call Check_For_SoundTest
    ret nz

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;loop until launch timer == 0
    ld bc, actors+(2*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, .jr_005_6e25
    ;loop

    ;set chavlo frame to ballup
    set_actor_value 2, ANIM_FRAME_Chalvo_BallUp
    set_actor_value 7, 2
    set_actor_value 6, 16

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6e25:
    ret

jr_005_6e26:
    ;do soundtest input. if input, exit immediately
    call Check_For_SoundTest
    ret nz

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ld bc, actors+(2*ACTOR_sizeof)

    SWAP_AND_CALL b1_root


    ;loop until chalvo 0x5 > $d8 (when he reaches top (wrapping to the bottom))
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $d8
    jp c, .Jump_005_6e57
    ;loop

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;make him look up
    ld bc, actors+(1*ACTOR_sizeof)
    set_actor_value 2, $56
    ;set a timer of (what is basically) $0100
    ;(it will decrement right before it gets checked, so)
    set_actor_value $1f, 0

    ld a, [procState]
    inc a
    ld [procState], a

    .Jump_005_6e57:
    ret

Jump_005_6e58:
    ;do soundtest input. if input, exit immediately
    call Check_For_SoundTest
    ret nz

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;loop until timer runs out
    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, .jr_005_6e6d
    ;loop

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_6e6d:
    ret

jr_005_6e6e:
    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

    ld a, $10
    call Call_000_0a84
    ld a, [procState]
    inc a
    ld [procState], a
    ret


jr_005_6e82:
    ld a, $08
    call Call_000_2e61
    jr z, .jr_005_6ea0

    ;clean up and get ready for the game to begin
    call StartActorCleanup
    ;set stage to 0
    xor a
    ld [currentStage], a

    ;set the sceneState to 7 (mob ship)
    ld a, $07
    ld [sceneState], a

    ;process state???
    ;0 seems to be stage init
    xor a
    ld [procState], a
    ;??
    ld a, [procState]

    ;1 seems to be to simply init stuff using existing data
    inc a
    ld [procState], a

    .jr_005_6ea0:
    ret

;camera seen from space
Cutscene_ImageTiles1:
db 20, 18
db $E6,$00,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E0,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$00,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E0,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$01,$02,$03,$04,$05,$06,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$20,$21,$22,$23,$24,$25,$26,$27,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$40,$41,$42,$43,$44,$45,$46,$47,$E6,$E6,$E0,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$60,$61,$62,$63,$64,$65,$66,$67,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$00,$E6,$E6,$E6,$E6,$80,$81,$82,$83,$84,$85,$86,$87,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$E6,$E6,$E6,$E6,$E0,$E6
db $E6,$E6,$E6,$E6,$E6,$00,$E6,$E1,$E2,$E3,$E4,$E5,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$00,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$00,$E6,$E6,$E6,$E6,$E0
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6
db $E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E0,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6,$E6

unk5_tiles8:
db 6, 6
db $08,$09,$0A,$0B,$0C,$0D
db $28,$29,$2A,$2B,$2C,$2D
db $48,$49,$4A,$4B,$4C,$4D
db $68,$69,$6A,$6B,$6C,$6D
db $88,$89,$8A,$8B,$8C,$8D
db $A8,$A9,$AA,$AB,$AC,$AD

unk5_tiles9:
db 20, 18
db $C5,$C5,$C5,$C5,$C5,$C5,$C5,$00,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$E0,$C5,$C5,$CA,$F2
db $C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$00,$C5,$C5,$C5,$C5,$C5,$CA,$F2
db $C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$CA,$F2
db $C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$CA,$F2
db $C5,$00,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$8E,$8F,$90,$91,$C5,$CA,$F2
db $C5,$C5,$C5,$C5,$00,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$AE,$AF,$B0,$B1,$C5,$CA,$F3
db $C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$CE,$CF,$D0,$D1,$C5,$C5,$C5
db $C5,$C5,$C5,$C5,$C5,$C5,$92,$93,$94,$C5,$C5,$00,$C5,$EE,$EF,$F0,$F1,$C5,$C5,$C5
db $C5,$C5,$C5,$C5,$C5,$C5,$B2,$B3,$B4,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5,$C5
db $C5,$C5,$C5,$C5,$C5,$C5,$D2,$D3,$D4,$C5,$C5,$C5,$C5,$C5,$E0,$C5,$C5,$C5,$C5,$00
db $C5,$C5,$C5,$C5,$0E,$0F,$10,$11,$10,$13,$11,$11,$12,$11,$12,$10,$10,$CB,$12,$13
db $C5,$C5,$C5,$00,$2E,$2F,$30,$31,$32,$33,$4F,$14,$14,$14,$14,$14,$14,$EB,$4F,$14
db $C5,$C5,$C5,$C5,$4E,$4F,$50,$51,$52,$53,$14,$14,$15,$16,$17,$11,$11,$CC,$18,$12
db $C5,$C5,$C5,$C5,$6E,$6F,$70,$71,$72,$73,$37,$34,$35,$36,$37,$37,$37,$EC,$38,$38
db $F4,$E8,$F4,$F4,$F4,$F4,$DC,$E9,$F4,$DC,$EA,$CD,$E8,$D6,$D7,$D8,$D9,$DA,$DB,$DC
db $14,$14,$14,$14,$14,$4F,$4F,$4F,$14,$14,$14,$ED,$F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC
db $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
db $14,$14,$6F,$14,$14,$14,$14,$4F,$14,$14,$14,$14,$6F,$14,$14,$14,$14,$14,$14,$14

unk5_tiles10:
db 3, 3
db $92,$93,$94
db $95,$96,$97
db $B5,$B6,$B7

unk5_tiles11:
db 3, 3
db $1C,$1D,$1E
db $54,$55,$56
db $74,$75,$76

unk5_tiles12:
db 3, 3
db $1C,$1D,$1E
db $57,$58,$59
db $77,$78,$79

unk5_tiles13:
db 3, 3
db $1C,$1D,$1E
db $5A,$5B,$5C
db $7A,$7B,$7C

unk5_tiles14:
db 3, 3
db $39,$3A,$3B
db $54,$55,$56
db $74,$75,$76

unk5_tiles15:
db 3, 3
db $39,$3A,$3B
db $57,$58,$59
db $77,$78,$79

unk5_tiles16:
db 3, 3
db $39,$3A,$3B
db $5A,$5B,$5C
db $7A,$7B,$7C

unk5_tiles17:
db 3, 3
db $3C,$3D,$3E
db $54,$55,$56
db $74,$75,$76

unk5_tiles18:
db 3, 3
db $3C,$3D,$3E
db $57,$58,$59
db $77,$78,$79

unk5_tiles19:
db 3, 3
db $3C,$3D,$3E
db $5A,$5B,$5C
db $7A,$7B,$7C

unk5_tiles20:
db 20, 18
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $69,$6A,$6B,$FF,$65,$66,$67,$68,$69,$6A,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$65
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$65,$66
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$65,$66,$67,$68,$69,$FF,$FF,$FF,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF
db $67,$68,$69,$6A,$6B,$FF,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$FF,$65,$66,$67,$68
db $65,$66,$67,$68,$69,$6A,$6B,$FF,$FF,$FF,$FF,$65,$66,$67,$68,$69,$6A,$6B,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
db $63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63
db $83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83,$83

unk5_tiles21:
db 4, 7
db $FF,$FF,$FF,$FF
db $1C,$1D,$1E,$1F
db $3C,$3D,$3E,$3F
db $5C,$5D,$5E,$5F
db $7C,$7D,$7E,$7F
db $9C,$9D,$9E,$9F
db $BC,$BD,$BE,$BF

unk5_tiles22:
db 4, 7
db $FF,$FF,$FF,$FF
db $18,$19,$1A,$1B
db $38,$39,$3A,$3B
db $58,$59,$5A,$5B
db $78,$79,$7A,$7B
db $98,$99,$9A,$9B
db $B8,$B9,$BA,$BB

unk5_tiles23:
db 4, 7
db $D8,$D9,$DA,$DB
db $F8,$F9,$FA,$FB
db $DC,$DD,$DE,$DF
db $5C,$5D,$5E,$5F
db $7C,$7D,$7E,$7F
db $9C,$9D,$9E,$9F
db $BC,$BD,$BE,$BF

unk5_tilepointers2:
dw Cutscene_ImageTiles1
dw unk5_tiles8
dw unk5_tiles9
dw unk5_tiles10
dw unk5_tiles11
dw unk5_tiles12
dw unk5_tiles13
dw unk5_tiles14
dw unk5_tiles15
dw unk5_tiles16
dw unk5_tiles17
dw unk5_tiles18
dw unk5_tiles19
dw unk5_tiles20
dw unk5_tiles21
dw unk5_tiles22
dw unk5_tiles23

;do soundtest
Check_For_SoundTest:
    ld a, [soundtest_i]
    ld hl, Sound_Test_Inputs
    add l
    ld l, a
    ld a, h
    adc 0
    ld h, a
    ld d, [hl]
    ldh a, [INPUT_PRESS]
    cp d
    jp z, Jump_005_740c

    and a
    jp z, Jump_005_7427

    xor a
    ld [soundtest_i], a
    jr Jump_005_7427

Jump_005_740c:
    ld a, [soundtest_i]
    inc a
    ld [soundtest_i], a
    cp $08
    jp nz, Jump_005_7427

    ld a, $09
    ld [sceneState], a
    xor a
    ld [procState], a
    call Call_000_0a65
    or $01
    ret


Jump_005_7427:
    xor a
    ret

Sound_Test_Inputs:
    db PADF_UP
    db PADF_UP
    db PADF_RIGHT
    db PADF_RIGHT
    db PADF_DOWN
    db PADF_DOWN
    db PADF_LEFT
    db PADF_LEFT

jr_005_7431:
    ld a, [procState]
    ld de, .jumplist_default
    push de
    rst $00

    .jumplist:
    dw .jumplist_entry1
    dw .jumplist_entry2
    dw .jumplist_entry3
    dw $74CA
    dw $74D9
    .jumplist_default:
    ret

.jumplist_entry1:
    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

    ld a, [procState]
    inc a
    ld [procState], a
    ret

.jumplist_entry2:
    ld a, $10
    call Call_000_2e61
    jr z, .jr_005_7461

    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_7461:
    ret

.jumplist_entry3:
    ld hl, $cb2c
    res 1, [hl]
    bit 7, [hl]
    jr nz, jr_005_7489

    ld a, [$cb26]
    inc a
    cp $03
    jr nz, jr_005_7474

    xor a

jr_005_7474:
    ld [$cb26], a
    ld d, $00
    cp $00
    jr z, jr_005_7485

    ld d, $01
    cp $01
    jr z, jr_005_7485

    ld d, $06

jr_005_7485:
    ld a, d
    ld [currentStage], a

jr_005_7489:
    xor a
    ld [titleDemoTimer], a
    ld [$cb25], a
    ld [$cb29], a
    ld a, $00
    ld [holdTimer], a
    ld a, [$cb2c]
    bit 7, a
    jr z, jr_005_74a4

    ld hl, $d000
    jr jr_005_74b8

jr_005_74a4:
    ld hl, $6000
    ld a, [$cb26]
    cp $00
    jr z, jr_005_74b8

    ld hl, $6800
    cp $01
    jr z, jr_005_74b8

    ld hl, $7000

jr_005_74b8:
    ld a, h
    ld [$cb28], a
    ld a, l
    ld [$cb27], a
    ld a, $08
    ld [sceneState], a
    xor a
    ld [procState], a
    ret


    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $10
    call Call_000_2e61
    jr z, jr_005_752a

    ld a, [$cb2c]
    push af
    xor a
    ld [demoing], a
    ld [$c983], a
    ld [titleDemoTimer], a
    ld [$cb25], a
    ld [$cb2c], a
    call StartActorCleanup
    call Call_000_0619
    pop af
    bit 7, a
    jr z, jr_005_7521

    ld hl, currentStage
    inc [hl]
    ld a, $04
    ld [sceneState], a
    xor a
    ld [procState], a
    ld a, [currentStage]
    cp $08
    jr c, jr_005_752a

    call Call_000_0a65
    ld a, $05
    ld [sceneState], a
    xor a
    ld [procState], a
    jr jr_005_752a

jr_005_7521:
    ld a, $02
    ld [sceneState], a
    xor a
    ld [procState], a

jr_005_752a:
    ret


sceneState0_proc:
    ld a, [procState]
    ld de, .jumplist_default
    push de
    rst $00

    .jumplist:
    dw .jumpentry1
    dw .jumpentry2
    dw .jumpentry3
    dw .jumpentry4
    dw .jumpentry5
    dw .jumpentry6
    dw .jumpentry7
    .jumplist_default:
    ret

    .jumpentry1:
    ld a, 2
    ld [$cb26], a

    ;set procstate to 1
    ;i know what they are trying to do but isnt procstate always 0
    ld a, [procState]
    inc a
    ld [procState], a
    ;set procstate to 2
    ;what the fuck
    ld a, [procState]
    inc a
    ld [procState], a
    ;why????? shouldnt it be
    ;ld [procState], a
    ;less cycles AND less bytes. dude.

    ret

    .jumpentry2:
    ret

    .jumpentry3:
    LCDC_OFF

    ;set procState to 4
    ld a, [procState]
    inc a
    ld [procState], a

    ret

    .jumpentry4:
    ld a, $15 ;img
    ld [currentStage], a
    ;loads the image
    call Call_000_2d07

    ;draw bg
    ld de, _SCRN0
    ld hl, jss_logo_tiles
    call Draw_EntireScreenTiles

    ld a, PALFADE_LTN
    ld d, %111
    call Pal_Fade

    LCDC_ON

    ;set currentStage (timer) to $78
    ld a, $78
    ld [currentStage], a

    ;set procState to 5
    ld a, [procState]
    inc a
    ld [procState], a
    ret

    .jumpentry5:
    ld a, $10
    call Call_000_2e61
    jr z, .jr_005_75a2

    ;set procState to 6
    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_75a2:
    ret


    .jumpentry6:
    ;currentStage -= 1
    ld hl, currentStage
    dec [hl]
    ;skip if > 0
    jr nz, .jr_005_75b7

    ld a, PALFADE_NTL
    ld d, %111
    call Pal_Fade

    ;set procState to 7
    ld a, [procState]
    inc a
    ld [procState], a

    .jr_005_75b7:
    ret


    .jumpentry7:
    ld a, $10
    call Call_000_2e61
    jr z, .jr_005_75c8

    ;set sceneState to 2
    ld a, 2
    ld [sceneState], a

    ;reset procState
    xor a
    ld [procState], a

    .jr_005_75c8:
    ret

jss_logo_tiles:
    db 20, 18
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $ff, $ff, $ff, $ff
    db $ff, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $ff
    db $ff, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $ff
    db $ff, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $ff
    db $ff, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $ff
    db $ff, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $ff
    db $ff, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $ff
    db $ff, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $ff
    db $ff, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $ff
    db $ff, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $ff
    db $ff, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $ff
    db $ff, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

jss_logo_tiles_pointer:
    dw jss_logo_tiles
