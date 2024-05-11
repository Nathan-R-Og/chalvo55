; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ret


    ld d, $1c
    ld bc, $c100

jr_002_4006:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_404f

    push de
    ld de, $404e
    push de
    rst $00
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, [hl]
    ld b, b
    ld e, l
    ld b, b
    ret


    ld [hl], l
    ld e, l
    ld b, b
    ld [c], a
    db $76
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld hl, $4d5f
    ld e, a
    ld l, a
    ld [hl], d
    add a
    ld [hl], e
    ret nz

    ld [hl], h
    ld h, a
    ld a, a
    add $6e
    and d
    ld l, l
    daa
    ld l, e
    ld e, l
    ld b, b
    sbc l
    ld l, c
    ld a, [hl+]
    ld l, b
    sub l
    ld h, l
    sbc $64
    ld [hl], e
    ld a, a
    add $61
    and c
    ld a, a
    ld h, c
    ld h, c
    pop de

jr_002_404f:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    dec d
    jr nz, jr_002_4006

    ld hl, $c81e
    inc [hl]
    ret


    ret


    ld a, [playerState]
    bit 1, a
    jr nz, jr_002_40a0

    bit 4, a
    jr nz, jr_002_40a0

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_407a

    call Call_002_429a
    call Call_002_40a1
    call Call_002_41b0

jr_002_407a:
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $40a0
    push de
    rst $00
    ld b, l
    ld b, e
    ld l, c
    ld b, e
    db $e4
    ld b, e
    ld e, l
    ld b, b
    ld l, h
    ld b, h
    ld b, d
    ld b, l
    adc l
    ld b, l
    ld e, l
    ld b, b
    sub l
    ld b, [hl]
    ld e, l
    ld b, b
    ld [$5d46], a
    ld b, b
    inc h
    ld b, a
    db $76
    ld b, a

jr_002_40a0:
    ret


Call_002_40a1:
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_002_41af

    cp $02
    jr z, jr_002_4128

    cp $03
    jp z, Jump_002_4133

    ld a, $10
    call Call_000_0903
    ld hl, $c983
    res 1, [hl]
    ld a, $08
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    set 0, [hl]
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld de, $c2e0
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $05
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $1a
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_4112

    ld a, $05
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    jp Jump_002_41a9


jr_002_4112:
    ld a, $07
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld hl, $0005
    add hl, de
    ld [hl], a
    jp Jump_002_41a9


jr_002_4128:
    ld hl, $000f
    add hl, bc
    ld [hl], $ce
    inc hl
    ld [hl], $f4
    jr jr_002_41a9

Jump_002_4133:
    ld hl, $c982
    set 2, [hl]
    ld hl, $c2e0
    res 2, [hl]
    ld hl, $c983
    res 1, [hl]
    ld a, $0c
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $000d
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, $0014
    add hl, bc
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $02
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    set 0, [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_418f

    ld hl, $0000
    add hl, bc
    bit 5, [hl]
    jr nz, jr_002_4186

    ld a, $09
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_002_41a9

jr_002_4186:
    ld a, $0a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_002_41a9

jr_002_418f:
    ld hl, $0000
    add hl, bc
    bit 5, [hl]
    jr nz, jr_002_41a0

    ld a, $07
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_002_41a9

jr_002_41a0:
    ld a, $08
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_002_41a9

Jump_002_41a9:
jr_002_41a9:
    xor a
    ld hl, $0013
    add hl, bc
    ld [hl], a

Jump_002_41af:
    ret


Call_002_41b0:
    ld hl, $0000
    add hl, bc
    bit 0, [hl]
    jp nz, Jump_002_4299

    ld hl, $001c
    add hl, bc
    res 3, [hl]
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld hl, $001c
    add hl, bc
    cp $06
    jp nc, Jump_002_41d1

    res 2, [hl]
    jr jr_002_41d3

Jump_002_41d1:
    set 2, [hl]

jr_002_41d3:
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    cp $04
    jp nc, Jump_002_423c

    call Call_002_4a2a
    jr nz, jr_002_420e

    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], $01
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld a, $02
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $000d
    add hl, bc
    ld [hl], a
    jp Jump_002_4299


jr_002_420e:
    ldh a, [$9b]
    bit 1, a
    jr z, jr_002_421e

    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    jp Jump_002_4299


jr_002_421e:
    ldh a, [$9c]
    bit 0, a
    jp z, Jump_002_4299

    ld a, $05
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $000d
    add hl, bc
    ld [hl], a
    jr jr_002_4299

Jump_002_423c:
    cp $06
    jp nz, Jump_002_4299

    ld hl, $001c
    add hl, bc
    ld a, [hl]
    bit 0, a
    jr nz, jr_002_4256

    ldh a, [$9c]
    bit 0, a
    jr z, jr_002_4299

    ld hl, $001c
    add hl, bc
    set 0, [hl]

jr_002_4256:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $28
    jp c, Jump_002_4289

    ld hl, $0002
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    xor a
    ld [hl], a
    dec hl
    ld [hl], a
    push de
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    res 1, [hl]
    call Call_002_4b4a
    pop de
    push af
    ld hl, $0002
    add hl, bc
    ld [hl], d
    inc hl
    ld [hl], e
    ld hl, $001c
    add hl, bc
    set 2, [hl]
    pop af
    jr nz, jr_002_4299

Jump_002_4289:
    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $05
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_002_4299

Jump_002_4299:
jr_002_4299:
    ret


Call_002_429a:
    ld hl, $001b
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_42bc

    dec a
    ld [hl], a
    jr z, jr_002_42b4

    and $03
    jr nz, jr_002_42bc

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    jr jr_002_42bc

jr_002_42b4:
    ld hl, $0000
    add hl, bc
    res 1, [hl]
    set 2, [hl]

jr_002_42bc:
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4305

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    dec [hl]
    jr nz, jr_002_42eb

    dec hl
    dec [hl]
    jr z, jr_002_42d5

    inc hl
    ld [hl], $3c
    jr jr_002_42eb

jr_002_42d5:
    ld hl, $0000
    add hl, bc
    res 4, [hl]
    ld hl, $c983
    bit 2, [hl]
    jr nz, jr_002_4305

    bit 0, [hl]
    jr nz, jr_002_4305

    call Call_000_27cc
    jr jr_002_4305

jr_002_42eb:
    ld hl, $0018
    add hl, bc
    ld a, [hl]
    cp $03
    jr nc, jr_002_4305

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and $03
    jr nz, jr_002_4305

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $10
    ld [hl], a

jr_002_4305:
    ld hl, $0017
    add hl, bc
    bit 0, [hl]
    jr z, jr_002_4319

    res 0, [hl]
    ld hl, $0004
    add hl, bc
    inc [hl]
    call Call_002_4870
    jr jr_002_432b

jr_002_4319:
    ld hl, $0017
    add hl, bc
    bit 1, [hl]
    jr z, jr_002_432b

    res 1, [hl]
    ld hl, $0004
    add hl, bc
    dec [hl]
    call Call_002_494c

jr_002_432b:
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4344

    ld hl, $0016
    add hl, bc
    ld a, [hl]
    dec [hl]
    jr nz, jr_002_4344

    dec hl
    dec [hl]
    jr z, jr_002_4344

    inc hl
    ld [hl], $3c
    jr jr_002_4344

jr_002_4344:
    ret


    ld a, $00
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $01
    call Call_000_34c1
    ld a, [playerState]
    bit 0, a
    jr z, jr_002_4368

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $50
    inc hl
    ld [hl], $00

jr_002_4368:
    ret


    ld hl, $c982
    res 2, [hl]
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ldh a, [$9b]
    bit 4, a
    jr z, jr_002_4394

    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    res 5, [hl]
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    call Call_002_47a1
    jr jr_002_43c2

jr_002_4394:
    bit 5, a
    jr z, jr_002_43b1

    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    set 5, [hl]
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    call Call_002_47a1
    jr jr_002_43c2

jr_002_43b1:
    ld a, $00
    ld hl, $000a
    add hl, bc
    ld [hl], a
    call Call_002_4bad
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr jr_002_43de

jr_002_43c2:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ldh a, [$9b]
    bit 4, a
    jr z, jr_002_43d5

    call Call_002_4870
    jr jr_002_43de

jr_002_43d5:
    bit 5, a
    jr z, jr_002_43de

    call Call_002_494c
    jr jr_002_43de

jr_002_43de:
    ld a, $01
    call Call_000_34c1
    ret


    ld a, $02
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ldh a, [$9b]
    bit 4, a
    jr z, jr_002_4407

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    res 5, [hl]
    ld a, $04
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_002_441f

jr_002_4407:
    bit 5, a
    jr z, jr_002_443b

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    set 5, [hl]
    ld a, $04
    ld hl, $000a
    add hl, bc
    ld [hl], a

jr_002_441f:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ldh a, [$9b]
    bit 4, a
    jr z, jr_002_4432

    call Call_002_5c66
    jr jr_002_4453

jr_002_4432:
    bit 5, a
    jr z, jr_002_4453

    call Call_002_5d50
    jr jr_002_4453

jr_002_443b:
    ld a, $06
    ld hl, $000a
    add hl, bc
    ld [hl], a
    call Call_002_4bad
    ld de, $c2e0
    xor a
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld hl, $0001
    add hl, de
    ld [hl], a

jr_002_4453:
    ld a, $01
    call Call_000_34c1
    ldh a, [$9b]
    bit 1, a
    jr nz, jr_002_446b

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0017
    add hl, bc
    res 2, [hl]

jr_002_446b:
    ret


    ld hl, $001d
    add hl, bc
    inc [hl]
    ldh a, [$9b]
    bit 4, a
    jr z, jr_002_447f

    ld hl, $0000
    add hl, bc
    res 5, [hl]
    jr jr_002_448b

jr_002_447f:
    bit 5, a
    jr z, jr_002_448b

    ld hl, $0000
    add hl, bc
    set 5, [hl]
    jr jr_002_448b

jr_002_448b:
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and $03
    jp nz, Jump_002_44a9

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_002_44a9

    bit 7, a
    jp nz, Jump_002_44a7

    dec a
    ld [hl], a
    jr jr_002_44a9

Jump_002_44a7:
    inc a
    ld [hl], a

Jump_002_44a9:
jr_002_44a9:
    call Call_002_4812
    jp z, Jump_002_453c

    push hl
    push af
    ld hl, $2102
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_002_453c

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
    jp nz, Jump_002_453c

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

Jump_002_453c:
    ld a, $01
    call Call_000_34c1
    ret


    call Call_002_4a2a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    call Call_002_5028
    push af
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    pop af
    jr z, jr_002_4569

    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $06
    jr nz, jr_002_4569

    ld hl, $001c
    add hl, de
    set 2, [hl]

jr_002_4569:
    ld a, $01
    call Call_000_34c1
    jr z, jr_002_458c

    ld a, $06
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld [hl], $ce
    inc hl
    ld [hl], $f4
    xor a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld hl, $001c
    add hl, bc
    res 0, [hl]

jr_002_458c:
    ret


    ld hl, $001c
    add hl, bc
    res 4, [hl]
    ld hl, $001d
    add hl, bc
    inc [hl]
    ldh a, [$9c]
    and $30
    jp z, Jump_002_45a5

    xor a
    ld hl, $001d
    add hl, bc
    ld [hl], a

Jump_002_45a5:
    ldh a, [$9b]
    bit 4, a
    jr z, jr_002_45c9

    ld hl, $0000
    add hl, bc
    res 5, [hl]
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and $01
    jp nz, Jump_002_4609

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    cp $06
    jp z, Jump_002_4609

    inc a
    ld [hl], a
    jr jr_002_4609

jr_002_45c9:
    bit 5, a
    jr z, jr_002_45eb

    ld hl, $0000
    add hl, bc
    set 5, [hl]
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and $01
    jp nz, Jump_002_4609

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    cp $fa
    jp z, Jump_002_4609

    dec a
    ld [hl], a
    jr jr_002_4609

jr_002_45eb:
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and $03
    jp nz, Jump_002_4609

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_002_4609

    bit 7, a
    jp nz, Jump_002_4607

    dec a
    ld [hl], a
    jr jr_002_4609

Jump_002_4607:
    inc a
    ld [hl], a

Jump_002_4609:
jr_002_4609:
    call Call_002_4c67
    jr z, jr_002_465e

    ld hl, $001c
    add hl, bc
    res 0, [hl]
    bit 4, [hl]
    jr z, jr_002_4623

    ld hl, $000f
    add hl, bc
    ld [hl], $00
    inc hl
    ld [hl], $ed
    jr jr_002_465e

jr_002_4623:
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4642

    push hl
    push af
    ld hl, $1db8
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld hl, $000f
    add hl, bc
    ld [hl], $00
    inc hl
    ld [hl], $ed
    jr jr_002_465e

jr_002_4642:
    ld hl, $cb2e
    bit 5, [hl]
    jr nz, jr_002_4655

    push hl
    push af
    ld hl, $2102
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_4655:
    ld hl, $000f
    add hl, bc
    ld [hl], $ce
    inc hl
    ld [hl], $f4

jr_002_465e:
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    bit 7, [hl]
    jr z, jr_002_4672

    ld hl, $0002
    add hl, bc
    ld [hl], $03
    inc hl
    ld [hl], $00
    jr jr_002_467b

