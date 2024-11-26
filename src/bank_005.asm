SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

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
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
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
    call Call_000_03b2
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
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
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


    ld a, $05
    ld hl, $46b7
    call Call_000_08ae
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
    call Call_000_0aa6
    pop af
    pop hl
    ret


    ld a, $0c
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
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
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld hl, $4926
    ld de, $9800
    call Call_000_0756
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
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ret


    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $05
    ld hl, $46b7
    call Call_000_08ae
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
    call Call_000_0aa6
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
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld hl, $4a90
    ld de, $9800
    call Call_000_0756
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
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ret


    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $05
    ld hl, $46b7
    call Call_000_08ae
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
    ld a, $00
    ld d, $07
    call Call_000_2df8

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
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
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


    jr nz, jr_005_46f8

    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a

jr_005_46f8:
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    add $c7
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    xor [hl]
    xor a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    xor h
    xor l
    inc b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    dec b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$eaea], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$eaea], a
    ld [$0404], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    xor b
    xor c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    ret z

    ret


    inc d
    ld [de], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc d
    ld [de], a
    and e
    ld h, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    and e
    ld h, h
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld b, e
    ld b, e
    and e
    ld h, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    inc b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, b
    ld l, c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, b
    ld h, c
    ld h, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    add b
    add c
    add d
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    and c
    and d
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld b, h
    ld b, h
    ld b, h
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    inc b
    ld b, h
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    ld b, h
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    ld b, h
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    sub b
    sub c
    sub d
    sub e
    sub h
    sub h
    sub [hl]
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    or b
    or c
    or d
    or e
    or h
    or h
    or [hl]
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    call nc, $d7d6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    db $f4
    or $f7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    inc b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $3f
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp h
    cp l
    cp [hl]
    cp a
    inc b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_005_4c39

    ld a, [de]
    dec de
    jr c, jr_005_4c5d

    ld a, [hl-]
    dec sp
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    sbc b
    sbc c
    sbc d
    sbc e
    cp b
    cp c
    cp d
    cp e
    inc b
    rlca
    ret c

jr_005_4c39:
    reti


    jp c, $f8db

    ld sp, hl
    ld a, [$dcfb]
    db $dd
    sbc $df
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp h
    cp l
    cp [hl]
    cp a
    db $e4
    ld b, [hl]
    ld h, $49
    sub b
    ld c, d
    ld a, [$184b]

jr_005_4c5d:
    ld c, h
    ld [hl], $4c
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
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
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
    ld hl, $6a80
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_005_4cd5:
    ld de, $9800
    call Call_000_0756
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
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    sbc h
    sbc l
    sbc h
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
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
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ret


    call Call_005_524f
    ld bc, $c120
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ret


    call Call_005_524f
    ld bc, $c120
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    set 5, a
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ret


    ldh a, [INPUT_HOLD]
    and $09
    jp nz, Jump_005_50c7

    ld bc, $c120
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_50d5

Jump_005_50c7:
    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_50d5:
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
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
    ldh [$9b], a
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
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
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

    ldh a, [INPUT_HOLD]
    cp $82
    jr nz, jr_005_524e

    set 6, [hl]
    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_005_524e:
    ret


Call_005_524f:
    ldh a, [INPUT_HOLD]
    and $09
    jp z, Jump_005_525b

    ld hl, $cb2c
    set 5, [hl]

Jump_005_525b:
    ret


    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add hl, bc
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_5325

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    dec de
    rst $38
    rst $38
    rst $38

jr_005_5325:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    dec bc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_548f

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    call z, $ffcd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    inc e
    dec e
    rst $38
    rst $38

jr_005_548f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    dec c
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_55f9

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    adc $cf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    ld e, $ef
    rst $38
    rst $38