jr_002_4672:
    ld hl, $0002
    add hl, bc
    ld [hl], $04
    inc hl
    ld [hl], $00

jr_002_467b:
    ret


    ld a, $01
    call Call_000_34c1
    jr z, jr_002_4694

    ld hl, $001a
    add hl, bc
    ld a, [hl]
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $78
    ld hl, $001b
    add hl, bc
    ld [hl], a

jr_002_4694:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $08
    jp nc, Jump_002_46c4

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $02
    ld [hl], a
    ld de, $c2e0
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_46bd

    sub $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    jr jr_002_46c4

jr_002_46bd:
    sub $18
    ld hl, $0005
    add hl, de
    ld [hl], a

Jump_002_46c4:
jr_002_46c4:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $40
    jp c, Jump_002_46e9

    ld a, $0a
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], $01
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $0009
    add hl, bc
    ld [hl], a

Jump_002_46e9:
    ret


    call Call_000_22e6
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld de, $c2e0
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_4706

    sub $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    jr jr_002_470d

jr_002_4706:
    sub $18
    ld hl, $0005
    add hl, de
    ld [hl], a

jr_002_470d:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $c8
    jp c, Jump_002_4723

    ld a, $09
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, playerState
    set 3, [hl]

Jump_002_4723:
    ret


    ld hl, $001f
    add hl, bc
    inc [hl]
    ld de, $c2e0
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld [$c823], a
    ld a, $01
    ld hl, $5ff7
    call Call_000_08ae
    ld a, [$c821]
    cp $02
    jp c, Jump_002_475c

    ld a, [$c81f]
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae

Jump_002_475c:
    ld a, $01
    call Call_000_34c1
    jr z, jr_002_4775

    ld a, $0d
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    res 2, [hl]
    ld hl, $c982
    res 2, [hl]

jr_002_4775:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $28
    jr z, jr_002_4787

    cp $8c
    jr z, jr_002_478e

    jr jr_002_47a0

jr_002_4787:
    ld a, $10
    call Call_000_0903
    jr jr_002_47a0

jr_002_478e:
    ld a, $09
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, playerState
    set 3, [hl]
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a

jr_002_47a0:
    ret


Call_002_47a1:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_4806

    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_002_4805

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
    jr nz, jr_002_47f0

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
    jr jr_002_4805

jr_002_47f0:
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

Jump_002_4805:
jr_002_4805:
    xor a

jr_002_4806:
    inc a
    cp $14
    jr nz, jr_002_480c

    xor a

jr_002_480c:
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ret


Call_002_4812:
    call Call_000_2365
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4829

    bit 7, a
    jr nz, jr_002_4826

    call Call_002_4870
    jr jr_002_4829

jr_002_4826:
    call Call_002_494c

jr_002_4829:
    call Call_000_2393
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    bit 7, [hl]
    jr z, jr_002_4865

    or [hl]
    jr z, jr_002_486e

    call Call_002_4b1f
    jr z, jr_002_486e

    cp $02
    jr z, jr_002_4850

    ld a, [$c827]
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    jr jr_002_485c

jr_002_4850:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    add $18
    ld hl, $0005
    add hl, bc
    ld [hl], a

jr_002_485c:
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    jr jr_002_486e

jr_002_4865:
    call Call_002_4a2a
    jr z, jr_002_486e

    or $01
    jr jr_002_486f

jr_002_486e:
    xor a

jr_002_486f:
    ret


Call_002_4870:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_494b

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_002_51b5
    call Call_002_5028
    jp nz, Jump_002_4919

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4906

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $20
    jp c, Jump_002_4904

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4906

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $28
    jp c, Jump_002_4904

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4906

Jump_002_4904:
    jr jr_002_494b

jr_002_4906:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld [hl], $00
    jr jr_002_494b

Jump_002_4919:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_4939

    ld hl, $001a
    add hl, de
    ld a, [hl]
    add $07
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    pop de
    sub d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_4945

Jump_002_4939:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    sub $0f
    ld hl, $0004
    add hl, bc
    ld [hl], a

jr_002_4945:
    ld hl, $000e
    add hl, bc
    ld [hl], $00

Jump_002_494b:
jr_002_494b:
    ret


Call_002_494c:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4a29

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_002_51b5
    call Call_002_5028
    jp nz, Jump_002_49f7

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_49e2

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $20
    jp c, Jump_002_49e0

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_49e2

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $28
    jp c, Jump_002_49e0

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_49e2

Jump_002_49e0:
    jr jr_002_4a29

jr_002_49e2:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld [hl], $00
    jr jr_002_4a29

Jump_002_49f7:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_4a17

    ld hl, $001a
    add hl, de
    ld a, [hl]
    add $07
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    pop de
    add d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_4a23

Jump_002_4a17:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add $0f
    ld hl, $0004
    add hl, bc
    ld [hl], a

jr_002_4a23:
    ld hl, $000e
    add hl, bc
    ld [hl], $00

Jump_002_4a29:
jr_002_4a29:
    ret


Call_002_4a2a:
    ld hl, $001c
    add hl, bc
    set 5, [hl]
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4abf

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_002_51b5
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4a77

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $06
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4ac2

Jump_002_4a77:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4abf

    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4ac2

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4abf

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4abf

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    call Call_002_5028
    push af
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    pop af
    jr nz, jr_002_4ad4

Jump_002_4abf:
    xor a
    jr jr_002_4b18

jr_002_4ac2:
    ld a, [$c827]
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    call SetCheckpointOnTouch
    or $01
    jr jr_002_4b18

jr_002_4ad4:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_4af8

    ld hl, $001c
    add hl, de
    set 2, [hl]
    ld hl, $001b
    add hl, de
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, de
    ld a, [hl]
    pop de
    sub d
    ld hl, $0005
    add hl, bc
    ld [hl], a
    jr jr_002_4b13

Jump_002_4af8:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $06
    jr nz, jr_002_4b13

    ld hl, $001c
    add hl, de
    set 2, [hl]

jr_002_4b13:
    call SetCheckpointOnTouch
    or $01

jr_002_4b18:
    ld hl, $001c
    add hl, bc
    res 5, [hl]
    ret


Call_002_4b1f:
    ld hl, $001c
    add hl, bc
    set 6, [hl]
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $28
    jp c, Jump_002_4b9b

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5

Call_002_4b4a:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4b70

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $06
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4b9e

Jump_002_4b70:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4b9b

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4b9e

    call Call_002_5028
    jr nz, jr_002_4ba3

Jump_002_4b9b:
    xor a
    jr jr_002_4ba6

jr_002_4b9e:
    ld a, $01
    and a
    jr jr_002_4ba6

jr_002_4ba3:
    ld a, $02
    and a

jr_002_4ba6:
    ld hl, $001c
    add hl, bc
    res 6, [hl]
    ret


Call_002_4bad:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $28
    jp c, Jump_002_4c5b

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4c14

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $05
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4c5e

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $05
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4c5e

Jump_002_4c14:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4c5b

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $06
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4c5e

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $06
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4c5e

    call Call_002_5028
    jr nz, jr_002_4c63

Jump_002_4c5b:
    xor a
    jr jr_002_4c66

jr_002_4c5e:
    ld a, $01
    and a
    jr jr_002_4c66

jr_002_4c63:
    ld a, $02
    and a

jr_002_4c66:
    ret


Call_002_4c67:
    call Call_000_2365
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4cb6

    bit 7, a
    jr nz, jr_002_4c97

    call Call_002_4cd5
    jp z, Jump_002_4cb6

    ld hl, $001c
    add hl, bc
    bit 3, [hl]
    jr nz, jr_002_4c8d

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    xor a
    ld [hl], a
    jr jr_002_4cb6

jr_002_4c8d:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    jr jr_002_4cb6

jr_002_4c97:
    call Call_002_4d8d
    jp z, Jump_002_4cb6

    ld hl, $001c
    add hl, bc
    bit 3, [hl]
    jr nz, jr_002_4cae

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    xor a
    ld [hl], a
    jr jr_002_4cb6

jr_002_4cae:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

Jump_002_4cb6:
jr_002_4cb6:
    call Call_000_2393
    ld hl, $000f
    add hl, bc
    ld a, [hl+]
    bit 7, [hl]
    jr z, jr_002_4cca

    or [hl]
    jr z, jr_002_4cd3

    call Call_002_4f7f
    jr jr_002_4cd3

jr_002_4cca:
    call Call_002_4e47
    jr z, jr_002_4cd3

    or $01
    jr jr_002_4cd4

jr_002_4cd3:
    xor a

jr_002_4cd4:
    ret


Call_002_4cd5:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4d4c

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_002_51b5
    call Call_002_50a2
    jr nz, jr_002_4d5e

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4d26

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4d4f

Jump_002_4d26:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $20
    jp c, Jump_002_4d4c

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4d4f

Jump_002_4d4c:
    xor a
    jr jr_002_4d8c

jr_002_4d4f:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    or $01
    jr jr_002_4d8c

jr_002_4d5e:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_4d7e

    ld hl, $001a
    add hl, de
    ld a, [hl]
    add $07
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    pop de
    sub d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_4d8a

Jump_002_4d7e:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    sub $0f
    ld hl, $0004
    add hl, bc
    ld [hl], a

jr_002_4d8a:
    or $01

jr_002_4d8c:
    ret


Call_002_4d8d:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4e04

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_002_51b5
    call Call_002_50a2
    jr nz, jr_002_4e18

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4dde

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4e07

Jump_002_4dde:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $20
    jp c, Jump_002_4e04

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4e07

Jump_002_4e04:
    xor a
    jr jr_002_4e46

jr_002_4e07:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    or $01
    jr jr_002_4e46

jr_002_4e18:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_4e38

    ld hl, $001a
    add hl, de
    ld a, [hl]
    add $07
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    pop de
    add d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_4e44

Jump_002_4e38:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add $0f
    ld hl, $0004
    add hl, bc
    ld [hl], a

jr_002_4e44:
    or $01

jr_002_4e46:
    ret


Call_002_4e47:
    ld hl, $001c
    add hl, bc
    set 5, [hl]
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4ee5

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_002_51b5
    ld hl, $001c
    add hl, bc
    bit 1, [hl]
    jr z, jr_002_4ea2

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4ea2

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4ec6

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    call Call_002_50a2
    push af
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    pop af
    jp nz, Jump_002_4f20

Jump_002_4ea2:
jr_002_4ea2:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4ec6

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $06
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4ee9

Jump_002_4ec6:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4ee5

    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4ee9

Jump_002_4ee5:
    xor a
    jp Jump_002_4f78


jr_002_4ee9:
    push hl
    ld hl, $001c
    add hl, bc
    bit 4, [hl]
    pop hl
    jr z, jr_002_4f0e

    ld a, [$c83e]
    ld d, a
    ld a, [$c83d]
    ld e, a
    xor a
    ld hl, $06d6
    call Call_000_0593
    push hl
    push af
    ld hl, $1d59
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl

jr_002_4f0e:
    ld a, [$c827]
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    call SetCheckpointOnTouch
    or $01
    jr jr_002_4f78

Jump_002_4f20:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_4f3e

    ld hl, $001b
    add hl, de
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, de
    ld a, [hl]
    pop de
    sub d
    ld hl, $0005
    add hl, bc
    ld [hl], a
    jr jr_002_4f73

Jump_002_4f3e:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld hl, $0002
    add hl, de
    ld a, [hl]
    cp $0b
    jr nz, jr_002_4f73

    ld hl, $001c
    add hl, bc
    set 4, [hl]
    ld a, $1b
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $001f
    add hl, de
    ld [hl], a
    push hl
    push af
    ld hl, $1d59
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl

jr_002_4f73:
    call SetCheckpointOnTouch
    or $01

Jump_002_4f78:
jr_002_4f78:
    ld hl, $001c
    add hl, bc
    res 5, [hl]
    ret


Call_002_4f7f:
    ld hl, $001c
    add hl, bc
    set 6, [hl]
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $20
    jp c, Jump_002_4ff1

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_4fcb

    add $06
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4ff4

Jump_002_4fcb:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_4ff1

    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_4ff4

    call Call_002_50a2
    jr nz, jr_002_500c

Jump_002_4ff1:
    xor a
    jr jr_002_5021

jr_002_4ff4:
    ld a, [$c827]
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    or $01
    jr jr_002_5021

jr_002_500c:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    add $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], a
    or $01

jr_002_5021:
    ld hl, $001c
    add hl, bc
    res 6, [hl]
    ret


Call_002_5028:
    ld a, [$c981]
    and a
    jr z, jr_002_504f

    ld de, $c200
    ld [$c81f], a

jr_002_5034:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_002_5041

    call Call_002_5064
    jr nz, jr_002_5061

Call_002_5041:
jr_002_5041:
    ld hl, $c81f
    dec [hl]
    jr z, jr_002_504f

    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    jr jr_002_5034

jr_002_504f:
    ld hl, $c983
    bit 0, [hl]
    jr z, jr_002_505e

    ld de, $c140
    call $3394
    jr nz, jr_002_5061

jr_002_505e:
    xor a
    jr jr_002_5063

jr_002_5061:
    or $01

jr_002_5063:
    ret


Call_002_5064:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_5078

    cpl
    inc a

jr_002_5078:
    cp $0f
    jr nc, jr_002_50a0

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_5098

    cpl
    inc a
    cp $10
    jr nc, jr_002_50a0

    or $01
    jr jr_002_50a1

jr_002_5098:
    cp $18
    jr nc, jr_002_50a0

    or $01
    jr jr_002_50a1

jr_002_50a0:
    xor a

jr_002_50a1:
    ret


Call_002_50a2:
    ld a, [$c981]
    and a
    jr z, jr_002_50c9

    ld de, $c200
    ld [$c81f], a

jr_002_50ae:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_002_50bb

    call Call_002_5156
    jr nz, jr_002_511d

jr_002_50bb:
    ld hl, $c81f
    dec [hl]
    jr z, jr_002_50c9

    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    jr jr_002_50ae

jr_002_50c9:
    ld hl, $c983
    bit 0, [hl]
    jr z, jr_002_511a

    ld a, [$c818]
    cp $08
    jr z, jr_002_50db

    bit 0, a
    jr z, jr_002_5112

jr_002_50db:
    ld de, $c140
    ld hl, $0000
    add hl, de
    bit 1, [hl]
    jr nz, jr_002_5112

    ld hl, $0018
    add hl, de
    ld a, [hl]
    ld hl, $0002
    add hl, de
    ld [hl], a
    call $3394
    jr z, jr_002_5108

    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld a, $01
    ld hl, $0013
    add hl, de
    ld [hl], a

jr_002_5108:
    ld hl, $0017
    add hl, de
    ld a, [hl]
    ld hl, $0002
    add hl, de
    ld [hl], a

jr_002_5112:
    ld de, $c140
    call $3394
    jr nz, jr_002_511d

jr_002_511a:
    xor a
    jr jr_002_511f

jr_002_511d:
    or $01

jr_002_511f:
    ret


Call_002_5120:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_5134

    cpl
    inc a

jr_002_5134:
    cp $10
    jr nc, jr_002_5154

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_514c

    cpl
    inc a

jr_002_514c:
    cp $10
    jr nc, jr_002_5154

    or $01
    jr jr_002_5155

jr_002_5154:
    xor a

jr_002_5155:
    ret


Call_002_5156:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_516a

    cpl
    inc a

jr_002_516a:
    cp $0f
    jr nc, jr_002_518a

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_5182

    cpl
    inc a

jr_002_5182:
    cp $10
    jr nc, jr_002_518a

    or $01
    jr jr_002_518b

jr_002_518a:
    xor a

jr_002_518b:
    ret


Call_002_518c:
    cp $00
    jr z, jr_002_51b3

    cp $0c
    jr z, jr_002_51b3

    cp $0d
    jr z, jr_002_51b3

    cp $30
    jr z, jr_002_51b3

    cp $2e
    jr z, jr_002_51b3

    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_51af

    cp $0a
    jr z, jr_002_51b3

Jump_002_51af:
    or $01
    jr jr_002_51b4

jr_002_51b3:
    xor a

jr_002_51b4:
    ret


Call_002_51b5:
    call Call_000_2692
    push af
    push hl
    ld hl, $001c
    add hl, bc
    bit 1, [hl]
    jp z, Jump_002_5b86

    cp $00
    jp z, Jump_002_5b86

    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_51dd

    push hl
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr nz, SwitchOnTileContact

Jump_002_51dd:
    res 1, [hl]

SwitchOnTileContact::
    pop hl
    pop af
    push af
    push hl
    cp $0c
    jp z, BlackHole

    cp $0b
    jp z, SpikeUp

    cp $1f
    jp z, SpikeDown

    cp $01
    jp z, LastHitBreakable

    cp $02
    jp z, FirstHitBreakable

    cp $09
    jp z, InvisibleGlass

    cp $08
    jp z, SpringBlock

    cp $0d
    jp z, WarpBox

    cp $11
    jp z, InvincibilityPickup

    cp $12
    jp z, UpBouncePickup

    cp $13
    jp z, DiamondPickup_SetFlag0

    cp $14
    jp z, DiamondPickup_SetFlag1

    cp $15
    jp z, DiamondPickup_SetFlag2

    cp $16
    jp z, DiamondPickup_SetFlag3

    cp $17
    jp z, DiamondPickup_SetFlag4

    cp $18
    jp z, GoalCard

    cp $1a
    jp z, GoalCardDupe

    cp $1c
    jp z, GoalWall

    cp $0a
    jp z, BounceBall

    cp $04
    jp z, ConveyorRight

    cp $1e
    jp z, ConveyorLeft

    cp $27
    jp z, LifePickup_SetFlag0

    cp $47
    jp z, LifePickup_SetFlag1

    cp $48
    jp z, LifePickup_SetFlag2

    cp $49
    jp z, LifePickup_SetFlag3

    cp $4a
    jp z, LifePickup_SetFlag4

    cp $4b
    jp z, LifePickup_SetFlag5

    cp $4c
    jp z, LifePickup_SetFlag6

    cp $4d
    jp z, LifePickup_SetFlag7

    cp $2d
    jp z, BossBlockTrigger

    cp $32
    jp z, BossAirTrigger

    cp $2a
    jp z, BossButtonLeft

    cp $2b
    jp z, BossButtonRight

    jp Jump_002_5b86


BlackHole::
    push hl
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 1, a
    pop hl
    jp nz, Jump_002_5b86

    push hl
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    pop hl
    jp nz, Jump_002_5b86

    call Call_000_0a65
    push hl
    push af
    ld hl, $1e6d
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_000_2db9
    ld a, h
    add $08
    ld [$c821], a
    ld a, l
    add $10
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jp nz, Jump_002_52c8

    add $04

Jump_002_52c8:
    ld [$c823], a
    ld de, $c2e0
    ld a, $0a
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, [$c821]
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [$c823]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $5ff7
    call Call_000_08ae
    ld a, [$c81f]
    ld hl, $0014
    add hl, bc
    ld [hl], a
    call Call_002_5f93
    ld a, $03
    ld hl, $0013
    add hl, bc
    ld [hl], a
    jp Jump_002_5b86


SpikeUp::
    ld hl, $001c
    add hl, bc
    ld a, [hl]
    bit 5, a
    jp z, Jump_002_5b86

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 1, a
    jp nz, Jump_002_5b86

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_002_5b86

    call Call_002_5f93
    jp Jump_002_5b86


SpikeDown::
    ld hl, $001c
    add hl, bc
    ld a, [hl]
    bit 6, a
    jp z, Jump_002_5b86

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 1, a
    jp nz, Jump_002_5b86

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_002_5b86

    call Call_002_5f93
    jp Jump_002_5b86


LastHitBreakable::
    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_5b86

    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    push hl
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_002_5393

    call Call_002_5fce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    jp Jump_002_5b8a


jr_002_5393:
    call Call_002_5fce
    push hl
    ld hl, $001c
    add hl, bc
    set 3, [hl]
    pop hl
    xor a
    ld d, h
    ld e, l
    call Call_000_2494
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    jp Jump_002_5b86


FirstHitBreakable::
    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_5b86

    push hl
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_002_5406

    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    call Call_002_5fce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    jp Jump_002_5b8a


jr_002_5406:
    push hl
    push af
    ld hl, $1e36
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    push hl
    ld hl, $001c
    add hl, bc
    set 3, [hl]
    pop hl
    ld a, $01
    ld d, h
    ld e, l
    call Call_000_2494
    call Call_000_2ddb
    ld a, $66
    ld d, h
    ld e, l
    call Call_000_240e
    ld a, $67
    inc de
    call Call_000_240e
    ld a, $86
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    ld a, $87
    inc de
    call Call_000_240e
    jp Jump_002_5b86


SpringBlock::
    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_5b86

    call Call_000_2ddb
    ld a, h
    ld [$c83e], a
    ld a, l
    ld [$c83d], a
    ld hl, $001c
    add hl, bc
    set 4, [hl]
    jp Jump_002_5b86


InvisibleGlass::
    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_5b86

    call Call_000_2ddb
    ld d, h
    ld e, l
    xor a
    ld hl, $0736
    call Call_000_0593
    push hl
    push af
    ld hl, $1f6f
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b86


WarpBox::
    ld hl, playerState
    set 2, [hl]
    ld hl, $0000
    add hl, bc
    set 2, [hl]
    jp Jump_002_5b86


InvincibilityPickup::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    jp nz, Jump_002_54c6

    ld a, $11
    call Call_000_0903

Jump_002_54c6:
    ld hl, $0019
    add hl, bc
    ld [hl], $3c
    dec hl
    ld [hl], $06
    ld hl, $0000
    add hl, bc
    set 4, [hl]
    jp Jump_002_5b8a


UpBouncePickup::
    call Call_002_5bce
    push hl
    push af
    ld hl, $1e4d
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $0016
    add hl, bc
    ld [hl], $3c
    dec hl
    ld [hl], $12
    jp Jump_002_5b8a


DiamondPickup_SetFlag0::
    call Call_002_5bce
    ld [hl], $00
    ld a, [$c976]
    call Call_000_0693
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelDiamondsBitFlag
    set 0, [hl]
    ld hl, diamonds
    inc [hl]
    push hl
    push af
    ld hl, $1ff4
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [diamonds]
    cp $05
    jp nz, Jump_002_5b8a

    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b8a


DiamondPickup_SetFlag1::
    call Call_002_5bce
    ld [hl], $00
    ld a, [$c976]
    call Call_000_0693
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelDiamondsBitFlag
    set 1, [hl]
    ld hl, diamonds
    inc [hl]
    push hl
    push af
    ld hl, $1ff4
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [diamonds]
    cp $05
    jp nz, Jump_002_5b8a

    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b8a


DiamondPickup_SetFlag2::
    call Call_002_5bce
    ld [hl], $00
    ld a, [$c976]
    call Call_000_0693
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelDiamondsBitFlag
    set 2, [hl]
    ld hl, diamonds
    inc [hl]
    push hl
    push af
    ld hl, $1ff4
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [diamonds]
    cp $05
    jp nz, Jump_002_5b8a

    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b8a


DiamondPickup_SetFlag3::
    call Call_002_5bce
    ld [hl], $00
    ld a, [$c976]
    call Call_000_0693
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelDiamondsBitFlag
    set 3, [hl]
    ld hl, diamonds
    inc [hl]
    push hl
    push af
    ld hl, $1ff4
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [diamonds]
    cp $05
    jp nz, Jump_002_5b8a

    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b8a


DiamondPickup_SetFlag4::
    call Call_002_5bce
    ld [hl], $00
    ld a, [$c976]
    call Call_000_0693
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelDiamondsBitFlag
    set 4, [hl]
    ld hl, diamonds
    inc [hl]
    push hl
    push af
    ld hl, $1ff4
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [diamonds]
    cp $05
    jp nz, Jump_002_5b8a

    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b8a


GoalCard::
    call Call_002_5bce
    call SetCheckpointOnTouch
    push hl
    push af
    ld hl, $1e4d
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    push bc
    ld hl, $c874
    ld b, $00

jr_002_56df:
    ld a, [hl+]
    cp $19
    jr z, jr_002_56ea

    cp $18
    jr z, jr_002_56ea

    jr jr_002_570c

jr_002_56ea:
    push hl
    push bc
    dec hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    pop bc
    pop hl

jr_002_570c:
    dec b
    jr nz, jr_002_56df

    pop bc
    jp Jump_002_5b8a


GoalCardDupe::
    call Call_002_5bce
    call SetCheckpointOnTouch
    push hl
    push af
    ld hl, $1e4d
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    push bc
    ld hl, $c874
    ld b, $00

jr_002_5748:
    ld a, [hl+]
    cp $1b
    jr z, jr_002_5753

    cp $1a
    jr z, jr_002_5753

    jr jr_002_5775

jr_002_5753:
    push hl
    push bc
    dec hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    pop bc
    pop hl

jr_002_5775:
    dec b
    jr nz, jr_002_5748

    pop bc
    jp Jump_002_5b8a


GoalWall::
    call Call_002_5bce
    call SetCheckpointOnTouch
    push hl
    push af
    ld hl, $1e4d
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    push bc
    ld hl, $c874
    ld b, $00

jr_002_57b1:
    ld a, [hl+]
    cp $1d
    jr z, jr_002_57bc

    cp $1c
    jr z, jr_002_57bc

    jr jr_002_57de

jr_002_57bc:
    push hl
    push bc
    dec hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    pop bc
    pop hl

jr_002_57de:
    dec b
    jr nz, jr_002_57b1

    pop bc
    jp Jump_002_5b8a


BounceBall::
    push hl
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    pop hl
    jp z, Jump_002_5b86

    push hl
    push af
    ld hl, $1eb6
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    push hl
    call Call_000_2ddb
    ld d, h
    ld e, l
    xor a
    ld hl, $06b6
    call Call_000_0593
    pop hl
    call Call_000_2db9
    ld a, [$c825]
    ld d, a
    ld a, [$c827]
    ld e, a
    push de
    ld a, h
    add $08
    ld [$c821], a
    ld a, l
    add $10
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jp nz, Jump_002_582a

    add $04

Jump_002_582a:
    ld [$c823], a
    ld a, $01
    ld hl, $5ff7
    call Call_000_08ae
    ld a, [$c81f]
    jr jr_002_5848

    ld a, [$c81f]
    dec a
    and $1f
    jr jr_002_5848

    ld a, [$c81f]
    inc a
    and $1f