jr_005_55f9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    ret nc

    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_5763

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    ldh a, [$f1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    jp nc, $ffd3

    rst $38

jr_005_5763:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    ld a, [c]
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_58cd

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    call nc, $ffd5
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    db $f4
    push af
    rst $38
    rst $38

jr_005_58cd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    or [hl]
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_5a37

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    sub $d7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    or $f7
    rst $38
    rst $38

jr_005_5a37:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    cp b
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_5ba1

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    ret c

    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    ld hl, sp-$07
    rst $38
    rst $38

jr_005_5ba1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    cp d
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_005_5d0b

    ld [hl+], a
    inc hl
    inc h
    dec h
    add b
    add c
    add d
    add e
    rst $38
    jp c, $ffdb

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    and b
    and c
    and d
    and e
    rst $38
    ld a, [$fffb]
    rst $38

jr_005_5d0b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, c
    inc b
    dec b
    ld h, h
    ld h, l
    ld h, d
    ld h, e
    ld h, [hl]
    ld h, a
    ret nz

    pop bc
    ld h, d
    ld h, e
    jp nz, $ffc3

    rst $38
    rst $38
    rst $38
    add b
    add c
    inc h
    dec h
    add h
    add l
    add d
    add e
    add [hl]
    add a
    ldh [$e1], a
    add d
    add e
    ld [c], a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    and c
    ld b, h
    ld b, l
    and h
    and l
    and d
    and e
    and [hl]
    and a
    xor b
    xor c
    and d
    and e
    xor d
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    sub b
    sub c
    sub b
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $ffcd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub d
    sub e
    sub d
    sub e
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $cf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub l
    sub h
    sub l
    sub h
    sub l
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nc, $ffd3

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    sub [hl]
    sub a
    sub [hl]
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, $ffd5
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    or [hl]
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub $d7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    ld a, d
    ld a, e
    ld a, d
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    sbc d
    sbc e
    sbc d
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    sbc h
    sbc l
    sbc h
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    cp d
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $ffdb

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fffb]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    ld h, d
    ld h, e
    inc b
    dec b
    jp nz, $c7c3

    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    add d
    add e
    inc h
    dec h
    ld [c], a
    db $e3
    rst $20
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor a
    and d
    and e
    ld b, h
    ld b, l
    xor d
    xor e
    ret


    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    inc bc
    call nz, $e4c5
    push hl
    xor h
    xor l
    ld e, h
    ld d, d
    add $53
    jr nc, jr_005_6ac9

    sbc d
    ld d, [hl]
    inc b
    ld e, b
    ld l, [hl]
    ld e, c
    ret c

    ld e, d
    ld b, d
    ld e, h
    xor h
    ld e, l
    ld d, $5f
    add b
    ld h, b
    ld [$5461], a
    ld h, e
    cp [hl]
    ld h, h
    jr z, jr_005_6af2

    sub d
    ld h, a
    db $fc
    ld l, b
    ld h, [hl]
    ld l, d
    ld a, [procState]
    ld de, $6ac4
    push de
    rst $00
    push bc
    ld l, d
    ld [$116a], a
    ld l, e
    ld d, h
    ld l, e
    ld l, e
    ld l, e
    sbc e
    ld l, e
    cp b
    ld l, e
    ld c, [hl]
    ld l, h
    xor c
    ld l, h
    rst $00
    ld l, h
    ldh [$6c], a

StartCutscene_End_Ref::
    dw StartCutscene_End

    ld h, a
    ld l, l
    ld a, e
    ld l, l
    and d
    ld l, l
    rst $10
    ld l, l
    ei
    ld l, l
    ld h, $6e
    ld e, b
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    add d
    ld l, [hl]
    ret


    xor a
    ld [$c803], a

jr_005_6ac9:
    ld [$c804], a
    ld [$c984], a
    call StartActorCleanup
    call Call_000_0619
    xor a
    ld [$c983], a
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $12
    ld [currentStage], a
    call Call_000_2d07