jr_002_5848:
    add a
    ld de, $5b8e
    ld h, $00
    ld l, a
    add hl, de
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld hl, $000f
    add hl, bc
    ld a, $4c
    ld [hl+], a
    ld a, d
    ld [hl], a
    pop de
    ld a, e
    ld [$c827], a
    ld a, d
    ld [$c825], a
    jp Jump_002_5b86


ConveyorRight::
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jp nz, Jump_002_5b86

    bit 5, [hl]
    jp z, Jump_002_5b86

    ld hl, $0017
    add hl, bc
    set 0, [hl]
    ld hl, $c81d
    bit 0, [hl]
    jp nz, Jump_002_5b86

    push hl
    push af
    ld hl, $1f92
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b86


ConveyorLeft::
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jp nz, Jump_002_5b86

    bit 5, [hl]
    jp z, Jump_002_5b86

    ld hl, $0017
    add hl, bc
    set 1, [hl]
    ld hl, $c81d
    bit 0, [hl]
    jp nz, Jump_002_5b86

    push hl
    push af
    ld hl, $1f92
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5b86


LifePickup_SetFlag0::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 0, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag1::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 1, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag2::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 2, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag3::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 3, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag4::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 4, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag5::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 5, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag6::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 6, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


LifePickup_SetFlag7::
    call Call_002_5bce
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, levelLivesBitFlag
    set 7, [hl]
    push hl
    push af
    ld hl, $1f26
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [demoing]
    and a
    jp nz, Jump_002_5b8a

    ld hl, playerLives
    inc [hl]
    jp Jump_002_5b8a


BossBlockTrigger::
    xor a
    ld [$c81e], a
    ld hl, $0000
    add hl, bc
    set 2, [hl]
    call Call_000_0a65
    push bc
    ld hl, $c874
    ld b, $00

jr_002_5ace:
    ld a, [hl+]
    cp $30
    jr z, jr_002_5ad5

    jr jr_002_5afd

jr_002_5ad5:
    push hl
    push bc
    dec hl
    ld [hl], $03
    call Call_000_2ddb
    ld a, $a8
    ld d, h
    ld e, l
    call Call_000_240e
    ld a, $a9
    inc de
    call Call_000_240e
    ld a, $c8
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    ld a, $c9
    inc de
    call Call_000_240e
    pop bc
    pop hl

jr_002_5afd:
    dec b
    jr nz, jr_002_5ace

    pop bc
    ld hl, $c874
    ld d, $00

jr_002_5b06:
    ld a, [hl+]
    cp $32
    jr nz, jr_002_5b0f

    dec hl
    ld [hl], $00
    inc hl

jr_002_5b0f:
    dec d
    jr nz, jr_002_5b06

    ld de, $c100
    ld a, $01
    ld hl, $000a
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, bc
    res 5, [hl]
    ld hl, playerState
    set 4, [hl]
    ld hl, $0017
    add hl, bc
    set 3, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], $00
    jp Jump_002_5b8a


BossAirTrigger::
    xor a
    ld [$c81e], a
    ld hl, $0000
    add hl, bc
    set 2, [hl]
    call Call_000_0a65
    ld a, [$c818]
    cp $04
    jp z, BossBlockTrigger

    cp $06
    jp z, BossBlockTrigger

    cp $03
    jr z, jr_002_5b66

    cp $05
    jr z, jr_002_5b66

    cp $07
    jr z, jr_002_5b66

    cp $08
    jr z, jr_002_5b66

    ld hl, $0000
    add hl, bc
    res 5, [hl]

jr_002_5b66:
    ld a, $01
    ld [$c15e], a
    ld hl, playerState
    set 4, [hl]
    ld hl, $0017
    add hl, bc
    set 3, [hl]
    jp Jump_002_5b8a


BossButtonLeft::
    call Call_002_5bd7
    jp Jump_002_5b86


BossButtonRight::
    dec hl
    call Call_002_5bd7
    jp Jump_002_5b86


Jump_002_5b86:
    pop hl
    pop af
    jr Tile_DefaultCaseHandler

Jump_002_5b8a:
    pop hl
    pop af
    xor a

Tile_DefaultCaseHandler::
    ret


    rrca
    nop
    ld c, $fd
    dec c
    ei
    inc c
    ld a, [$f90b]
    add hl, bc
    ld hl, sp+$06
    rst $30
    inc bc
    or $00
    push af
    db $fd
    or $fa
    rst $30
    rst $30
    ld hl, sp-$0b
    ld sp, hl
    db $f4
    ld a, [$fbf3]
    ld a, [c]
    db $fd
    ldh a, [rP1]
    ld a, [c]
    inc bc
    di
    dec b
    db $f4
    ld b, $f5
    rlca
    rst $30
    ld [$09fa], sp
    db $fd
    ld a, [bc]
    nop
    dec bc
    inc bc
    ld a, [bc]
    ld b, $09
    add hl, bc
    ld [$070b], sp
    inc c
    ld b, $0d
    dec b
    ld c, $03

Call_002_5bce:
    push hl
    ld hl, $001c
    add hl, bc
    set 1, [hl]
    pop hl
    ret


Call_002_5bd7:
    ld a, [$c13c]
    bit 2, a
    jp z, Jump_002_5c65

    bit 5, a
    jp z, Jump_002_5c65

    ld a, [$c11e]
    cp $01
    jp z, Jump_002_5c65

    ld a, [$c15d]
    and a
    jp z, Jump_002_5c65

    call Call_000_2ddb
    ld de, $3e34
    call Call_000_244a
    push hl
    push af
    ld hl, $2171
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld de, $c100
    ld a, $01
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $78
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, [$c15d]
    dec a
    ld [$c15d], a
    jr z, jr_002_5c4b

    add a
    ld d, a
    add a
    add a
    add d
    ld hl, $3e3e
    add l
    ld e, a
    ld a, h
    adc $00
    ld d, a
    push de
    ld hl, $c874

jr_002_5c34:
    ld a, [hl+]
    cp $28
    jr nz, jr_002_5c34

    dec hl
    call Call_000_2ddb
    pop de
    call Call_000_244a
    ld a, $04
    ld de, $ff47
    call Call_000_240e
    jr jr_002_5c65

jr_002_5c4b:
    ld a, $78
    ld [$c11f], a
    ld a, $04
    ld de, $ff47
    call Call_000_240e
    ld hl, playerState
    set 4, [hl]
    ld a, $02
    ld [$c11e], a
    call Call_000_0a65

Jump_002_5c65:
jr_002_5c65:
    ret


Call_002_5c66:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_5d4f

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_002_51b5
    call Call_002_5028
    jr nz, jr_002_5cf7

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_5ce7

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_5ce7

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_5ce7

    jr jr_002_5d4f

jr_002_5ce7:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    call Call_002_5fb0
    jr jr_002_5d4f

jr_002_5cf7:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $04
    jr nz, jr_002_5d20

    ld hl, $001c
    add hl, de
    bit 0, [hl]
    jr nz, jr_002_5d20

    ld a, $08
    ld hl, $0014
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $0013
    add hl, de
    ld [hl], a
    call Call_002_5041
    jr nz, jr_002_5cf7

    call Call_002_5fb0
    jr jr_002_5d4f

jr_002_5d20:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_5d40

    ld hl, $001a
    add hl, de
    ld a, [hl]
    add $07
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    pop de
    sub d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_5d4c

Jump_002_5d40:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    sub $0f
    ld hl, $0004
    add hl, bc
    ld [hl], a

jr_002_5d4c:
    call Call_002_5fb0

Jump_002_5d4f:
jr_002_5d4f:
    ret


Call_002_5d50:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_5f20

    ld hl, $001c
    add hl, bc
    set 1, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_002_51b5
    call Call_002_5028
    jp nz, Jump_002_5ec8

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_5dd3

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_5dd3

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c823], a
    call Call_002_51b5
    call Call_002_518c
    jr nz, jr_002_5dd3

    jp Jump_002_5f20


jr_002_5dd3:
    cp $29
    jp nz, Jump_002_5eb6

    ld a, [$c818]
    cp $00
    jr z, jr_002_5def

    cp $02
    jr z, jr_002_5e2a

    cp $04
    jr z, jr_002_5e48

    cp $06
    jp z, Jump_002_5e7a

    jp Jump_002_5eb6


jr_002_5def:
    ld hl, $0017
    add hl, bc
    bit 2, [hl]
    jp nz, Jump_002_5eb6

    set 2, [hl]
    ld de, $c140
    ld hl, $001e
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_002_5e0c

    ld a, $01
    ld [hl], a
    call Call_000_27e7

jr_002_5e0c:
    ld de, $c140
    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $1f
    jp z, Jump_002_5eb6

    inc a
    ld [hl], a
    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_002_5eb6


jr_002_5e2a:
    ld de, $c140
    ld hl, $001d
    add hl, de
    ld a, [hl]
    and a
    jp nz, Jump_002_5eb6

    ld a, $01
    ld [hl], a
    call Call_000_27e7
    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_5e48:
    ld hl, $0017
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_5eb6

    set 2, [hl]
    ld de, $c140
    ld hl, $001e
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_002_5e63

    ld a, $01
    ld [hl], a
    call Call_000_27e7

jr_002_5e63:
    ld hl, $000e
    add hl, de
    ld a, [hl]
    cp $1f
    jr z, jr_002_5eb6

    inc a
    ld [hl], a
    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

Jump_002_5e7a:
    ld hl, $0017
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_5eb6

    set 2, [hl]
    ld de, $c200
    ld hl, $001e
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_002_5ea1

    ld a, $01
    ld [hl], a
    call Call_000_27e7
    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_5ea1:
    ld hl, $000e
    add hl, de
    ld a, [hl]
    dec a
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $1f
    jr z, jr_002_5eb6

    inc [hl]

Jump_002_5eb6:
jr_002_5eb6:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    call Call_002_5fb0
    jr jr_002_5f20

Jump_002_5ec8:
jr_002_5ec8:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $04
    jr nz, jr_002_5ef1

    ld hl, $001c
    add hl, de
    bit 0, [hl]
    jr nz, jr_002_5ef1

    ld a, $18
    ld hl, $0014
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $0013
    add hl, de
    ld [hl], a
    call Call_002_5041
    jr nz, jr_002_5ec8

    call Call_002_5fb0
    jr jr_002_5f20

jr_002_5ef1:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    cp $12
    jp c, Jump_002_5f11

    ld hl, $001a
    add hl, de
    ld a, [hl]
    add $07
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    pop de
    add d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_5f1d

Jump_002_5f11:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add $0f
    ld hl, $0004
    add hl, bc
    ld [hl], a

jr_002_5f1d:
    call Call_002_5fb0

Jump_002_5f20:
jr_002_5f20:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld a, $10
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    cp $10
    jr nz, jr_002_5f4c

    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_5f4c:
    ret


    ld a, [$c13e]
    cp $02
    jr nz, jr_002_5f8d

    ld de, $c120
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $2c
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $18
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld hl, $0000
    add hl, de
    bit 5, [hl]
    jr z, jr_002_5f80

    add $06
    jr jr_002_5f82

jr_002_5f80:
    sub $06

jr_002_5f82:
    ld hl, $0004
    add hl, bc
    ld [hl], a
    xor a
    call Call_000_34c1
    jr jr_002_5f92

jr_002_5f8d:
    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_5f92:
    ret


Call_002_5f93:
    ld hl, $0000
    add hl, bc
    set 1, [hl]
    ld a, $01
    ld hl, $0013
    add hl, bc
    ld [hl], a
    call SetCheckpointOnTouch
    ret


SetCheckpointOnTouch::
    ld a, [chalvoPosCheckpointX]
    and a
    jr nz, ReturnIfInvalidCheckpoint

    ld a, $ff
    ld [chalvoPosCheckpointX], a

ReturnIfInvalidCheckpoint::
    ret


Call_002_5fb0:
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
    ret


Call_002_5fce:
    push hl
    push bc
    call Call_000_2db9
    ld a, h
    ld [$c81f], a
    ld a, l
    ld [$c821], a
    ld de, $3e66
    ld hl, $001c
    add hl, bc
    bit 6, [hl]
    jr nz, jr_002_5ffc

    ld de, $3e72
    bit 5, [hl]
    jr nz, jr_002_5ffc

    ld de, $3e7e
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_002_5ffc

    ld de, $3e8a

jr_002_5ffc:
    ld b, d
    ld c, e
    ld de, $c300
    ld a, [$c31e]
    inc a
    cp $03
    jr nz, jr_002_600a

    xor a

jr_002_600a:
    ld [$c31e], a
    jr z, jr_002_6019

    ld de, $c380
    cp $01
    jr z, jr_002_6019

    ld de, $c400

jr_002_6019:
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $5a
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $1c
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, [$c81f]
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [$c821]
    add $08
    ld hl, $0005
    add hl, de
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000f
    add hl, de
    ld [hl], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $5a
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $1c
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, [$c81f]
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [$c821]
    ld hl, $0005
    add hl, de
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000f
    add hl, de
    ld [hl], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $5a
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $1c
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, [$c81f]
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [$c821]
    ld hl, $0005
    add hl, de
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000f
    add hl, de
    ld [hl], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $5a
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $1c
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, [$c81f]
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [$c821]
    add $08
    ld hl, $0005
    add hl, de
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld hl, $0011
    add hl, de
    ld [hl], $a0
    inc hl
    ld [hl], $00
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $000f
    add hl, de
    ld [hl], a
    pop bc
    pop hl
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    cp $1e
    jr z, jr_002_61c0

    ld [hl], a
    ld d, a
    cp $14
    jr c, jr_002_6179

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a

jr_002_6179:
    bit 0, d
    jr nz, jr_002_6184

    ld hl, $000e
    add hl, bc
    ld e, [hl]
    jr jr_002_6189

jr_002_6184:
    ld hl, $000f
    add hl, bc
    ld e, [hl]

jr_002_6189:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add e
    ld [hl], a
    bit 0, d
    jr nz, jr_002_61b6

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_61b1

    ld hl, $0006
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_61ad

    ld a, $10
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jr jr_002_61b6

jr_002_61ad:
    dec a
    ld [hl], a
    jr jr_002_61b6

jr_002_61b1:
    ld hl, $0006
    add hl, bc
    inc [hl]

jr_002_61b6:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    jr jr_002_61c5

jr_002_61c0:
    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_61c5:
    ret


    call Call_002_7ef7
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $61dd
    push de
    rst $00
    add sp, $61
    rst $30
    ld h, c
    and c
    ld h, d
    jr z, jr_002_623f

    ld a, [hl-]
    ld h, h
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ret


    ld hl, playerState
    bit 4, [hl]
    jr z, jr_002_61f6

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_61f6:
    ret


    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $0b
    call Call_000_34c1
    jr z, jr_002_627d

    call Call_000_27e7
    ld hl, playerState
    res 4, [hl]
    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, $c874
    ld d, $00

jr_002_622a:
    ld a, [hl+]
    cp $32
    jr nz, jr_002_6233

    dec hl
    ld [hl], $00
    inc hl

jr_002_6233:
    dec d
    jr nz, jr_002_622a

    push bc
    ld hl, $c874
    ld b, $00

jr_002_623c:
    ld a, [hl+]
    cp $30

jr_002_623f:
    jr z, jr_002_6243

    jr jr_002_626b

jr_002_6243:
    push hl
    push bc
    dec hl
    ld [hl], $03
    call Call_000_2ddb
    ld a, $a8
    ld d, h
    ld e, l
    call Call_000_240e
    ld a, $a9
    inc de
    call Call_000_240e
    ld a, $c8
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    ld a, $c9
    inc de
    call Call_000_240e
    pop bc
    pop hl

jr_002_626b:
    dec b
    jr nz, jr_002_623c

    pop bc
    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    jr jr_002_62a0

jr_002_627d:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_002_62a0

    ld hl, $001f
    add hl, bc
    ld [hl], a
    bit 0, a
    jr z, jr_002_62a0

    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_62a0:
    ret


    call Call_002_7f50
    ld a, $0b
    call Call_000_34c1
    jr z, jr_002_62b3

    ld hl, $0000
    add hl, bc
    res 1, [hl]
    set 2, [hl]

jr_002_62b3:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $47
    jr nz, jr_002_62c4

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a

jr_002_62c4:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ld a, [$c81e]
    and $1f
    jr nz, jr_002_62df

    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_002_62df

    inc [hl]

jr_002_62df:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0019
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jp z, Jump_002_6421

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6317

    call Call_002_7e16
    jr z, jr_002_6326

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jp Jump_002_6421


jr_002_6317:
    call Call_002_7e66
    jr z, jr_002_6326

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jp Jump_002_6421


jr_002_6326:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $18
    jr nz, jr_002_6396

    ld hl, $000e
    add hl, bc
    ld a, [hl]
    inc a
    and $3f
    ld [hl], a
    jr nz, jr_002_6396

    ld de, $c160
    ld a, $05
    call Call_000_26c7
    jr nz, jr_002_6396

    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $1b
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $000a
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $10
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld hl, $000f
    add hl, de
    ld [hl], $ce
    inc hl
    ld [hl], $f4
    ld a, $06
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld hl, $0011
    add hl, de
    ld [hl], $50
    inc hl
    ld [hl], $00
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_6396:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_63c6

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_63b7

    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    inc [hl]
    call Call_002_4870
    pop bc
    jp Jump_002_6421


jr_002_63b7:
    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    dec [hl]
    call Call_002_494c
    pop bc
    jr jr_002_6421

jr_002_63c6:
    ld de, $c120
    call $3394
    jr z, jr_002_6421

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_63f3

    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    inc [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_63ed

    call Call_002_4870
    jr jr_002_63f0

jr_002_63ed:
    call Call_002_4cd5

jr_002_63f0:
    pop bc
    jr jr_002_640f

jr_002_63f3:
    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    dec [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6409

    call Call_002_494c
    jr jr_002_640c

jr_002_6409:
    call Call_002_4d8d

jr_002_640c:
    pop bc
    jr jr_002_640f

jr_002_640f:
    ld de, $c120
    call $3394
    jr z, jr_002_6421

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    ld [hl], a

Jump_002_6421:
jr_002_6421:
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    ret


    call Call_002_7f50
    ld a, $0b
    call Call_000_34c1
    jr z, jr_002_6439

    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_6439:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $001d
    add hl, bc
    ld [hl], a
    and $0f
    jp nz, Jump_002_64dd

    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_002_64dd

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c81f], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c820], a
    push bc
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $0001
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $07
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_6492

    xor a
    sub h
    ld h, a

jr_002_6492:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c81f]
    add h
    ld hl, $0004
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $03
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_64af

    xor a
    sub h
    ld h, a

jr_002_64af:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c820]
    add h
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    pop bc
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_64dd

    ld hl, playerState
    set 6, [hl]

Jump_002_64dd:
jr_002_64dd:
    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $64ec
    push de
    rst $00
    rst $30
    ld h, h
    dec b
    ld h, l
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ret


    ld a, [$c15d]
    and a
    jr z, jr_002_6504

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_6504:
    ret


    ld a, [playerState]
    bit 4, a
    jr z, jr_002_651b

    xor a
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $0006
    add hl, bc
    ld [hl], a
    jr jr_002_6594

jr_002_651b:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp d
    jr nz, jr_002_6588

    ld [hl], $00
    ld de, $c160
    ld a, $05
    call Call_000_26c7
    jp nz, Jump_002_6594

    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $19
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $000a
    add hl, de
    ld [hl], a
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_6588:
    ld a, [$c15d]
    and a
    jr nz, jr_002_6594

    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a

Jump_002_6594:
jr_002_6594:
    ret


    call Call_002_7ef7
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $65ac
    push de
    rst $00
    or a
    ld h, l
    add $65
    ld [hl-], a
    ld h, [hl]
    ld [hl], h
    ld h, a
    add [hl]
    ld h, a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ret


    ld hl, playerState
    bit 4, [hl]
    jr z, jr_002_65c5

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_65c5:
    ret


    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $09
    call Call_000_34c1
    jr z, jr_002_660e

    call Call_000_27e7
    ld hl, playerState
    res 4, [hl]
    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $c874
    ld d, $00

jr_002_6600:
    ld a, [hl+]
    cp $32
    jr nz, jr_002_6609

    dec hl
    ld [hl], $00
    inc hl

jr_002_6609:
    dec d
    jr nz, jr_002_6600

    jr jr_002_6631

jr_002_660e:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_002_6631

    ld hl, $001f
    add hl, bc
    ld [hl], a
    bit 0, a
    jr z, jr_002_6631

    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_6631:
    ret


    call Call_002_7f50
    ld a, $09
    call Call_000_34c1
    jr z, jr_002_664b

    ld a, $03
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    res 1, [hl]
    set 2, [hl]

jr_002_664b:
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_665c

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a

jr_002_665c:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ld a, [$c81e]
    and $1f
    jr nz, jr_002_6677

    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_002_6677

    inc [hl]

jr_002_6677:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0019
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jp z, Jump_002_676d

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_66af

    call Call_002_7e16
    jr z, jr_002_66be

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jp Jump_002_676d


jr_002_66af:
    call Call_002_7e66
    jr z, jr_002_66be

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jp Jump_002_676d


jr_002_66be:
    ld hl, $0018
    add hl, bc
    ld a, [hl]
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld de, $c120
    call $3394
    ld hl, $0017
    add hl, bc
    ld a, [hl]
    ld hl, $0002
    add hl, bc
    ld [hl], a
    jr z, jr_002_66e2

    ld a, $01
    ld [$c133], a
    jp Jump_002_676d


jr_002_66e2:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_6712

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6703

    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    inc [hl]
    call Call_002_4870
    pop bc
    jp Jump_002_676d


jr_002_6703:
    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    dec [hl]
    call Call_002_494c
    pop bc
    jr jr_002_676d

jr_002_6712:
    ld de, $c120
    call $3394
    jr z, jr_002_676d

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_673f

    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    inc [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6739

    call Call_002_4870
    jr jr_002_673c

jr_002_6739:
    call Call_002_4cd5

jr_002_673c:
    pop bc
    jr jr_002_675b

jr_002_673f:
    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    dec [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6755

    call Call_002_494c
    jr jr_002_6758

jr_002_6755:
    call Call_002_4d8d

jr_002_6758:
    pop bc
    jr jr_002_675b

jr_002_675b:
    ld de, $c120
    call $3394
    jr z, jr_002_676d

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    ld [hl], a

Jump_002_676d:
jr_002_676d:
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    ret


    call Call_002_7f50
    ld a, $09
    call Call_000_34c1
    jr z, jr_002_6785

    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_6785:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $001d
    add hl, bc
    ld [hl], a
    and $0f
    jp nz, Jump_002_6829

    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_002_6829

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c81f], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c820], a
    push bc
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $0001
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $07
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_67de

    xor a
    sub h
    ld h, a

jr_002_67de:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c81f]
    add h
    ld hl, $0004
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $03
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_67fb

    xor a
    sub h
    ld h, a

jr_002_67fb:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c820]
    add h
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    pop bc
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_6829

    ld hl, playerState
    set 6, [hl]

Jump_002_6829:
jr_002_6829:
    ret


    ld a, [playerState]
    bit 4, a
    jr nz, jr_002_683f

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $683f
    push de
    rst $00
    ld b, b
    ld l, b
    ld c, h
    ld l, b

jr_002_683f:
    ret


    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $08
    call Call_000_34c1
    ret


    ld hl, $000a
    add hl, bc
    ld [hl], $01
    ld a, $08
    call Call_000_34c1
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp d
    jp nc, Jump_002_6878

    ld a, [$c81e]
    and $1f
    jr nz, jr_002_6878

    inc [hl]

Jump_002_6878:
jr_002_6878:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_68a7

    ld a, [$c803]
    ld e, a
    ld a, [$c124]
    add e
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add e
    cp d
    jr z, jr_002_68b8

    jr c, jr_002_68a7

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $18
    jr z, jr_002_68be

    ld [hl], $18
    ld hl, $0000
    add hl, bc
    set 5, [hl]
    jr jr_002_68b8

jr_002_68a7:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr z, jr_002_68be

    ld [hl], $08
    ld hl, $0000
    add hl, bc
    res 5, [hl]

jr_002_68b8:
    xor a
    ld hl, $0006
    add hl, bc
    ld [hl], a

jr_002_68be:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0019
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jp z, Jump_002_6996

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_68ef

    call Call_002_7e16
    jr z, jr_002_68f7

    jp Jump_002_6996


jr_002_68ef:
    call Call_002_7e66
    jr z, jr_002_68f7

    jp Jump_002_6996


jr_002_68f7:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_6931

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [$c124]
    add d
    ld [$c124], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6927

    push bc
    ld bc, $c120
    call Call_002_4870
    pop bc
    jp Jump_002_6996


jr_002_6927:
    push bc
    ld bc, $c120
    call Call_002_494c
    pop bc
    jr jr_002_6996

jr_002_6931:
    ld de, $c120
    call $3394
    jr z, jr_002_6996

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [$c124]
    add d
    ld [$c124], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_696d

    push bc
    ld bc, $c120
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6967

    call Call_002_4870
    jr jr_002_696a

jr_002_6967:
    call Call_002_4cd5

jr_002_696a:
    pop bc
    jr jr_002_6984

jr_002_696d:
    push bc
    ld bc, $c120
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_697e

    call Call_002_494c
    jr jr_002_6981

jr_002_697e:
    call Call_002_4d8d

jr_002_6981:
    pop bc
    jr jr_002_6984

jr_002_6984:
    ld de, $c120
    call $3394
    jr z, jr_002_6996

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    ld [hl], a

Jump_002_6996:
jr_002_6996:
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    ret


    call Call_002_7ef7
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $69b6
    push de
    rst $00
    pop bc
    ld l, c
    ret nc

    ld l, c
    jr nc, @+$6c

    ld d, h
    ld l, d
    ld l, h
    ld l, d
    ld b, $6b
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ret


    ld hl, playerState
    bit 4, [hl]
    jr z, jr_002_69cf

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_69cf:
    ret


    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $07
    call Call_000_34c1
    jr z, jr_002_6a18

    ld a, $04
    ld hl, $001d
    add hl, bc
    ld [hl], a
    call Call_000_27e7
    ld hl, playerState
    res 4, [hl]
    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, $c874
    ld d, $00