jr_005_6af2:
    ld de, $9800
    ld hl, $6ea1
    call Call_000_0756
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $08
    call Call_000_2e61
    jr z, jr_005_6b53

    ld bc, $c120
    ld a, $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld a, $4a
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, $a8
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, $28
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $16
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $b4
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6b53:
    ret


    ld bc, $c120
    ld hl, $001f
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


    ld hl, $c81d
    bit 0, [hl]
    jr z, jr_005_6b6a

    ld bc, $c120
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $79
    jp nc, Jump_005_6b9a

    call StartActorCleanup
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a

    Jump_005_6b9a:
    ret


    ld de, $9800
    ld hl, $7031
    call Call_000_0756
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $78
    ld [$c13f], a
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld hl, $c13f
    dec [hl]
    jp nz, Jump_005_6c4d

    ld bc, actors+(1*ACTOR_sizeof)
    ld a, $24
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ld a, $c0
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ld a, $60
    ld hl, $0005
    add hl, bc
    ld [hl], a

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a

    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a

    ld a, $00
    ld hl, $000a
    add hl, bc
    ld [hl], a

    ld bc, actors+(2*ACTOR_sizeof)
    ld a, $24
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ld a, $d4
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ld a, $60
    ld hl, $0005
    add hl, bc
    ld [hl], a

    ld a, $18
    ld hl, $0007
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

    ld bc, actors+(3*ACTOR_sizeof)
    ld a, $24
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ld a, $e8
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ld a, $60
    ld hl, $0005
    add hl, bc
    ld [hl], a

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a

    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a

    ld a, $02
    ld hl, $000a
    add hl, bc
    ld [hl], a

    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_6c4d:
    ret


    ld bc, actors+(1*ACTOR_sizeof)
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld a, $0c
    call Call_000_34c1

    ld bc, actors+(2*ACTOR_sizeof)
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld a, $0c
    call Call_000_34c1

    ld bc, actors+(3*ACTOR_sizeof)
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld a, $0c
    call Call_000_34c1

    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $6d
    jp nc, Jump_005_6ca8

    ld a, $78
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld a, $4c
    ld [actors+(1*ACTOR_sizeof)+2], a

    ld a, $4f
    ld [actors+(2*ACTOR_sizeof)+2], a

    ld a, $52
    ld [actors+(3*ACTOR_sizeof)+2], a

    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_6ca8:
    ret


    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6cc6

    ld a, $78
    ld [hl], a
    ld hl, $98e6
    ld de, $719b
    call Call_000_244a
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6cc6:
    ret


    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6cdf

    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6cdf:
    ret


    ld a, $08
    call Call_000_2e61
    jr z, jr_005_6cfa

    ;cleanup previous actors
    call StartActorCleanup
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6cfa:
    ret


StartCutscene_End::
    ;this is more like the init func but hey im working on it
    ;presumably sets the music???? very strange
    ld a, $13
    ld [currentStage], a

    call Call_000_2d07

    ld de, $9800
    ld hl, $7209
    call Call_000_0756

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ld bc, actors+(1*ACTOR_sizeof)

    ;insert $04 at 0x0
    ld a, $04
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ;insert $40 at 0x4
    ld a, $40
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ;insert $90 at 0x5
    ld a, $90
    ld hl, $0005
    add hl, bc
    ld [hl], a

    ;insert $54 at 0x2
    ld a, $54 ; Charlie stand
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ;insert $78 at 0x1f
    ;sets the timer until he does a thumbs up
    ld a, $78
    ld hl, $001f
    add hl, bc
    ld [hl], a


    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ld bc, actors+(2*ACTOR_sizeof)

    ;insert $24 at 0x0
    ld a, $24
    ld hl, $0000
    add hl, bc
    ld [hl], a

    ;insert $70 at 0x4
    ld a, $70
    ld hl, $0004
    add hl, bc
    ld [hl], a

    ;insert $90 at 0x5
    ld a, $90
    ld hl, $0005
    add hl, bc
    ld [hl], a

    ;insert $01 at 0x2
    ld a, $01 ; Chalvo Stand
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, [procState]
    inc a
    ld [procState], a
    ret

    ;wait for fade in to finsih
    ld a, $08
    call Call_000_2e61
    jr z, jr_005_6d7a

    ;loop
    ld a, $1c
    call Call_000_0903
    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6d7a:
    ret


    call Call_005_73ef
    ret nz

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;loop until thumbs up timer is 0
    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6da1
    ;loop

    ;thumbs up
    ld a, $55
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;set the timer until chalvo turns around
    ld bc, actors+(2*ACTOR_sizeof)
    ld a, $5a
    ld hl, $001f
    add hl, bc
    ld [hl], a

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6da1:
    ret


    call Call_005_73ef
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
    jr z, jr_005_6dc2
    ;specifically at when the timer is $1e, put charlies thumb down
    cp $1e
    jr nz, jr_005_6dd6
    ;loop

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;put his thumb down
    ld bc, actors+(1*ACTOR_sizeof)
    ld a, $54
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ;go back to the loop
    jr jr_005_6dd6