jr_002_6a0a:
    ld a, [hl+]
    cp $32
    jr nz, jr_002_6a13

    dec hl
    ld [hl], $00
    inc hl

jr_002_6a13:
    dec d
    jr nz, jr_002_6a0a

    jr jr_002_6a2f

jr_002_6a18:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_002_6a2f

    ld hl, $001f
    add hl, bc
    ld [hl], a
    bit 0, a
    jr z, jr_002_6a2f

jr_002_6a2f:
    ret


    call Call_002_7f50
    ld a, $07
    call Call_000_34c1
    jr z, jr_002_6a53

    ld hl, $0000
    add hl, bc
    res 1, [hl]
    set 2, [hl]
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $35
    jr nz, jr_002_6a53

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a

jr_002_6a53:
    ret


    call Call_002_7f50
    ld a, $07
    call Call_000_34c1
    jr z, jr_002_6a6b

    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0019
    add hl, bc
    ld [hl], $00

jr_002_6a6b:
    ret


    ld hl, $0019
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $0019
    add hl, bc
    ld [hl], a
    and $07
    jp nz, Jump_002_6b05

    ld de, $c160
    ld a, $05
    call Call_000_26c7
    jp nz, Jump_002_6b05

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $18
    ld [$c81f], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    add $10
    ld [$c820], a
    push bc
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $0001
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $07
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_6aba

    xor a
    sub h
    ld h, a

jr_002_6aba:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c81f]
    add h
    ld hl, $0004
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $03
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_6ad7

    xor a
    sub h
    ld h, a

jr_002_6ad7:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c820]
    add h
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    pop bc
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_6b05

    ld hl, playerState
    set 6, [hl]

Jump_002_6b05:
jr_002_6b05:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    and $7f
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr nz, jr_002_6b26

    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_6b26:
    ret


    call Call_002_7ef7
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $6b40
    push de
    rst $00
    ld c, e
    ld l, e
    ld e, d
    ld l, e
    cp a
    ld l, e
    bit 5, h
    db $dd
    ld l, h
    add c
    ld l, l
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $0017
    add hl, bc
    ld [hl], a
    ret


    ld hl, playerState
    bit 4, [hl]
    jr z, jr_002_6b59

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_6b59:
    ret


    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $06
    call Call_000_34c1
    jr z, jr_002_6b9b

    call Call_000_27e7
    ld hl, playerState
    res 4, [hl]
    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, $c874
    ld d, $00

jr_002_6b8d:
    ld a, [hl+]
    cp $32
    jr nz, jr_002_6b96

    dec hl
    ld [hl], $00
    inc hl

jr_002_6b96:
    dec d
    jr nz, jr_002_6b8d

    jr jr_002_6bbe

jr_002_6b9b:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_002_6bbe

    ld hl, $001f
    add hl, bc
    ld [hl], a
    bit 0, a
    jr z, jr_002_6bbe

    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_6bbe:
    ret


    call Call_002_7f50
    ld a, $06
    call Call_000_34c1
    jr z, jr_002_6bd1

    ld hl, $0000
    add hl, bc
    res 1, [hl]
    set 2, [hl]

jr_002_6bd1:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $2d
    jr nz, jr_002_6be2

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a

jr_002_6be2:
    ld a, [$c81e]
    and $1f
    jr nz, jr_002_6bf3

    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $04
    jr z, jr_002_6bf3

    inc [hl]

jr_002_6bf3:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0019
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jp z, Jump_002_6cc4

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6c2b

    call Call_002_7e16
    jr z, jr_002_6c3a

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jp Jump_002_6cc4


jr_002_6c2b:
    call Call_002_7e66
    jr z, jr_002_6c3a

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jp Jump_002_6cc4


jr_002_6c3a:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_6c69

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6c5a

    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    inc [hl]
    call Call_002_4870
    pop bc
    jr jr_002_6cc4

jr_002_6c5a:
    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    dec [hl]
    call Call_002_494c
    pop bc
    jr jr_002_6cc4

jr_002_6c69:
    ld de, $c120
    call $3394
    jr z, jr_002_6cc4

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6c96

    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    inc [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6c90

    call Call_002_4870
    jr jr_002_6c93

jr_002_6c90:
    call Call_002_4cd5

jr_002_6c93:
    pop bc
    jr jr_002_6cb2

jr_002_6c96:
    push bc
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    dec [hl]
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6cac

    call Call_002_494c
    jr jr_002_6caf

jr_002_6cac:
    call Call_002_4d8d

jr_002_6caf:
    pop bc
    jr jr_002_6cb2

jr_002_6cb2:
    ld de, $c120
    call $3394
    jr z, jr_002_6cc4

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    ld [hl], a

Jump_002_6cc4:
jr_002_6cc4:
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    ret


    call Call_002_7f50
    ld a, $06
    call Call_000_34c1
    jr z, jr_002_6cdc

    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_6cdc:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $001d
    add hl, bc
    ld [hl], a
    and $0f
    jp nz, Jump_002_6d80

    ld de, $c2a0
    ld a, $02
    call Call_000_26c7
    jp nz, Jump_002_6d80

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c81f], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c820], a
    push bc
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $0001
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $07
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_6d35

    xor a
    sub h
    ld h, a

jr_002_6d35:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c81f]
    add h
    ld hl, $0004
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $03
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_6d52

    xor a
    sub h
    ld h, a

jr_002_6d52:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c820]
    add h
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    pop bc
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_6d80

    ld hl, playerState
    set 6, [hl]

Jump_002_6d80:
jr_002_6d80:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    and $7f
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr nz, jr_002_6da1

    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_6da1:
    ret


    ld a, [playerState]
    bit 4, a
    jr nz, jr_002_6db7

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $6db7
    push de
    rst $00
    cp b
    ld l, l
    cp c
    ld l, l

jr_002_6db7:
    ret


    ret


    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $04
    jp nc, Jump_002_6dcb

    ld a, [$c81e]
    and $1f
    jr nz, jr_002_6dcb

    inc [hl]

Jump_002_6dcb:
jr_002_6dcb:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0019
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jp z, Jump_002_6ebf

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6e0a

    call Call_002_7e16
    jr z, jr_002_6e20

    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $25
    ld hl, $0002
    add hl, bc
    ld [hl], a
    jp Jump_002_6ebf


jr_002_6e0a:
    call Call_002_7e66
    jr z, jr_002_6e20

    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $26
    ld hl, $0002
    add hl, bc
    ld [hl], a
    jp Jump_002_6ebf


jr_002_6e20:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_6e5a

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [$c124]
    add d
    ld [$c124], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6e50

    push bc
    ld bc, $c120
    call Call_002_4870
    pop bc
    jp Jump_002_6ebf


jr_002_6e50:
    push bc
    ld bc, $c120
    call Call_002_494c
    pop bc
    jr jr_002_6ebf

jr_002_6e5a:
    ld de, $c120
    call $3394
    jr z, jr_002_6ebf

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [$c124]
    add d
    ld [$c124], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_6e96

    push bc
    ld bc, $c120
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6e90

    call Call_002_4870
    jr jr_002_6e93

jr_002_6e90:
    call Call_002_4cd5

jr_002_6e93:
    pop bc
    jr jr_002_6ead

jr_002_6e96:
    push bc
    ld bc, $c120
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_6ea7

    call Call_002_494c
    jr jr_002_6eaa

jr_002_6ea7:
    call Call_002_4d8d

jr_002_6eaa:
    pop bc
    jr jr_002_6ead

jr_002_6ead:
    ld de, $c120
    call $3394
    jr z, jr_002_6ebf

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    ld [hl], a

Jump_002_6ebf:
jr_002_6ebf:
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $6ee2
    push de
    rst $00
    db $e3
    ld l, [hl]
    and d
    ld l, a
    xor a
    ld l, a
    rst $00
    ld l, a
    ld [de], a
    ld [hl], b
    add hl, sp
    ld [hl], b
    adc c
    ld [hl], b
    cp c
    ld [hl], c
    ld a, [bc]
    ld [hl], d
    ret


    ld a, $05
    call Call_000_34c1
    jr z, jr_002_6f48

    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_002_6f8f

    xor a
    ld [hl], a
    call Call_000_27e7
    ld hl, playerState
    res 4, [hl]
    ld a, $04
    ld [$c15d], a
    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    push bc
    ld hl, $c874
    ld b, $00

jr_002_6f14:
    ld a, [hl+]
    cp $2d
    jr z, jr_002_6f1b

    jr jr_002_6f3d

jr_002_6f1b:
    push hl
    push bc
    dec hl
    ld [hl], $00
    call Call_000_2ddb
    ld a, $ff
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    call Call_000_240e
    inc de
    call Call_000_240e
    pop bc
    pop hl

jr_002_6f3d:
    dec b
    jr nz, jr_002_6f14

    pop bc
    ld a, $01
    ld [$c15e], a
    jr jr_002_6f8f

jr_002_6f48:
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_6f8f

    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_002_6f8f

    ld hl, $001f
    add hl, bc
    ld [hl], a
    bit 0, a
    jr z, jr_002_6f8f

    push hl
    push af
    ld hl, $2120
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld a, [$c818]
    cp $02
    jr nz, jr_002_6f8f

    ld hl, $000b
    add hl, bc
    ld a, [hl]
    cp $0b
    jr nz, jr_002_6f8f

    ld hl, $c88f
    call Call_000_2ddb
    ld de, $6f90
    call Call_000_244a

Jump_002_6f8f:
jr_002_6f8f:
    ret


    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld b, h
    ld b, l
    ld h, e
    add b
    ld h, h
    ld h, l
    add e
    and b
    and c
    and d
    and e
    call Call_002_7eb8
    jr z, jr_002_6fae

    ld a, $00
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_6fae:
    ret


    call Call_002_7eb8
    ld a, [$c803]
    ld hl, $001a
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, playerState
    set 5, [hl]
    ret


    call Call_002_7eb8
    ld a, [$c803]
    cp $60
    jr z, jr_002_7003

    inc a
    ld [$c803], a
    push bc
    ld a, $1c
    ld [$c82d], a
    ld bc, $c100

jr_002_6fde:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_6ff4

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 3, a
    jr z, jr_002_6ff4

    ld hl, $0004
    add hl, bc
    dec [hl]

jr_002_6ff4:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $c82d
    dec [hl]
    jr nz, jr_002_6fde

    pop bc
    jr jr_002_7011

jr_002_7003:
    ld a, $04
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $02
    ld hl, $000a
    add hl, bc
    ld [hl], a

jr_002_7011:
    ret


    call Call_002_7eb8
    ld a, $05
    call Call_000_34c1
    jr z, jr_002_7038

    ld a, $05
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, bc
    ld [hl], a

jr_002_7038:
    ret


    call Call_002_7eb8
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $b4
    jp nc, Jump_002_705b

    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0000
    add hl, bc
    res 5, [hl]
    ld a, $05
    call Call_000_34c1
    jr jr_002_7088

Jump_002_705b:
    xor a
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ld hl, $c874

jr_002_7064:
    ld a, [hl+]
    cp $28
    jr nz, jr_002_7064

    call Call_000_2db9
    ld a, h
    ld d, l
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, d
    add $08
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, $06
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001d
    add hl, bc
    ld [hl], a

jr_002_7088:
    ret


    ld hl, $001d
    add hl, bc
    ld a, [hl]
    inc a
    ld hl, $001d
    add hl, bc
    ld [hl], a
    and $07
    jp nz, Jump_002_717e

    ld de, $c160
    ld a, $05
    call Call_000_26c7
    jp nz, Jump_002_717e

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c81f], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c820], a
    push bc
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $0001
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $03
    ld h, a
    call Call_000_24cd
    bit 0, a
    jr z, jr_002_70d3

    xor a
    sub h
    ld h, a

jr_002_70d3:
    ld a, h
    add a
    add a
    ld h, a
    ld a, [$c81f]
    add h
    ld hl, $0004
    add hl, de
    ld [hl], a
    call Call_000_24cd
    and $07
    sub $04
    ld h, a
    ld a, [$c820]
    add h
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000a
    add hl, de
    ld [hl], a
    pop bc
    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_717e

    ld hl, $c874

jr_002_7110:
    ld a, [hl+]
    cp $28
    jr nz, jr_002_7110

    dec hl
    xor a
    ld [hl+], a
    ld [hl], a
    dec hl
    call Call_000_2ddb
    ld de, $3e3e
    call Call_000_244a
    ld a, [$c818]
    cp $02
    jr z, jr_002_7130

    cp $06
    jr z, jr_002_7153

    jr jr_002_7177

jr_002_7130:
    ld hl, $c874

jr_002_7133:
    ld a, [hl+]
    cp $38
    jr nz, jr_002_7133

    dec hl
    push hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld d, a
    ld e, $0d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    call Call_000_2ddb
    ld de, $717f
    call Call_000_244a
    jr jr_002_7177

jr_002_7153:
    ld hl, $c890
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c8a1
    ld [hl+], a
    ld [hl], a
    ld hl, $c890
    call Call_000_2ddb
    ld de, $71a1
    call Call_000_244a
    ld hl, $c8a1
    call Call_000_2ddb
    ld de, $71af
    call Call_000_244a

jr_002_7177:
    ld a, $07
    ld hl, $001e
    add hl, bc
    ld [hl], a

Jump_002_717e:
jr_002_717e:
    ret


    ld [$ff04], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $02
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $001a
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c803]
    cp d
    jr z, jr_002_71f7

    dec a
    ld [$c803], a
    push bc
    ld a, $1c
    ld [$c82d], a
    ld bc, $c100

jr_002_71d2:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_71e8

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 3, a
    jr z, jr_002_71e8

    ld hl, $0004
    add hl, bc
    inc [hl]

jr_002_71e8:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $c82d
    dec [hl]
    jr nz, jr_002_71d2

    pop bc
    jr jr_002_7209

jr_002_71f7:
    ld a, $08
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, playerState
    res 5, [hl]

jr_002_7209:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_7245

    push bc
    ld hl, $c874
    ld b, $00
    ld c, b

jr_002_7219:
    ld a, [hl+]
    cp $2e
    jr nz, jr_002_722e

    ld c, $01
    push hl
    dec hl
    ld [hl], $03
    call Call_000_2ddb
    ld de, $7269
    call Call_000_244a
    pop hl

jr_002_722e:
    dec b
    jr nz, jr_002_7219

    ld a, c
    and a
    jr z, jr_002_7241

    push hl
    push af
    ld hl, $2132
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_7241:
    pop bc
    and a
    jr z, jr_002_7250

jr_002_7245:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    and $3f
    ld [hl], a
    jr nz, jr_002_7268

jr_002_7250:
    ld hl, $c983
    set 1, [hl]
    ld hl, playerState
    res 4, [hl]
    xor a
    ld [$c15e], a
    ld a, $03
    ld [$c146], a
    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_7268:
    ret


    ld [bc], a
    ld [bc], a
    xor b
    xor c
    ret z

    ret


    call Call_002_7a73
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $7284
    push de
    rst $00
    rst $08
    ld [hl], d
    ei
    ld [hl], d
    ld a, [hl-]
    ld [hl], e
    ld h, h
    ld [hl], e
    call Call_002_7c25
    jr z, jr_002_72ce

    ld hl, $0019
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_002_72a0

    ld hl, $001c
    add hl, de
    bit 2, [hl]
    jr z, jr_002_72c2

    ld a, $02
    ld hl, $0013
    add hl, de
    ld [hl], a

jr_002_72a0:
    push hl
    push af
    ld hl, $1d7b
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, $13
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr jr_002_72ce

jr_002_72c2:
    ld a, $01
    ld hl, $0013
    add hl, de
    ld [hl], a
    call SetCheckpointOnTouch
    jr jr_002_72ce

jr_002_72ce:
    ret


    ld a, [playerState]
    bit 0, a
    jr z, jr_002_72fa

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $50
    inc hl
    ld [hl], $00
    xor a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_002_72fa:
    ret


    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_7313

    call Call_002_7a9d
    jr z, jr_002_732e

    jr jr_002_7318

jr_002_7313:
    call Call_002_7b21
    jr z, jr_002_732e

jr_002_7318:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    add $10
    and $1f
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $20
    ld [hl], a

jr_002_732e:
    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $02
    call Call_000_34c1
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    ld e, a
    push de
    call Call_000_22e6
    pop de
    ld a, d
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, e
    ld hl, $0006
    add hl, bc
    ld [hl], a
    call Call_002_7ba7
    jr z, jr_002_7363

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_7363:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $3c
    jp c, Jump_002_7386

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $78
    jr nz, jr_002_7386

    ld h, b
    ld l, c
    call Call_000_26e3

Jump_002_7386:
jr_002_7386:
    ret


    call Call_002_7a73
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $739c
    push de
    rst $00
    or $73
    ld [hl+], a
    ld [hl], h
    ld h, c
    ld [hl], h
    adc e
    ld [hl], h
    call Call_002_7c25
    jr z, jr_002_73f5

    ld hl, $0019
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_002_73c1

    ld hl, $001c
    add hl, de
    bit 2, [hl]
    jr z, jr_002_73e9

    ld a, $02
    ld hl, $0013
    add hl, de
    ld [hl], a
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    jr jr_002_73c7

jr_002_73c1:
    xor a
    ld hl, $001d
    add hl, bc
    ld [hl], a

jr_002_73c7:
    push hl
    push af
    ld hl, $1d7b
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, $16
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr jr_002_73f5

jr_002_73e9:
    ld a, $01
    ld hl, $0013
    add hl, de
    ld [hl], a
    call SetCheckpointOnTouch
    jr jr_002_73f5

jr_002_73f5:
    ret


    ld a, [playerState]
    bit 0, a
    jr z, jr_002_7421

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $50
    inc hl
    ld [hl], $00
    xor a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_002_7421:
    ret


    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_743a

    call Call_002_7a9d
    jr z, jr_002_7455

    jr jr_002_743f

jr_002_743a:
    call Call_002_7b21
    jr z, jr_002_7455

jr_002_743f:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    add $10
    and $1f
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $20
    ld [hl], a

jr_002_7455:
    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $03
    call Call_000_34c1
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    ld e, a
    push de
    call Call_000_22e6
    pop de
    ld a, d
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, e
    ld hl, $0006
    add hl, bc
    ld [hl], a
    call Call_002_7ba7
    jr z, jr_002_748a

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_748a:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $3c
    jp c, Jump_002_74bf

    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_74a9

    ld [hl], a
    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    jr jr_002_74bf

jr_002_74a9:
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $78
    jr nz, jr_002_74bf

    ld h, b
    ld l, c
    call Call_000_26e3

Jump_002_74bf:
jr_002_74bf:
    ret


    call Call_002_7a73
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $74d5
    push de
    rst $00
    ld de, $3d75
    ld [hl], l
    ld a, h
    ld [hl], l
    and [hl]
    ld [hl], l
    call Call_002_7c25
    jr z, jr_002_7510

    ld hl, $0019
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_002_7504

    push hl
    push af
    ld hl, $1d7b
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, $19
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, $03
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr jr_002_7510

jr_002_7504:
    ld a, $01
    ld hl, $0013
    add hl, de
    ld [hl], a
    call SetCheckpointOnTouch
    jr jr_002_7510

jr_002_7510:
    ret


    ld a, [playerState]
    bit 0, a
    jr z, jr_002_753c

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $50
    inc hl
    ld [hl], $00
    xor a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_002_753c:
    ret


    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_7555

    call Call_002_7a9d
    jr z, jr_002_7570

    jr jr_002_755a

jr_002_7555:
    call Call_002_7b21
    jr z, jr_002_7570

jr_002_755a:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    add $10
    and $1f
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $20
    ld [hl], a

jr_002_7570:
    xor a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $04
    call Call_000_34c1
    ret


    ld hl, $0007
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    ld e, a
    push de
    call Call_000_22e6
    pop de
    ld a, d
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, e
    ld hl, $0006
    add hl, bc
    ld [hl], a
    call Call_002_7ba7
    jr z, jr_002_75a5

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_75a5:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $3c
    jp c, Jump_002_75c8

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $78
    jr nz, jr_002_75c8

    ld h, b
    ld l, c
    call Call_000_26e3

Jump_002_75c8:
jr_002_75c8:
    ret


    ld hl, $001c
    add hl, bc
    res 1, [hl]
    call Call_002_78c8
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $75e4
    push de
    rst $00
    push hl
    ld [hl], l
    inc bc
    db $76
    xor [hl]
    db $76
    ret


    db $76
    ret


    ld a, [playerState]
    bit 0, a
    jr z, jr_002_7602

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $50
    inc hl
    ld [hl], $00
    xor a
    ld hl, $000e
    add hl, bc
    ld [hl], a

jr_002_7602:
    ret


    ld hl, $001f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_7616

    dec a
    ld [hl], a
    jr nz, jr_002_7616

    ld a, $0b
    ld hl, $0002
    add hl, bc
    ld [hl], a

jr_002_7616:
    ld hl, $001c
    add hl, bc
    res 0, [hl]
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_002_76a7

    cp $01
    jr nz, jr_002_762f

    ld hl, $001c
    add hl, bc
    set 1, [hl]

jr_002_762f:
    ld hl, $0014
    add hl, bc
    ld a, [hl]
    ld hl, $0007
    add hl, bc
    ld [hl], a
    cp $08
    jr nz, jr_002_7667

    ld hl, $0004
    add hl, bc
    inc [hl]
    call Call_002_7d08
    jp nz, Jump_002_76a7

    call Call_002_78f2
    jr z, jr_002_7690

    ld hl, $0013
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_76a7

    ld de, $c120
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $0f
    ld hl, $0004
    add hl, de
    ld [hl], a
    jr jr_002_76a7

jr_002_7667:
    ld hl, $0004
    add hl, bc
    dec [hl]
    call Call_002_7d4d
    jr nz, jr_002_76a7

    call Call_002_7957
    jr z, jr_002_7690

    ld hl, $0013
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_76a7

    ld de, $c120
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $0f
    ld hl, $0004
    add hl, de
    ld [hl], a
    jr jr_002_76a7

jr_002_7690:
    call Call_002_7cb2
    ld hl, $001c
    add hl, bc
    bit 1, [hl]
    jr z, jr_002_76a7

    push hl
    push af
    ld hl, $1fad
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

Jump_002_76a7:
jr_002_76a7:
    xor a
    ld hl, $0013
    add hl, bc
    ld [hl], a
    ret


    ld hl, $001c
    add hl, bc
    set 0, [hl]
    call Call_000_22e6
    call Call_002_7d92
    jr nz, jr_002_76c8

    call Call_002_79be
    jr z, jr_002_76c8

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a

jr_002_76c8:
    ret


    ld hl, $0000
    add hl, bc
    ld a, [hl]
    xor $04
    ld [hl], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp $40
    jr nz, jr_002_76e1

    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_76e1:
    ret


    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld de, $76f2
    push de
    rst $00
    di
    db $76
    add hl, bc
    ld [hl], a
    db $dd
    ld [hl], a
    ret


    ld a, [playerState]
    bit 0, a
    jr z, jr_002_7708

    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $02
    ld hl, $0006
    add hl, bc
    ld [hl], a

jr_002_7708:
    ret


    ld hl, $0004
    add hl, bc
    ld d, [hl]
    ld hl, $0005
    add hl, bc
    ld e, [hl]
    push de
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    pop de
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jr nz, jr_002_7730

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_002_7730

    jp Jump_002_77d6


jr_002_7730:
    push de
    call Call_002_7c4a
    jr nz, jr_002_7762

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_775a

    ld de, $c120
    call Call_002_7dc2
    jr z, jr_002_7771

    push bc
    ld hl, $c125
    dec [hl]
    ld bc, $c120
    call Call_002_4b1f
    pop bc
    jr z, jr_002_77b9

    ld hl, $c125
    inc [hl]
    jr jr_002_7762

jr_002_775a:
    ld de, $c120
    call Call_002_7dc2
    jr z, jr_002_7771

jr_002_7762:
    pop de
    ld hl, $0004
    add hl, bc
    ld a, d
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, e
    ld [hl], a
    jr jr_002_77d6

jr_002_7771:
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_77b9

    ld de, $c120
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_7794

    ld hl, $0004
    add hl, de
    inc [hl]
    push bc
    ld bc, $c120
    call Call_002_4870
    pop bc
    jr jr_002_77b9

jr_002_7794:
    cp $18
    jr nz, jr_002_77a7

    ld hl, $0004
    add hl, de
    dec [hl]
    push bc
    ld bc, $c120
    call Call_002_494c
    pop bc
    jr jr_002_77b9

jr_002_77a7:
    cp $10
    jr nz, jr_002_77b2

    ld hl, $0005
    add hl, de
    inc [hl]
    jr jr_002_77b9

jr_002_77b2:
    ld hl, $0005
    add hl, de
    dec [hl]
    jr jr_002_77b9

jr_002_77b9:
    pop de
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp d
    jr nz, jr_002_77d6

    ld [hl], $00
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    add $10
    and $1f
    ld [hl], a

Jump_002_77d6:
jr_002_77d6:
    ld hl, $001c
    add hl, bc
    res 2, [hl]
    ret


    ld a, [$c15d]
    and a
    jp z, Jump_002_78c7

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $0019
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $0019
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp d
    jp z, Jump_002_78a5

    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_783e

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [$c124]
    add d
    ld [$c124], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_7834

    push bc
    ld bc, $c120
    call Call_002_4870
    pop bc
    jp Jump_002_78a5


jr_002_7834:
    push bc
    ld bc, $c120
    call Call_002_494c
    pop bc
    jr jr_002_78a5

jr_002_783e:
    ld de, $c120
    call Call_002_7dc2
    jr z, jr_002_78a5

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld a, [$c124]
    add d
    ld [$c124], a
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $08
    jr nz, jr_002_787a

    push bc
    ld bc, $c120
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_7874

    call Call_002_4870
    jr jr_002_7877

jr_002_7874:
    call Call_002_4cd5

jr_002_7877:
    pop bc
    jr jr_002_7891

jr_002_787a:
    push bc
    ld bc, $c120
    ld hl, $001c
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_788b

    call Call_002_494c
    jr jr_002_788e

jr_002_788b:
    call Call_002_4d8d

jr_002_788e:
    pop bc
    jr jr_002_7891