jr_005_6dc2:
    ;flip chalvo around
    ld hl, $0000
    add hl, bc
    res 5, [hl]

    ;set jump timer
    ld a, $3c
    ld hl, $001f
    add hl, bc
    ld [hl], a

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6dd6:
    ret


    call Call_005_73ef
    ret nz

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;loop until jumptimer == 0
    ld bc, actors+(2*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6dfa
    ;loop

    ;set chavlo frame to jump
    ld a, ANIM_FRAME_Chalvo_Jump
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ;set time before actual launch
    ld a, $0c
    ld hl, $001f
    add hl, bc
    ld [hl], a

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6dfa:
    ret


    call Call_005_73ef
    ret nz

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ;loop until launch timer == 0
    ld bc, actors+(2*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6e25
    ;loop

    ;set chavlo frame to ballup
    ld a, ANIM_FRAME_Chalvo_BallUp
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ld a, $02
    ld hl, $0007
    add hl, bc
    ld [hl], a

    ld a, $10
    ld hl, $0006
    add hl, bc
    ld [hl], a

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6e25:
    ret


    call Call_005_73ef
    ret nz

    ;;;;;LOAD CHALVO
    ;load the actor array at index 1
    ld bc, actors+(2*ACTOR_sizeof)
    ld a, $01
    ld hl, $4000
    call Call_000_08ae

    ;loop until chalvo 0x5 > $d8 (when he reaches top (wrapping to the bottom))
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $d8
    jp c, Jump_005_6e57
    ;loop

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;make him look up
    ld bc, actors+(1*ACTOR_sizeof)
    ld a, $56
    ld hl, $0002
    add hl, bc
    ld [hl], a

    ;set a timer of (what is basically) $0100
    ;(it will decrement right before it gets checked, so)
    ld a, $00
    ld hl, $001f
    add hl, bc
    ld [hl], a

    ld a, [procState]
    inc a
    ld [procState], a

Jump_005_6e57:
    ret


    call Call_005_73ef
    ret nz

    ;;;;;LOAD CHARLIE
    ;load the actor array at index 0
    ;loop until timer runs out
    ld bc, actors+(1*ACTOR_sizeof)
    ld hl, $001f
    add hl, bc
    dec [hl]
    jr nz, jr_005_6e6d
    ;loop

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_6e6d:
    ret


    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, $10
    call Call_000_0a84
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $08
    call Call_000_2e61
    jr z, jr_005_6ea0

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

jr_005_6ea0:
    ret


    inc d
    ld [de], a
    and $00
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    ldh [$e6], a
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $00
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    ldh [$e6], a
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $01
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    and $e6
    ldh [$e6], a
    and $e6
    and $e6
    and $e6
    and $e6
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    and $e6
    and $e6
    and $e6
    and $00
    and $e6
    and $e6
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    and $e6
    and $e6
    ldh [$e6], a
    and $e6
    and $e6
    and $00
    and $e1
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $00
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    nop
    and $e6
    and $e6
    ldh [$e6], a
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    ldh [$e6], a
    and $e6
    and $e6
    and $e6
    and $e6
    and $06
    ld b, $08
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    jr z, jr_005_703e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    inc d
    ld [de], a
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    nop
    push bc
    push bc
    push bc

jr_005_703e:
    push bc
    push bc
    push bc
    push bc
    ldh [$c5], a
    push bc
    jp z, $c5f2

    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    nop
    push bc
    push bc
    push bc
    push bc
    push bc
    jp z, $c5f2

    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    jp z, $c5f2

    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    jp z, $c5f2

    nop
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    adc [hl]
    adc a
    sub b
    sub c
    push bc
    jp z, $c5f2

    push bc
    push bc
    push bc
    nop
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    xor [hl]
    xor a
    or b
    or c
    push bc
    jp z, $c5f3

    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    adc $cf
    ret nc

    pop de
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    sub d
    sub e
    sub h
    push bc
    push bc
    nop
    push bc
    xor $ef
    ldh a, [$f1]
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    or d
    or e
    or h
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    jp nc, $d4d3

    push bc
    push bc
    push bc
    push bc
    push bc
    ldh [$c5], a
    push bc
    push bc
    push bc
    nop
    push bc
    push bc
    push bc
    push bc
    ld c, $0f
    db $10
    ld de, $1310
    ld de, $1211
    ld de, $1012
    db $10
    rl d
    inc de
    push bc
    push bc
    push bc
    nop
    ld l, $2f
    jr nc, jr_005_7148

    ld [hl-], a
    inc sp
    ld c, a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    db $eb
    ld c, a
    inc d
    push bc
    push bc
    push bc
    push bc
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc d
    inc d
    dec d
    ld d, $17
    ld de, $cc11
    jr jr_005_7149

    push bc
    push bc
    push bc
    push bc
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    scf
    inc [hl]
    dec [hl]
    ld [hl], $37
    scf
    scf

jr_005_7148:
    db $ec

jr_005_7149:
    jr c, jr_005_7183

    db $f4
    add sp, -$0c
    db $f4
    db $f4
    db $f4
    call c, $f4e9
    call c, $cdea
    add sp, -$2a
    rst $10
    ret c

    reti


    jp c, $dcdb

    inc d
    inc d
    inc d
    inc d
    inc d
    ld c, a
    ld c, a
    ld c, a
    inc d
    inc d
    inc d
    db $ed
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_005_7183:
    rlca
    rlca
    rlca
    rlca
    inc d
    inc d
    ld l, a
    inc d
    inc d
    inc d
    inc d
    ld c, a
    inc d
    inc d
    inc d
    inc d
    ld l, a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc bc
    inc bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    or l
    or [hl]
    or a
    inc bc
    inc bc
    inc e
    dec e
    ld e, $54
    ld d, l
    ld d, [hl]
    ld [hl], h
    ld [hl], l
    db $76
    inc bc
    inc bc
    inc e
    dec e
    ld e, $57
    ld e, b
    ld e, c
    ld [hl], a
    ld a, b
    ld a, c
    inc bc
    inc bc
    inc e
    dec e
    ld e, $5a
    ld e, e
    ld e, h
    ld a, d
    ld a, e
    ld a, h
    inc bc
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld [hl], h
    ld [hl], l
    db $76
    inc bc
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, a
    ld e, b
    ld e, c
    ld [hl], a
    ld a, b
    ld a, c
    inc bc
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    ld e, d
    ld e, e
    ld e, h
    ld a, d
    ld a, e
    ld a, h
    inc bc
    inc bc
    inc a
    dec a
    ld a, $54
    ld d, l
    ld d, [hl]
    ld [hl], h
    ld [hl], l
    db $76
    inc bc
    inc bc
    inc a
    dec a
    ld a, $57
    ld e, b
    ld e, c
    ld [hl], a
    ld a, b
    ld a, c
    inc bc
    inc bc
    inc a
    dec a
    ld a, $5a
    ld e, e
    ld e, h
    ld a, d
    ld a, e
    ld a, h
    inc d
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    inc b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $3f
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp h
    cp l
    cp [hl]
    cp a
    inc b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_005_73b2

    ld a, [de]
    dec de
    jr c, jr_005_73d6

    ld a, [hl-]
    dec sp
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    sbc b
    sbc c
    sbc d
    sbc e
    cp b
    cp c
    cp d
    cp e
    inc b
    rlca
    ret c

jr_005_73b2:
    reti


    jp c, $f8db

    ld sp, hl
    ld a, [$dcfb]
    db $dd
    sbc $df
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp h
    cp l
    cp [hl]
    cp a
    and c
    ld l, [hl]
    dec bc
    ld [hl], b
    ld sp, $9b70
    ld [hl], c
    and [hl]

jr_005_73d6:
    ld [hl], c
    or c
    ld [hl], c
    cp h
    ld [hl], c
    rst $00
    ld [hl], c
    jp nc, $dd71

    ld [hl], c
    add sp, $71
    di
    ld [hl], c
    cp $71
    add hl, bc
    ld [hl], d
    ld [hl], e
    ld [hl], e
    sub c
    ld [hl], e
    xor a
    ld [hl], e

Call_005_73ef:
    ld a, [$c984]
    ld hl, $7429
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld d, [hl]
    ldh a, [INPUT_PRESS]
    cp d
    jp z, Jump_005_740c

    and a
    jp z, Jump_005_7427

    xor a
    ld [$c984], a
    jr jr_005_7427

Jump_005_740c:
    ld a, [$c984]
    inc a
    ld [$c984], a
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
jr_005_7427:
    xor a
    ret


    ld b, b
    ld b, b
    db $10
    db $10
    add b
    add b
    jr nz, @+$22

    ld a, [procState]
    ld de, $7443
    push de
    rst $00
    ld b, h
    ld [hl], h
    ld d, e
    ld [hl], h
    ld h, d
    ld [hl], h
    jp z, $d974

    ld [hl], h
    ret


    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $10
    call Call_000_2e61
    jr z, jr_005_7461

    ld a, [procState]
    inc a
    ld [procState], a

jr_005_7461:
    ret


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


    ld a, $00
    ld d, $07
    call Call_000_2df8
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
    ld de, $7541
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
    ret

    .jumpentry1:
    ld a, $02
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
    ld de, rLCDC
    ld a, [de]
    and $7f
    call Call_000_240e

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
    call Call_000_0756

    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld de, rLCDC
    ld a, [de]
    or $80
    ld [de], a

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

    ld a, $00
    ld d, $07
    call Call_000_2df8

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