jr_002_7891:
    ld de, $c120
    call Call_002_7dc2
    jr z, jr_002_78a5

    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_002_78c1

Jump_002_78a5:
jr_002_78a5:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    ld d, a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    cp d
    jr nz, jr_002_78c1

    ld [hl], $00
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    add $10
    and $1f
    ld [hl], a

jr_002_78c1:
    ld hl, $001c
    add hl, bc
    res 2, [hl]

Jump_002_78c7:
    ret


Call_002_78c8:
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_78f1

    call Call_002_79be
    jr nz, jr_002_78f1

    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], $01
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $0009
    add hl, bc
    ld [hl], a

jr_002_78f1:
    ret


Call_002_78f2:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a0
    jp nc, Jump_002_7936

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7939

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7939

    call Call_002_7c4a
    jr nz, jr_002_7948

Jump_002_7936:
    xor a
    jr jr_002_7956

jr_002_7939:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    or $01
    jr jr_002_7956

jr_002_7948:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0004
    add hl, bc
    ld [hl], a
    or $01

jr_002_7956:
    ret


Call_002_7957:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $10
    jp c, Jump_002_799b

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_799e

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_799e

    call Call_002_7c4a
    jr nz, jr_002_79af

Jump_002_799b:
    xor a
    jr jr_002_79bd

jr_002_799e:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    or $01
    jr jr_002_79bd

jr_002_79af:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add $10
    ld hl, $0004
    add hl, bc
    ld [hl], a
    or $01

jr_002_79bd:
    ret


Call_002_79be:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7a18

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7a18

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_7a07

    ld de, $c120
    call Call_002_7dc2
    jr nz, jr_002_7a4a

jr_002_7a07:
    call Call_002_7c4a
    push af
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [hl], a
    pop af
    jr nz, jr_002_7a3a

    xor a
    jr jr_002_7a72

jr_002_7a18:
    cp $0c
    jr nz, jr_002_7a2b

    ld a, $03
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr jr_002_7a72

jr_002_7a2b:
    ld a, [$c827]
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    or $01
    jr jr_002_7a72

jr_002_7a3a:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    or $01
    jr jr_002_7a72

jr_002_7a4a:
    ld hl, $001c
    add hl, de
    bit 2, [hl]
    jr nz, jr_002_7a62

    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $18
    ld hl, $0005
    add hl, bc
    ld [hl], a
    or $01
    jr jr_002_7a72

jr_002_7a62:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    or $01
    jr jr_002_7a72

jr_002_7a72:
    ret


Call_002_7a73:
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_002_7a9c

    call Call_002_7ba7
    jr nz, jr_002_7a9c

    ld a, $02
    ld hl, $001e
    add hl, bc
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, bc
    ld [hl+], a
    ld [hl], $01
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $0009
    add hl, bc
    ld [hl], a

jr_002_7a9c:
    ret


Call_002_7a9d:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c803]
    add d
    sub $10
    and $0f
    jr nz, jr_002_7ac6

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr z, jr_002_7b03

jr_002_7ac6:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7b03

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7b03

    call Call_002_7c7b
    jr nz, jr_002_7b12

    xor a
    jr jr_002_7b20

jr_002_7b03:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    or $01
    jr jr_002_7b20

jr_002_7b12:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0004
    add hl, bc
    ld [hl], a
    or $01

jr_002_7b20:
    ret


Call_002_7b21:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c803]
    add d
    sub $10
    and $0f
    jr nz, jr_002_7b4a

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $09
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr z, jr_002_7b87

jr_002_7b4a:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7b87

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7b87

    call Call_002_7c7b
    jr nz, jr_002_7b98

    xor a
    jr jr_002_7ba6

jr_002_7b87:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    or $01
    jr jr_002_7ba6

jr_002_7b98:
    ld hl, $0004
    add hl, de
    ld a, [hl]
    add $10
    ld hl, $0004
    add hl, bc
    ld [hl], a
    or $01

jr_002_7ba6:
    ret


Call_002_7ba7:
    xor a
    ld [$c820], a
    ld hl, $0005
    add hl, bc
    ld a, [$c804]
    add [hl]
    sub $10
    ld [$c81f], a
    ld a, [$c81f]
    sub $ff
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jp z, Jump_002_7c04

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add $07
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7c07

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7c07

    call Call_002_7c7b
    jr nz, jr_002_7c16

Jump_002_7c04:
    xor a
    jr jr_002_7c24

jr_002_7c07:
    ld a, [$c827]
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    or $01
    jr jr_002_7c24

jr_002_7c16:
    ld hl, $0005
    add hl, de
    ld a, [hl]
    sub $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    or $01

jr_002_7c24:
    ret


Call_002_7c25:
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    cp $03
    jp nc, Jump_002_7c48

    ld de, $c120
    ld hl, $0000
    add hl, de
    ld a, [hl]
    bit 1, a
    jr nz, jr_002_7c48

    bit 0, a
    jr nz, jr_002_7c48

    call Call_002_7dc2
    jr z, jr_002_7c49

    or $01
    jr jr_002_7c49

Jump_002_7c48:
jr_002_7c48:
    xor a

jr_002_7c49:
    ret


Call_002_7c4a:
    ld a, [$c980]
    and a
    jr z, jr_002_7c7b

    ld de, $c160
    ld [$c81f], a

jr_002_7c56:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_002_7c6d

    ld a, d
    cp b
    jr nz, jr_002_7c68

    ld a, e
    cp c
    jr nz, jr_002_7c68

    jr jr_002_7c6d

jr_002_7c68:
    call Call_002_5120
    jr nz, jr_002_7caf

jr_002_7c6d:
    ld hl, $c81f
    dec [hl]
    jr z, jr_002_7c7b

    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    jr jr_002_7c56

Call_002_7c7b:
jr_002_7c7b:
    ld a, [$c981]
    and a
    jr z, jr_002_7cac

    ld de, $c200
    ld [$c81f], a

jr_002_7c87:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_002_7c9e

    ld a, d
    cp b
    jr nz, jr_002_7c99

    ld a, e
    cp c
    jr nz, jr_002_7c99

    jr jr_002_7c9e

jr_002_7c99:
    call Call_002_5120
    jr nz, jr_002_7caf

jr_002_7c9e:
    ld hl, $c81f
    dec [hl]
    jr z, jr_002_7cac

    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    jr jr_002_7c87

jr_002_7cac:
    xor a
    jr jr_002_7cb1

jr_002_7caf:
    or $01

jr_002_7cb1:
    ret


Call_002_7cb2:
    ld a, [$c981]
    and a
    jr z, jr_002_7d07

    ld hl, $0005
    add hl, bc
    dec [hl]
    ld de, $c200
    ld [$c81f], a

jr_002_7cc3:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_002_7cf4

    ld a, d
    cp b
    jr nz, jr_002_7cd5

    ld a, e
    cp c
    jr nz, jr_002_7cd5

    jr jr_002_7cf4

jr_002_7cd5:
    call Call_002_5120
    jr z, jr_002_7cf4

    ld hl, $001c
    add hl, de
    ld a, [hl]
    bit 1, [hl]
    jr nz, jr_002_7cf4

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    ld hl, $0014
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $0013
    add hl, de
    ld [hl], a

jr_002_7cf4:
    ld hl, $c81f
    dec [hl]
    jr z, jr_002_7d02

    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    jr jr_002_7cc3

jr_002_7d02:
    ld hl, $0005
    add hl, bc
    inc [hl]

jr_002_7d07:
    ret


Call_002_7d08:
    xor a
    ld [$c820], a
    ld hl, $0004
    add hl, bc
    ld a, [$c803]
    add [hl]
    sub $08
    ld [$c81f], a
    ld a, [$c81f]
    sub $f8
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jp z, Jump_002_7d30

    xor a
    ret


Jump_002_7d30:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $1c
    jr nz, jr_002_7d45

    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_7d45:
    ld h, b
    ld l, c
    call Call_000_26e3
    or $01
    ret


Call_002_7d4d:
    xor a
    ld [$c820], a
    ld hl, $0004
    add hl, bc
    ld a, [$c803]
    add [hl]
    sub $08
    ld [$c81f], a
    ld a, [$c81f]
    sub $08
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jp nz, Jump_002_7d75

    xor a
    ret


Jump_002_7d75:
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    cp $1c
    jr nz, jr_002_7d8a

    push hl
    push af
    ld hl, $1fd3
    ld a, $04
    call Call_000_0aa6
    pop af
    pop hl

jr_002_7d8a:
    ld h, b
    ld l, c
    call Call_000_26e3
    or $01
    ret


Call_002_7d92:
    xor a
    ld [$c820], a
    ld hl, $0005
    add hl, bc
    ld a, [$c804]
    add [hl]
    sub $10
    ld [$c81f], a
    ld a, [$c81f]
    sub $ff
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jp z, Jump_002_7dba

    xor a
    ret


Jump_002_7dba:
    ld h, b
    ld l, c
    call Call_000_26e3
    or $01
    ret


Call_002_7dc2:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    bit 0, a
    jp nz, Jump_002_7e14

    ld hl, $001c
    add hl, de
    bit 2, [hl]
    jr z, jr_002_7dd8

    call Call_002_5156
    ret


jr_002_7dd8:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_7dec

    cpl
    inc a

jr_002_7dec:
    cp $0f
    jr nc, jr_002_7e14

    ld hl, $0005
    add hl, de
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld h, a
    pop af
    sub h
    bit 7, a
    jr z, jr_002_7e0c

    cpl
    inc a
    cp $10
    jr nc, jr_002_7e14

    or $01
    jr jr_002_7e15

jr_002_7e0c:
    cp $18
    jr nc, jr_002_7e14

    or $01
    jr jr_002_7e15

Jump_002_7e14:
jr_002_7e14:
    xor a

jr_002_7e15:
    ret


Call_002_7e16:
    ld hl, $001a
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add d
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7e56

    ld hl, $001a
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    add d
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7e56

    xor a
    jr jr_002_7e65

jr_002_7e56:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    or $01
    jr jr_002_7e65

jr_002_7e65:
    ret


Call_002_7e66:
    ld hl, $001a
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    dec a
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7ea6

    ld hl, $001a
    add hl, bc
    ld d, [hl]
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr nz, jr_002_7ea6

    xor a
    jr jr_002_7eb7

jr_002_7ea6:
    ld a, [$c825]
    ld d, a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    add $10
    ld [hl], a
    or $01
    jr jr_002_7eb7

jr_002_7eb7:
    ret


Call_002_7eb8:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_7eec

    dec [hl]
    jr nz, jr_002_7ed9

    ld hl, $c874

jr_002_7ec6:
    ld a, [hl+]
    cp $2a
    jr nz, jr_002_7ec6

    dec hl
    call Call_000_2ddb
    ld de, $7eed
    call Call_000_244a
    or $01
    jr jr_002_7eec

jr_002_7ed9:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $74
    jr nz, jr_002_7eeb

    ld a, [$c80d]
    ld de, $ff47
    call Call_000_240e

jr_002_7eeb:
    xor a

jr_002_7eec:
    ret


    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf

Call_002_7ef7:
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_7f4f

    ld [hl], $00
    ld hl, $0000
    add hl, bc
    bit 1, [hl]
    jr nz, jr_002_7f4f

    set 1, [hl]
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    dec a
    ld hl, $001d
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld a, $ff
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ld hl, $0000
    add hl, bc
    set 4, [hl]
    ld a, $04
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_7f4f

    ld a, $03
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $02
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, playerState
    set 4, [hl]
    call Call_000_0a65

jr_002_7f4f:
    ret


Call_002_7f50:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_7f66

    dec a
    ld hl, $001f
    add hl, bc
    ld [hl], a
    jr nz, jr_002_7f66

    ld hl, $0000
    add hl, bc
    res 4, [hl]

jr_002_7f66:
    ret


    xor a
    call Call_000_34c1
    jr z, jr_002_7f72

    ld h, b
    ld l, c
    call Call_000_26e3

jr_002_7f72:
    ret


    ld a, [playerState]
    bit 4, a
    jr nz, jr_002_7f87

    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    call Call_002_7fc3
    jr z, jr_002_7f8e

jr_002_7f87:
    ld h, b
    ld l, c
    call Call_000_26e3
    jr jr_002_7fa0

jr_002_7f8e:
    ld de, $c120
    call $3394
    jr z, jr_002_7f9b

    ld a, $01
    ld [$c133], a

jr_002_7f9b:
    ld a, $0a
    call Call_000_34c1

jr_002_7fa0:
    ret


    call Call_000_22e6
    call Call_002_7fc3
    jr z, jr_002_7fb0

    ld h, b
    ld l, c
    call Call_000_26e3
    jr jr_002_7fc2

jr_002_7fb0:
    ld de, $c120
    call $3394
    jr z, jr_002_7fbd

    ld a, $01
    ld [$c133], a

jr_002_7fbd:
    ld a, $0a
    call Call_000_34c1

jr_002_7fc2:
    ret


Call_002_7fc3:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $08
    ld [$c823], a
    call Call_000_2692
    cp $00
    jr z, jr_002_7fe4

    cp $0c
    jr z, jr_002_7fe4

    or $01
    jr jr_002_7fe5

jr_002_7fe4:
    xor a

jr_002_7fe5:
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
