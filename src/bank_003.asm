; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld a, $1c
    ld [$c82d], a
    ld bc, $c100
    xor a
    ld [$c82f], a

Jump_003_400c:
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 2, a
    jp z, Jump_003_41ec

    ld hl, $c982
    bit 2, [hl]
    jr z, jr_003_402e

    push af
    ld hl, $c120
    ld a, h
    cp b
    jr nz, jr_003_402d

    ld a, l
    cp c
    jr nz, jr_003_402d

    pop af
    jp Jump_003_4257


jr_003_402d:
    pop af

jr_003_402e:
    and $f0
    ld [$c81f], a
    ld hl, $0002
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld de, $42a5
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c823], a
    ld a, [hl+]
    ld [$c821], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c825], a
    ld a, [hl+]
    ld [$c827], a
    push hl
    ld hl, $0004
    add hl, bc
    ld d, [hl]
    ld a, [$c821]
    add d
    ld [$c821], a
    ld [$c829], a
    ld hl, $0005
    add hl, bc
    ld d, [hl]
    ld a, [$c823]
    add d
    ld [$c823], a
    pop hl
    push bc
    ld b, h
    ld c, l
    ld a, [$c802]
    ld h, a
    ld a, [$c82f]
    ld l, a
    ld a, [$c81f]
    and $60
    jp nz, Jump_003_40cc

    ld a, [$c825]
    ld d, a
    ld a, [$c81f]
    ld e, a

Jump_003_408d:
jr_003_408d:
    ld a, [$c823]
    ld [hl+], a
    ld a, [$c821]
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    cp $a0
    jp nc, Jump_003_4223

    inc bc
    dec d
    jr z, jr_003_40ad

    ld a, [$c821]
    add $08
    ld [$c821], a
    jr jr_003_408d

jr_003_40ad:
    ld a, [$c827]
    dec a
    jp z, Jump_003_41e7

    ld [$c827], a
    ld a, [$c825]
    ld d, a
    ld a, [$c829]
    ld [$c821], a
    ld a, [$c823]
    add $08
    ld [$c823], a
    jp Jump_003_408d


Jump_003_40cc:
    bit 6, a
    jp nz, Jump_003_4127

    ld a, [$c825]
    ld d, a
    dec a
    add a
    add a
    add a
    ld e, a
    ld a, [$c821]
    add e
    ld [$c821], a
    ld [$c829], a
    ld a, [$c81f]
    ld e, a

Jump_003_40e8:
jr_003_40e8:
    ld a, [$c823]
    ld [hl+], a
    ld a, [$c821]
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    cp $a0
    jp nc, Jump_003_4223

    inc bc
    dec d
    jr z, jr_003_4108

    ld a, [$c821]
    sub $08
    ld [$c821], a
    jr jr_003_40e8

jr_003_4108:
    ld a, [$c827]
    dec a
    jp z, Jump_003_41e7

    ld [$c827], a
    ld a, [$c825]
    ld d, a
    ld a, [$c829]
    ld [$c821], a
    ld a, [$c823]
    add $08
    ld [$c823], a
    jp Jump_003_40e8


Jump_003_4127:
    bit 5, a
    jp nz, Jump_003_4182

    ld a, [$c825]
    ld d, a
    ld a, [$c827]
    dec a
    add a
    add a
    add a
    ld e, a
    ld a, [$c823]
    add e
    ld [$c823], a
    ld a, [$c81f]
    ld e, a

Jump_003_4143:
jr_003_4143:
    ld a, [$c823]
    ld [hl+], a
    ld a, [$c821]
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    cp $a0
    jp nc, Jump_003_4223

    inc bc
    dec d
    jr z, jr_003_4163

    ld a, [$c821]
    add $08
    ld [$c821], a
    jr jr_003_4143

jr_003_4163:
    ld a, [$c827]
    dec a
    jp z, Jump_003_41e7

    ld [$c827], a
    ld a, [$c825]
    ld d, a
    ld a, [$c829]
    ld [$c821], a
    ld a, [$c823]
    sub $08
    ld [$c823], a
    jp Jump_003_4143


Jump_003_4182:
    ld a, [$c825]
    ld d, a
    dec a
    add a
    add a
    add a
    ld e, a
    ld a, [$c821]
    add e
    ld [$c821], a
    ld [$c829], a
    ld a, [$c827]
    dec a
    add a
    add a
    add a
    ld e, a
    ld a, [$c823]
    add e
    ld [$c823], a
    ld a, [$c81f]
    ld e, a

Jump_003_41a8:
jr_003_41a8:
    ld a, [$c823]
    ld [hl+], a
    ld a, [$c821]
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, l
    cp $a0
    jp nc, Jump_003_4223

    inc bc
    dec d
    jr z, jr_003_41c8

    ld a, [$c821]
    sub $08
    ld [$c821], a
    jr jr_003_41a8

jr_003_41c8:
    ld a, [$c827]
    dec a
    jp z, Jump_003_41e7

    ld [$c827], a
    ld a, [$c825]
    ld d, a
    ld a, [$c829]
    ld [$c821], a
    ld a, [$c823]
    sub $08
    ld [$c823], a
    jp Jump_003_41a8


Jump_003_41e7:
    ld a, l
    ld [$c82f], a
    pop bc

Jump_003_41ec:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $c82d
    dec [hl]
    jp nz, Jump_003_400c

    ld a, [$c802]
    ld h, a
    ld a, [$c82f]
    ld l, a
    ld a, [$c802]
    cp $c0
    jr nz, jr_003_420d

    ld a, [$c800]
    jr jr_003_4210

jr_003_420d:
    ld a, [$c801]

jr_003_4210:
    ld d, a
    ld bc, $0004
    ld e, $00

jr_003_4216:
    ld a, l
    cp d
    jr nc, jr_003_421e

    ld [hl], e
    add hl, bc
    jr jr_003_4216

jr_003_421e:
    ld a, [$c82f]
    jr jr_003_4224

Jump_003_4223:
jr_003_4223:
    pop af

jr_003_4224:
    ld d, a
    ld a, [$c802]
    cp $c0
    jr nz, jr_003_423e

    ld a, d
    ld [$c800], a
    ld a, [$c803]
    ld [$c805], a
    ld a, [$c804]
    ld [$c806], a
    jr jr_003_424e

jr_003_423e:
    ld a, d
    ld [$c801], a
    ld a, [$c803]
    ld [$c807], a
    ld a, [$c804]
    ld [$c808], a

jr_003_424e:
    ld a, [$c802]
    xor $0e
    ld [$c802], a
    ret


Jump_003_4257:
    ld hl, $0002
    add hl, bc
    ld d, [hl]
    inc hl
    ld h, [hl]
    ld l, d
    add hl, hl
    ld de, $42a5
    add hl, de
    ld e, [hl]
    inc hl
    ld h, [hl]
    ld l, e
    push hl
    ld hl, $0004
    add hl, bc
    ld d, [hl]
    ld hl, $0005
    add hl, bc
    ld e, [hl]
    pop hl
    push bc
    ld a, [$c802]
    ld b, a
    ld a, [$c82f]
    ld c, a
    ld a, [hl+]
    ld [$c82b], a

jr_003_4281:
    ld a, [hl+]
    add e
    ld [bc], a
    inc bc
    ld a, [hl+]
    add d
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, c
    cp $a0
    jr nc, jr_003_4223

    ld a, [$c82b]
    dec a
    ld [$c82b], a
    jr nz, jr_003_4281

    ld a, c
    ld [$c82f], a
    pop bc
    jp Jump_003_41ec


    sbc a
    ld b, e
    and e
    ld b, e
    and a
    ld b, e
    xor e
    ld b, e
    xor a
    ld b, e
    or e
    ld b, e
    or a
    ld b, e
    cp e
    ld b, e
    cp a
    ld b, e
    jp $c743


    ld b, e
    bit 0, e
    rst $08
    ld b, e
    db $d3
    ld b, e
    rst $10
    ld b, e
    db $db
    ld b, e
    rst $18
    ld b, e
    db $e3
    ld b, e
    rst $20
    ld b, e
    db $eb
    ld b, e
    rst $28
    ld b, e
    di
    ld b, e
    rst $30
    ld b, e
    ei
    ld b, e
    rst $38
    ld b, e
    inc bc
    ld b, h
    rlca
    ld b, h
    dec bc
    ld b, h
    rrca
    ld b, h
    inc de
    ld b, h
    rla
    ld b, h
    dec de
    ld b, h
    dec de
    ld b, h
    rra
    ld b, h
    inc hl
    ld b, h
    daa
    ld b, h
    dec hl
    ld b, h
    cpl
    ld b, h
    inc sp
    ld b, h
    scf
    ld b, h
    dec sp
    ld b, h
    ccf
    ld b, h
    ld b, e
    ld b, h
    ld b, a
    ld b, h
    ld c, e
    ld b, h
    ld c, a
    ld b, h
    ld d, e
    ld b, h
    ld d, a
    ld b, h
    ld e, e
    ld b, h
    ld e, a
    ld b, h
    ld h, e
    ld b, h
    ld h, a
    ld b, h
    ld l, e
    ld b, h
    ld l, a
    ld b, h
    ld [hl], e
    ld b, h
    ld [hl], a
    ld b, h
    ld a, e
    ld b, h
    ld a, a
    ld b, h
    add e
    ld b, h
    add a
    ld b, h
    adc e
    ld b, h
    adc a
    ld b, h
    sub e
    ld b, h
    sub a
    ld b, h
    sbc e
    ld b, h
    sbc a
    ld b, h
    and e
    ld b, h
    and a
    ld b, h
    xor e
    ld b, h
    xor a
    ld b, h
    or e
    ld b, h
    or a
    ld b, h
    cp e
    ld b, h
    cp a
    ld b, h
    jp $c744


    ld b, h
    bit 0, h
    rst $08
    ld b, h
    db $d3
    ld b, h
    rst $10
    ld b, h
    db $db
    ld b, h
    rst $18
    ld b, h
    db $e3
    ld b, h
    rst $20
    ld b, h
    db $eb
    ld b, h
    rst $28
    ld b, h
    di
    ld b, h
    rst $30
    ld b, h
    ei
    ld b, h
    rst $38
    ld b, h
    inc bc
    ld b, l
    rlca
    ld b, l
    rlca
    ld b, l
    rlca
    ld b, l
    rlca
    ld b, l
    rlca
    ld b, l
    rlca
    ld b, l
    inc l
    ld b, l
    ld d, c
    ld b, l
    db $76
    ld b, l
    sbc e
    ld b, l
    ret nz

    ld b, l
    push hl
    ld b, l
    ld a, [bc]
    ld b, [hl]
    cpl
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld h, l
    ld b, [hl]
    db $76
    ld b, [hl]
    add a
    ld b, [hl]
    sbc b
    ld b, [hl]
    xor c
    ld b, [hl]
    adc $46
    di
    ld b, [hl]
    jr @+$49

    dec a
    ld b, a
    ld h, d
    ld b, a
    add a
    ld b, a
    xor h
    ld b, a
    pop de
    ld b, a
    or $47
    rlca
    ld c, b
    jr jr_003_43e1

    add hl, hl
    ld c, b
    ld a, [hl-]
    ld c, b
    rst $38
    rst $38
    add sp, -$0c
    ld e, l
    ld c, b
    add sp, -$0c
    ld l, b
    ld c, b
    add sp, -$0c
    ld [hl], e
    ld c, b
    ldh a, [$f8]
    ld c, e
    ld c, b
    ldh a, [$f8]
    ld d, c
    ld c, b
    ldh a, [$f8]
    ld d, a
    ld c, b
    add sp, -$0c
    ld a, [hl]
    ld c, b
    add sp, -$0c
    adc c
    ld c, b
    add sp, -$0c
    sub h
    ld c, b
    add sp, -$0c
    sbc a
    ld c, b
    ldh a, [$f8]
    ei
    ld c, b
    ldh a, [$f8]
    ld d, l
    ld c, c
    ldh a, [$f8]
    inc de
    ld c, c
    add sp, -$0c
    sbc a
    ld c, b
    add sp, -$0c
    xor d
    ld c, b
    add sp, -$0c
    or l
    ld c, b
    ld hl, sp-$04

jr_003_43e1:
    add $48
    ldh a, [$f8]
    and h
    ld c, e
    ldh a, [$f8]
    xor d
    ld c, e
    ldh a, [$f8]
    or b
    ld c, e
    ldh a, [$f8]
    ret z

    ld c, e
    ldh a, [$f8]
    adc $4b
    ldh a, [$f8]
    call nc, $f04b
    ld hl, sp-$4a
    ld c, e
    ldh a, [$f8]
    cp h
    ld c, e
    ldh a, [$f8]
    jp nz, $f04b

    ld hl, sp-$40
    ld c, b
    ldh a, [$f8]
    ld e, e
    ld c, c
    ldh a, [$f8]
    xor a
    ld c, c
    ld hl, sp-$04
    ret


    ld c, b
    ld hl, sp-$04
    call z, $e848
    db $f4
    ld l, d
    ld c, h
    add sp, -$0c
    ld [hl], l
    ld c, h
    add sp, -$0c
    add b
    ld c, h
    add sp, -$0c
    adc e
    ld c, h
    add sp, -$0c
    sub [hl]
    ld c, h
    ldh [$f0], a
    ld l, $4c
    ldh [$f0], a
    ld b, b
    ld c, h
    ld hl, sp-$08
    ld d, d
    ld c, h
    ld hl, sp-$08
    ld e, b
    ld c, h
    ld hl, sp-$08
    ld e, [hl]
    ld c, h
    ld hl, sp-$08
    ld h, h
    ld c, h
    ldh [$e8], a
    ld a, d
    ld c, l
    ldh [$e8], a
    sub h
    ld c, l
    ldh [$e8], a
    xor [hl]
    ld c, l
    ldh [$e8], a
    xor [hl]
    ld c, l
    ldh a, [$f8]
    xor l
    ld c, [hl]
    ldh a, [$f8]
    and a
    ld c, [hl]
    ldh a, [$f8]
    or $4f
    ldh a, [$f8]
    ldh a, [rVBK]
    ldh a, [$f4]
    ld c, d
    ld d, b
    ldh a, [$f4]
    ld d, d
    ld d, b
    ldh a, [$f4]
    ld e, d
    ld d, b
    ldh a, [$f4]
    ld e, d
    ld d, b
    ldh [$f0], a
    ld e, a
    ld d, c
    ldh [$f0], a
    ld [hl], c
    ld d, c
    ldh [$f0], a
    db $ec
    ld d, b
    ldh [$f0], a
    cp $50
    ldh [$f0], a
    add e
    ld d, c
    ldh [$e8], a
    call z, $e052
    add sp, -$1a
    ld d, d
    ldh [$e8], a
    nop
    ld d, e
    ldh [$e8], a
    ld a, [de]
    ld d, e
    ldh [$e8], a
    inc [hl]
    ld d, e
    ldh [$e8], a
    ld c, [hl]
    ld d, e
    ldh [$e8], a
    ld c, [hl]
    ld d, e
    ldh a, [$f8]
    dec hl
    ld c, c
    ldh a, [$f8]
    ld sp, $e049
    add sp, $4d
    ld d, h
    ldh [$e8], a
    ld h, a
    ld d, h
    ldh [$e8], a
    add c
    ld d, h
    ldh [$e8], a
    ld h, a
    ld d, h
    add sp, -$08
    ld l, l
    ld e, d
    nop
    nop
    cpl
    ld d, [hl]
    add sp, -$0c
    jp z, $e857

    db $f4
    push de
    ld d, a
    add sp, -$0c
    ldh [$57], a
    add sp, -$0c
    db $eb
    ld d, a
    add sp, -$0c
    or $57
    add sp, -$0c
    ld bc, $e858
    db $f4
    inc c
    ld e, b
    add sp, -$0c
    rla
    ld e, b
    add sp, -$0c
    ld [hl+], a
    ld e, b
    ret z

    ldh a, [$97]
    ld e, c
    ret z

    ldh a, [$b5]
    ld e, c
    ret z

    ldh a, [$d3]
    ld e, c
    ret z

    ldh a, [rNR13]
    ld e, d
    ret z

    ldh a, [$31]
    ld e, d
    ret z

    ldh a, [rVBK]
    ld e, d
    nop
    nop
    di
    ld c, d
    add hl, bc
    add sp, -$0c
    ld [de], a
    nop
    add sp, -$04
    inc de
    nop
    add sp, $04
    inc d
    nop
    ldh a, [$f4]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [rDIV]
    inc [hl]
    nop
    ld hl, sp-$0c
    ld d, d
    nop
    ld hl, sp-$04
    ld d, e
    nop
    ld hl, sp+$04
    ld d, h
    nop
    add hl, bc
    jp hl


    push af
    ld [de], a
    nop
    jp hl


    db $fc
    inc de
    nop
    jp hl


    inc bc
    inc d
    nop
    ldh a, [$f5]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [$03]
    inc [hl]
    nop
    rst $30
    push af
    ld d, d
    nop
    rst $30
    db $fc
    ld d, e
    nop
    rst $30
    inc bc
    ld d, h
    nop
    add hl, bc
    ld [$12f6], a
    nop
    ld [$13fc], a
    nop
    ld [$1402], a
    nop
    ldh a, [$f6]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [rSC]
    inc [hl]
    nop
    or $f6
    ld d, d
    nop
    or $fc
    ld d, e
    nop
    or $02
    ld d, h
    nop
    add hl, bc
    db $eb
    rst $30
    ld [de], a
    nop
    db $eb
    db $fc
    inc de
    nop
    db $eb
    ld bc, $0014
    ldh a, [$f7]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [rSB]
    inc [hl]
    nop
    push af
    rst $30
    ld d, d
    nop
    push af
    db $fc
    ld d, e
    nop
    push af
    ld bc, $0054
    add hl, bc
    db $ec
    ld hl, sp+$12
    nop
    db $ec
    db $fc
    inc de
    nop
    db $ec
    nop
    inc d
    nop
    ldh a, [$f8]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [rP1]
    inc [hl]
    nop
    db $f4
    ld hl, sp+$52
    nop
    db $f4
    db $fc
    ld d, e
    nop
    db $f4
    nop
    ld d, h
    nop
    add hl, bc
    db $ed
    ld sp, hl
    ld [de], a
    nop
    db $ed
    db $fc
    inc de
    nop
    db $ed
    rst $38
    inc d
    nop
    ldh a, [$f9]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [rIE]
    inc [hl]
    nop
    di
    ld sp, hl
    ld d, d
    nop
    di
    db $fc
    ld d, e
    nop
    di
    rst $38
    ld d, h
    nop
    add hl, bc
    xor $fa
    ld [de], a
    nop
    xor $fc
    inc de
    nop
    xor $fe
    inc d
    nop
    ldh a, [$fa]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [$fe]
    inc [hl]
    nop
    ld a, [c]
    ld a, [$0052]
    ld a, [c]
    db $fc
    ld d, e
    nop
    ld a, [c]
    cp $54
    nop
    add hl, bc
    rst $28
    ei
    ld [de], a
    nop
    rst $28
    db $fc
    inc de
    nop
    rst $28
    db $fd
    inc d
    nop
    ldh a, [$fb]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [$fd]
    inc [hl]
    nop
    pop af
    ei
    ld d, d
    nop
    pop af
    db $fc
    ld d, e
    nop
    pop af
    db $fd
    ld d, h
    nop
    add hl, bc
    ldh a, [$fc]
    ld [de], a
    nop
    ldh a, [$fc]
    inc de
    nop
    ldh a, [$fc]
    inc d
    nop
    ldh a, [$fc]
    ld [hl-], a
    nop
    ldh a, [$fc]
    inc sp
    nop
    ldh a, [$fc]
    inc [hl]
    nop
    ldh a, [$fc]
    ld d, d
    nop
    ldh a, [$fc]
    ld d, e
    nop
    ldh a, [$fc]
    ld d, h
    nop
    inc b
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ld hl, sp-$08
    inc h
    nop
    ld hl, sp+$00
    dec h
    nop
    inc b
    pop af
    ld sp, hl
    inc b
    nop
    pop af
    rst $38
    dec b
    nop
    rst $30
    ld sp, hl
    inc h
    nop
    rst $30
    rst $38
    dec h
    nop
    inc b
    ld a, [c]
    ld a, [$0004]
    ld a, [c]
    cp $05
    nop
    or $fa
    inc h
    nop
    or $fe
    dec h
    nop
    inc b
    di
    ei
    inc b
    nop
    di
    db $fd
    dec b
    nop
    push af
    ei
    inc h
    nop
    push af
    db $fd
    dec h

jr_003_4697:
    nop
    inc b
    db $f4
    db $fc

jr_003_469b:
    inc b
    nop
    db $f4
    db $fc
    dec b
    nop
    db $f4
    db $fc
    inc h
    nop
    db $f4
    db $fc

jr_003_46a7:
    dec h
    nop
    add hl, bc
    add sp, -$0c
    inc d
    jr nz, jr_003_4697

jr_003_46af:
    db $fc
    inc de
    jr nz, jr_003_469b

    inc b
    ld [de], a
    jr nz, jr_003_46a7

    db $f4
    inc [hl]
    jr nz, @-$0e

jr_003_46bb:
    db $fc
    inc sp

jr_003_46bd:
    jr nz, jr_003_46af

jr_003_46bf:
    inc b
    ld [hl-], a

jr_003_46c1:
    jr nz, jr_003_46bb

jr_003_46c3:
    db $f4
    ld d, h
    jr nz, jr_003_46bf

    db $fc
    ld d, e
    jr nz, jr_003_46c3

    inc b

jr_003_46cc:
    ld d, d
    jr nz, jr_003_46d8

    jp hl


jr_003_46d0:
    push af
    inc d
    jr nz, jr_003_46bd

jr_003_46d4:
    db $fc
    inc de
    jr nz, jr_003_46c1

jr_003_46d8:
    inc bc
    ld [de], a
    jr nz, jr_003_46cc

    push af
    inc [hl]
    jr nz, jr_003_46d0

    db $fc
    inc sp
    jr nz, jr_003_46d4

    inc bc
    ld [hl-], a
    jr nz, @-$07

    push af
    ld d, h
    jr nz, @-$07

    db $fc
    ld d, e
    jr nz, @-$07

    inc bc

jr_003_46f1:
    ld d, d
    jr nz, jr_003_46fd

    ld [$14f6], a
    jr nz, @-$14

jr_003_46f9:
    db $fc
    inc de
    jr nz, @-$14

jr_003_46fd:
    ld [bc], a
    ld [de], a
    jr nz, jr_003_46f1

    or $34

jr_003_4703:
    jr nz, @-$0e

    db $fc
    inc sp

jr_003_4707:
    jr nz, jr_003_46f9

jr_003_4709:
    ld [bc], a
    ld [hl-], a

jr_003_470b:
    jr nz, jr_003_4703

jr_003_470d:
    or $54
    jr nz, jr_003_4707

    db $fc
    ld d, e
    jr nz, jr_003_470b

    ld [bc], a
    ld d, d
    jr nz, jr_003_4722

    db $eb

jr_003_471a:
    rst $30
    inc d
    jr nz, jr_003_4709

jr_003_471e:
    db $fc
    inc de
    jr nz, jr_003_470d

jr_003_4722:
    ld bc, $2012
    ldh a, [$f7]
    inc [hl]
    jr nz, jr_003_471a

    db $fc

jr_003_472b:
    inc sp
    jr nz, jr_003_471e

    ld bc, $2032
    push af
    rst $30

jr_003_4733:
    ld d, h
    jr nz, jr_003_472b

    db $fc
    ld d, e
    jr nz, @-$09

    ld bc, $2052
    add hl, bc
    db $ec

jr_003_473f:
    ld hl, sp+$14
    jr nz, @-$12

jr_003_4743:
    db $fc
    inc de
    jr nz, jr_003_4733

    nop
    ld [de], a
    jr nz, @-$0e

jr_003_474b:
    ld hl, sp+$34
    jr nz, jr_003_473f

jr_003_474f:
    db $fc
    inc sp
    jr nz, jr_003_4743

jr_003_4753:
    nop
    ld [hl-], a

jr_003_4755:
    jr nz, jr_003_474b

    ld hl, sp+$54

jr_003_4759:
    jr nz, jr_003_474f

    db $fc
    ld d, e
    jr nz, jr_003_4753

    nop

jr_003_4760:
    ld d, d
    jr nz, jr_003_476c

    db $ed

jr_003_4764:
    ld sp, hl
    inc d
    jr nz, jr_003_4755

jr_003_4768:
    db $fc
    inc de
    jr nz, jr_003_4759

jr_003_476c:
    rst $38
    ld [de], a
    jr nz, jr_003_4760

    ld sp, hl
    inc [hl]
    jr nz, jr_003_4764

    db $fc
    inc sp
    jr nz, jr_003_4768

    rst $38
    ld [hl-], a
    jr nz, @-$0b

    ld sp, hl
    ld d, h
    jr nz, @-$0b

    db $fc
    ld d, e
    jr nz, @-$0b

    rst $38

jr_003_4785:
    ld d, d
    jr nz, jr_003_4791

    xor $fa
    inc d
    jr nz, @-$10

jr_003_478d:
    db $fc
    inc de
    jr nz, @-$10

jr_003_4791:
    cp $12

jr_003_4793:
    jr nz, jr_003_4785

    ld a, [$2034]
    ldh a, [$fc]
    inc sp

jr_003_479b:
    jr nz, jr_003_478d

    cp $32
    jr nz, jr_003_4793

jr_003_47a1:
    ld a, [$2054]
    ld a, [c]

jr_003_47a5:
    db $fc
    ld d, e
    jr nz, jr_003_479b

    cp $52
    jr nz, jr_003_47b6

    rst $28

jr_003_47ae:
    ei
    inc d
    jr nz, jr_003_47a1

jr_003_47b2:
    db $fc
    inc de
    jr nz, jr_003_47a5

jr_003_47b6:
    db $fd

jr_003_47b7:
    ld [de], a
    jr nz, @-$0e

    ei

jr_003_47bb:
    inc [hl]
    jr nz, jr_003_47ae

    db $fc

jr_003_47bf:
    inc sp
    jr nz, jr_003_47b2

    db $fd
    ld [hl-], a
    jr nz, jr_003_47b7

    ei

jr_003_47c7:
    ld d, h
    jr nz, jr_003_47bb

    db $fc

jr_003_47cb:
    ld d, e
    jr nz, jr_003_47bf

    db $fd

jr_003_47cf:
    ld d, d
    jr nz, jr_003_47db

    ldh a, [$fc]
    inc d
    jr nz, jr_003_47c7

jr_003_47d7:
    db $fc
    inc de
    jr nz, jr_003_47cb

jr_003_47db:
    db $fc
    ld [de], a
    jr nz, jr_003_47cf

jr_003_47df:
    db $fc
    inc [hl]
    jr nz, @-$0e

jr_003_47e3:
    db $fc
    inc sp
    jr nz, jr_003_47d7

    db $fc
    ld [hl-], a
    jr nz, jr_003_47db

    db $fc

jr_003_47ec:
    ld d, h
    jr nz, jr_003_47df

    db $fc
    ld d, e
    jr nz, jr_003_47e3

    db $fc
    ld d, d
    jr nz, @+$06

    ldh a, [$f8]
    dec b
    jr nz, jr_003_47ec

jr_003_47fc:
    nop
    inc b

jr_003_47fe:
    jr nz, @-$06

    ld hl, sp+$25
    jr nz, jr_003_47fc

    nop
    inc h
    jr nz, @+$06

jr_003_4808:
    pop af
    ld sp, hl
    dec b
    jr nz, jr_003_47fe

    rst $38
    inc b
    jr nz, jr_003_4808

    ld sp, hl
    dec h
    jr nz, @-$07

    rst $38
    inc h
    jr nz, jr_003_481d

    ld a, [c]
    ld a, [$2005]

jr_003_481d:
    ld a, [c]
    cp $04
    jr nz, @-$08

jr_003_4822:
    ld a, [$2025]
    or $fe
    inc h

jr_003_4828:
    jr nz, @+$06

    di
    ei

jr_003_482c:
    dec b
    jr nz, jr_003_4822

    db $fd
    inc b
    jr nz, jr_003_4828

    ei

jr_003_4834:
    dec h
    jr nz, jr_003_482c

    db $fd

jr_003_4838:
    inc h
    jr nz, @+$06

    db $f4

jr_003_483c:
    db $fc
    dec b
    jr nz, jr_003_4834

    db $fc
    inc b
    jr nz, jr_003_4838

    db $fc
    dec h
    jr nz, jr_003_483c

    db $fc
    inc h
    jr nz, jr_003_484e

    ld [bc], a
    nop

jr_003_484e:
    ld bc, $2120
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [hl+], a
    inc hl
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc h
    dec h
    inc bc
    inc bc
    ld b, $07
    ld [$2726], sp
    jr z, jr_003_48ac

    ld b, a
    ld c, b
    inc bc
    inc bc
    ld b, $07
    ld [$2a29], sp
    dec hl
    ld c, c
    ld c, d
    ld c, e
    inc bc
    inc bc
    ld b, $07
    ld [$2d2c], sp
    ld l, $4c
    ld c, l
    ld c, [hl]
    inc bc
    inc bc
    rrca
    db $10
    ld de, $302f
    ld sp, $504f
    ld d, c
    inc bc
    inc bc
    ld [de], a
    inc de
    inc d
    ld [hl-], a
    inc sp
    inc [hl]
    ld d, d
    ld d, e
    ld d, h
    inc bc
    inc bc
    dec d
    ld d, $17
    dec [hl]
    ld [hl], $37
    ld d, l
    ld d, [hl]
    ld d, a
    inc bc
    inc bc
    jr jr_003_48bc

    ld a, [de]
    jr c, jr_003_48df

    ld a, [hl-]
    ld e, b
    ld e, c
    ld e, d
    inc bc
    inc bc

jr_003_48ac:
    jr @+$1b

    ld a, [de]
    ld l, b
    ld l, c
    ld l, d
    adc b
    adc c
    adc d
    inc bc
    inc bc
    jr jr_003_48d2

    ld a, [de]
    ld l, e
    ld l, h

jr_003_48bc:
    ld l, l
    adc e
    adc h
    adc l
    ld [bc], a
    ld [bc], a
    rst $20
    add sp, -$17
    ld [$0101], a
    db $eb
    ld bc, $ed01
    ld bc, $ee01
    ld c, e
    ld c, b
    ld d, c

jr_003_48d2:
    ld c, b
    ld d, a
    ld c, b
    ld e, l
    ld c, b
    ld l, b
    ld c, b
    ld [hl], e
    ld c, b
    ld a, [hl]
    ld c, b
    adc c
    ld c, b

jr_003_48df:
    sub h
    ld c, b
    sbc a
    ld c, b
    xor d
    ld c, b
    or l
    ld c, b
    ret nz

    ld c, b
    add $48
    ret


    ld c, b
    call z, $0248
    ld [bc], a
    ld h, [hl]
    ld h, a
    add [hl]
    add a
    ld [bc], a
    ld [bc], a
    and [hl]
    and a
    add $c7
    ld [bc], a
    ld [bc], a
    xor b
    xor c
    sub [hl]
    sub a
    ld [bc], a
    ld [bc], a
    xor b
    xor c
    ret z

    ret


    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    ld [bc], a
    ld [bc], a
    ret nz

    pop bc
    ret z

    ret


    ld [bc], a
    ld [bc], a
    ld [hl], h
    ld [hl], l
    sub h
    sub l
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    sub b
    sub c
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld [hl], e
    sub d
    sub e
    ld [bc], a
    ld [bc], a
    ld a, d
    ld a, e
    rra
    ccf
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, l
    sbc h
    sbc l
    ld [bc], a
    ld [bc], a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld [bc], a
    ld [bc], a
    pop af
    ld a, [c]
    ld de, $0212
    ld [bc], a
    di
    db $f4
    inc de
    inc d
    ld [bc], a
    ld [bc], a
    push af
    or $15
    ld d, $02
    ld [bc], a
    rst $30
    ld hl, sp+$17
    jr jr_003_4952

    ld [bc], a
    dec c

jr_003_4952:
    ld c, $ce
    rst $08
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    sbc b
    sbc c
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld [hl], e
    sbc d
    sbc e
    ld [bc], a
    ld [bc], a
    or b
    or c
    ret nc

    pop de
    ld [bc], a
    ld [bc], a
    or d
    or e
    jp nc, $02d3

    ld [bc], a
    xor b
    xor c
    xor h
    xor l
    ld [bc], a
    ld [bc], a
    or h
    or l
    call nc, $02d5
    ld [bc], a
    xor d
    xor e
    jp z, $02cb

    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    adc [hl]
    adc a
    ld [bc], a
    ld [bc], a
    call z, $aecd
    xor a
    ld [bc], a
    ld [bc], a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    ldh [$e1], a
    ld [c], a
    rst $38
    ld [bc], a
    ld [bc], a
    or [hl]
    or a
    sub $d7
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld e, a
    ld [bc], a
    ld [bc], a
    db $e3
    db $e4
    push hl
    and $02
    ld [bc], a
    cp b
    cp c
    ret c

    reti


    ld [bc], a
    ld [bc], a
    cp d
    cp e
    jp c, $02db

    ld [bc], a
    cp h
    cp l
    call c, $02dd
    ld [bc], a
    cp l
    cp l
    db $dd
    db $dd
    ld [bc], a
    ld [bc], a
    cp l
    cp [hl]
    db $dd
    sbc $02
    ld [bc], a
    call c, $dcdd
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    db $dd
    db $dd
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    sbc $dd
    sbc $02
    ld [bc], a
    call c, $fcdd
    db $fd
    ld [bc], a
    ld [bc], a
    db $dd
    db $dd
    db $fd
    db $fd
    ld [bc], a
    ld [bc], a
    db $dd
    sbc $fd
    cp $02
    ld [bc], a
    cp h
    cp l
    db $fc
    db $fd
    ld [bc], a
    ld [bc], a
    cp l
    cp l
    db $fd
    db $fd
    ld [bc], a
    ld [bc], a
    cp l
    cp [hl]
    db $fd
    cp $02
    ld [bc], a
    cp h
    cp [hl]
    call c, Call_000_02de
    ld [bc], a
    call c, $dcde
    sbc $02
    ld [bc], a
    call c, $fcde
    cp $02
    ld [bc], a
    rst $28
    ldh a, [$f1]
    ld a, [c]
    ld [bc], a
    ld [bc], a
    call c, $fcf0
    db $fd
    ld [bc], a
    ld [bc], a
    cp h
    cp l
    call c, Call_000_02f2
    ld [bc], a
    rst $28
    ldh a, [$fd]
    db $fd
    ld [bc], a
    ld [bc], a
    cp l
    cp l
    pop af
    ld a, [c]
    ld [bc], a
    ld [bc], a
    rst $28
    sbc $fd
    cp $02
    ld [bc], a
    cp l
    cp [hl]
    pop af
    sbc $02
    ld [bc], a
    cp l
    cp [hl]
    pop af
    sbc $02
    ld [bc], a
    cp h
    cp l
    call c, Call_000_02f2
    ld [bc], a
    rst $28
    sbc $f1
    sbc $02
    ld [bc], a
    call c, $dcf0
    ld a, [c]
    ld [bc], a
    ld [bc], a
    rst $28
    sbc $fd
    cp $02
    ld [bc], a
    call c, $fcf0
    db $fd
    ld [bc], a
    ld [bc], a
    rst $28
    db $dd
    db $dd
    db $dd
    ld [bc], a
    ld [bc], a
    rst $28
    ldh a, [$dd]
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    ldh a, [$dd]
    db $dd
    ld [bc], a
    ld [bc], a
    rst $28
    db $dd
    pop af
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    ldh a, [$dd]
    ld a, [c]
    ld [bc], a
    ld [bc], a
    db $dd
    db $dd
    pop af
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    db $dd
    pop af
    ld a, [c]
    ld [bc], a
    ld [bc], a
    db $dd
    db $dd
    db $dd
    ld a, [c]
    ld [bc], a
    ld [bc], a
    rst $28
    sbc $dd
    sbc $02
    ld [bc], a
    call c, $dcf0
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    sbc $f1
    sbc $02
    ld [bc], a
    call c, $dcdd
    ld a, [c]
    ld [bc], a
    ld [bc], a
    db $dd
    ldh a, [$fd]
    db $fd
    ld [bc], a
    ld [bc], a
    cp l
    cp l
    db $dd
    ld a, [c]
    ld [bc], a
    ld [bc], a
    rst $28
    db $dd
    db $fd
    db $fd
    ld [bc], a
    ld [bc], a
    cp l
    cp l
    pop af
    db $dd
    ld [bc], a
    ld [bc], a
    di
    db $f4
    db $dd
    db $dd
    ld [bc], a
    ld [bc], a
    db $dd
    db $dd
    push af
    or $02
    ld [bc], a
    ld sp, hl
    db $dd
    ld a, [$02dd]
    ld [bc], a
    db $dd
    rst $30
    db $dd
    ld hl, sp+$02
    ld [bc], a
    di
    db $f4
    db $fd
    db $fd
    ld [bc], a
    ld [bc], a
    cp l
    cp l
    push af
    or $02
    ld [bc], a
    ld sp, hl
    sbc $fa
    sbc $02
    ld [bc], a
    call c, $dcf7
    ld hl, sp+$01
    ld bc, $effb
    ld c, b
    push af
    ld c, b
    ei
    ld c, b
    ld bc, $0749
    ld c, c
    dec c
    ld c, c
    inc de
    ld c, c
    add hl, de
    ld c, c
    rra
    ld c, c
    dec h
    ld c, c
    dec hl
    ld c, c
    ld sp, $3749
    ld c, c
    dec a
    ld c, c
    ld b, e
    ld c, c
    ld c, c
    ld c, c
    ld c, a
    ld c, c
    ld d, l
    ld c, c
    ld e, e
    ld c, c
    ld h, c
    ld c, c
    ld h, a
    ld c, c
    ld l, l
    ld c, c
    ld [hl], e
    ld c, c
    ld a, c
    ld c, c
    ld a, a
    ld c, c
    add l
    ld c, c
    adc e
    ld c, c
    sub c
    ld c, c
    sub a
    ld c, c
    sbc l
    ld c, c
    and e
    ld c, c
    xor c
    ld c, c
    xor a
    ld c, c
    or l
    ld c, c
    cp e
    ld c, c
    pop bc
    ld c, c
    rst $00
    ld c, c
    call $d349
    ld c, c
    reti


    ld c, c
    rst $18
    ld c, c
    push hl
    ld c, c
    db $eb
    ld c, c
    pop af
    ld c, c
    rst $30
    ld c, c
    db $fd
    ld c, c
    inc bc
    ld c, d
    add hl, bc
    ld c, d
    rrca
    ld c, d
    dec d
    ld c, d
    dec de
    ld c, d
    ld hl, $274a
    ld c, d
    dec l
    ld c, d
    inc sp
    ld c, d
    add hl, sp
    ld c, d
    ccf
    ld c, d
    ld b, l
    ld c, d
    ld c, e
    ld c, d
    ld d, c
    ld c, d
    ld d, a
    ld c, d
    ld e, l
    ld c, d
    ld h, e
    ld c, d
    ld l, c
    ld c, d
    ld l, a
    ld c, d
    ld [hl], l
    ld c, d
    ld a, e
    ld c, d
    add c
    ld c, d
    add a
    ld c, d
    adc l
    ld c, d
    sub e
    ld c, d
    sbc c
    ld c, d
    sbc a
    ld c, d
    and l
    ld c, d
    xor e
    ld c, d
    or c
    ld c, d
    or a
    ld c, d
    cp l
    ld c, d
    jp $c94a


    ld c, d
    rst $08
    ld c, d
    push de
    ld c, d
    db $db
    ld c, d
    pop hl
    ld c, d
    rst $20
    ld c, d
    db $ed
    ld c, d
    di
    ld c, d
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    dec sp
    inc a
    ld [bc], a
    ld [bc], a
    dec e
    ld e, $3d
    ld a, $02
    ld [bc], a
    jp nz, $c4c3

    push bc
    ld [bc], a
    ld [bc], a
    add b
    add c
    and b
    and c
    ld [bc], a
    ld [bc], a
    add d
    add e
    and d
    and e
    ld [bc], a
    ld [bc], a
    add h
    add l
    and h
    and l
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    and h
    ld c, e
    xor d
    ld c, e
    or b
    ld c, e
    or [hl]
    ld c, e
    cp h
    ld c, e
    jp nz, $c84b

    ld c, e
    adc $4b
    call nc, Call_000_024b
    ld [bc], a
    add h
    add l
    and h
    and l
    inc b
    ld [bc], a
    push af
    or $f6
    rst $30
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    di
    db $f4
    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf
    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    ld [bc], a
    ld [bc], a
    jp $e3c4


    db $e4
    ld [bc], a
    ld [bc], a
    push bc
    jp nz, $e6e5

    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $aa
    xor e
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp b
    cp c
    cp d
    ret c

    reti


    jp c, $0303

    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp e
    cp h
    cp l
    db $db
    call c, $03dd
    inc bc
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    sbc $df
    cp [hl]
    db $ec
    ld c, e
    ld a, [c]
    ld c, e
    db $fc
    ld c, e
    ld b, $4c
    db $10
    ld c, h
    ld a, [de]
    ld c, h
    inc h
    ld c, h
    ld l, $4c
    ld b, b
    ld c, h
    ld d, d
    ld c, h
    ld e, b
    ld c, h
    ld e, [hl]
    ld c, h
    ld h, h
    ld c, h
    ld l, d
    ld c, h
    ld [hl], l
    ld c, h
    add b
    ld c, h
    adc e
    ld c, h
    sub [hl]
    ld c, h
    ld [bc], a
    ld [bc], a
    add h
    add l
    and h
    and l
    inc b
    ld [bc], a
    push af
    or $f6
    rst $30
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    di
    db $f4
    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf
    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    ld [bc], a
    ld [bc], a
    jp $e3c4


    db $e4
    ld [bc], a
    ld [bc], a
    push bc
    jp nz, $e6e5

    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $aa
    xor e
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp b
    cp c
    cp d
    ret c

    reti


    jp c, $0303

    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp e
    cp h
    cp l
    db $db
    call c, $03dd
    inc bc
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    sbc $df
    cp [hl]
    ld b, $04
    ld b, b
    ld b, c
    ld b, d
    or c
    or d
    or e
    ld h, b
    ld h, c
    ld h, d
    pop de
    jp nc, $80d3

    add c
    add d
    add e
    add h
    add l
    and b
    and c
    and d
    and e
    and h
    and l
    ld b, $04
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    add b
    add c
    add d
    add e
    add h
    add l
    and b
    and c
    and d
    and e
    and h
    and l
    ld b, $04
    ld b, b
    ld b, c
    ld b, d
    xor [hl]
    xor a
    or b
    ld h, b
    ld h, c
    ld h, d
    adc $cf
    ret nc

    add b
    add c
    add d
    add e
    add h
    add l
    and b
    and c
    and d
    and e
    and h
    and l
    push bc
    ld c, h
    bit 1, h
    push de
    ld c, h
    rst $18
    ld c, h
    jp hl


    ld c, h
    di
    ld c, h
    db $fd
    ld c, h
    rlca
    ld c, l
    add hl, de
    ld c, l
    dec hl
    ld c, l
    ld sp, $374d
    ld c, l
    dec a
    ld c, l
    ld b, e
    ld c, l
    ld c, [hl]
    ld c, l
    ld e, c
    ld c, l
    ld h, h
    ld c, l
    ld l, a
    ld c, l
    ld a, d
    ld c, l
    sub h
    ld c, l
    xor [hl]
    ld c, l
    ld [bc], a
    ld [bc], a
    add h
    add l
    and h
    and l
    inc b
    ld [bc], a
    push af
    or $f6
    rst $30
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    di
    db $f4
    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf
    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
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
    ld [bc], a
    ld [bc], a
    jp $e3c4


    db $e4
    ld [bc], a
    ld [bc], a
    push bc
    jp nz, $e6e5

    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $aa
    xor e
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp b
    cp c
    cp d
    ret c

    reti


    jp c, $0303

    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp e
    cp h
    cp l
    db $db
    call c, $03dd
    inc bc
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    sbc $df
    cp [hl]
    ld [bc], a
    ld [bc], a
    or b
    or c
    ret nc

    pop de
    ld [bc], a
    ld [bc], a
    ld [hl], h
    ld [hl], l
    sub h
    sub l
    ld [bc], a
    ld [bc], a
    or d
    or e
    jp nc, $02d3

    ld [bc], a
    or h
    or l
    call nc, $02d5
    ld [bc], a
    and [hl]
    and a
    add $c7
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, a
    add [hl]
    add a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld [bc], a
    ld [bc], a
    add b
    add c
    and b
    and c
    ld [bc], a
    ld [bc], a
    add d
    add e
    and d
    and e
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld h, b
    ld b, h
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld b, l
    ld h, e
    ld [bc], a
    ld [bc], a
    add b
    ld h, h
    and b
    and c
    ld [bc], a
    ld [bc], a
    ld h, l
    add e
    and d
    and e
    ld a, [c]
    ld c, l
    ld hl, sp+$4d
    ld [bc], a
    ld c, [hl]
    inc c
    ld c, [hl]
    ld d, $4e
    jr nz, jr_003_4f55

    ld a, [hl+]
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    ld b, [hl]
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld l, d
    ld c, [hl]
    ld [hl], b
    ld c, [hl]
    ld a, e
    ld c, [hl]
    add [hl]
    ld c, [hl]
    sub c
    ld c, [hl]
    sbc h
    ld c, [hl]
    and a
    ld c, [hl]
    xor l
    ld c, [hl]
    or e
    ld c, [hl]
    cp c
    ld c, [hl]
    cp a
    ld c, [hl]
    push bc
    ld c, [hl]
    bit 1, [hl]
    pop de
    ld c, [hl]
    rst $10
    ld c, [hl]
    db $dd
    ld c, [hl]
    db $e3
    ld c, [hl]
    jp hl


    ld c, [hl]
    rst $28
    ld c, [hl]
    push af
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    add h
    add l
    and h
    and l
    inc b
    ld [bc], a
    push af
    or $f6
    rst $30
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f6
    rst $30

jr_003_4f55:
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    di
    db $f4
    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf
    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
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
    ld [bc], a
    ld [bc], a
    jp $e3c4


    db $e4
    ld [bc], a
    ld [bc], a
    push bc
    jp nz, $e6e5

    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $aa
    xor e
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp b
    cp c
    cp d
    ret c

    reti


    jp c, $0303

    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp e
    cp h
    cp l
    db $db
    call c, $03dd
    inc bc
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    sbc $df
    cp [hl]
    ld [bc], a
    ld [bc], a
    or b
    or c
    ret nc

    pop de
    ld [bc], a
    ld [bc], a
    ld [hl], h
    ld [hl], l
    sub h
    sub l
    ld [bc], a
    ld [bc], a
    or d
    or e
    jp nc, $02d3

    ld [bc], a
    or h
    or l
    call nc, $02d5
    ld [bc], a
    and [hl]
    and a
    add $c7
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, a
    add [hl]
    add a
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld [hl], e
    sub d
    sub e
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    adc [hl]
    adc a
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    sub b
    sub c
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld [bc], a
    ld [bc], a
    add b
    add c
    and b
    and c
    ld [bc], a
    ld [bc], a
    add d
    add e
    and d
    and e
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    ld [bc], a
    ld [bc], a
    ld a, d
    ld a, e
    sbc d
    sbc e
    inc bc
    ld [bc], a
    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    inc bc
    ld [bc], a
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$0203]
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    dec sp
    ld c, a
    ld b, c
    ld c, a
    ld c, e
    ld c, a
    ld d, l
    ld c, a
    ld e, a
    ld c, a
    ld l, c
    ld c, a
    ld [hl], e
    ld c, a
    ld a, l
    ld c, a
    adc a
    ld c, a
    and c
    ld c, a
    and a
    ld c, a
    xor l
    ld c, a
    or e
    ld c, a
    cp c
    ld c, a
    call nz, $cf4f
    ld c, a
    jp c, $e54f

    ld c, a
    ldh a, [rVBK]
    or $4f
    db $fc
    ld c, a
    ld [bc], a
    ld d, b
    ld [$0e50], sp
    ld d, b
    inc d
    ld d, b
    ld a, [de]
    ld d, b
    jr nz, @+$52

    ld h, $50
    inc l
    ld d, b
    ld [hl-], a
    ld d, b
    jr c, jr_003_50f0

    ld a, $50
    ld b, h
    ld d, b
    ld c, d
    ld d, b
    ld d, d
    ld d, b
    ld e, d
    ld d, b
    ld [bc], a
    ld [bc], a
    add h
    add l
    and h
    and l
    inc b
    ld [bc], a
    push af
    or $f6
    rst $30
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    di
    db $f4
    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf
    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
    inc b
    inc b
    ld b, b
    ld b, c

jr_003_50f0:
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    or b
    or c
    add [hl]
    add a
    ret nc

    pop de
    and [hl]
    and a
    or d
    or e
    add $c7
    jp nc, $02d3

    ld [bc], a
    jp $e3c4


    db $e4
    ld [bc], a
    ld [bc], a
    push bc
    jp nz, $e6e5

    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $aa
    xor e
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp b
    cp c
    cp d
    ret c

    reti


    jp c, $0303

    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp e
    cp h
    cp l
    db $db
    call c, $03dd
    inc bc
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    sbc $df
    cp [hl]
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld [hl], d
    ld [hl], e
    add b
    add c
    sub d
    sub e
    and b
    and c
    and d
    and e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    or b
    or c
    add [hl]
    add a
    or h
    or l
    add b
    add c
    call nc, $a0d5
    and c
    and d
    and e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    or b
    or c
    add [hl]
    ld b, h
    ld b, l
    ld a, a
    and [hl]
    ld h, h
    ld h, l
    sbc a
    add $c7
    jp nc, $02d3

    ld [bc], a
    or h
    or l
    call nc, $02d5
    ld [bc], a
    and [hl]
    and a
    add $c7
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, a
    add [hl]
    add a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld [bc], a
    ld [bc], a
    add b
    add c
    and b
    and c
    ld [bc], a
    ld [bc], a
    add d
    add e
    and d
    and e
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld h, b
    ld b, h
    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, e
    ld b, l
    ld h, e
    ld [bc], a
    ld [bc], a
    add b
    ld h, h
    and b
    and c
    ld [bc], a
    ld [bc], a
    ld h, l
    add e
    and d
    and e
    xor d
    ld d, b
    or b
    ld d, b
    cp d
    ld d, b
    call nz, $ce50
    ld d, b
    ret c

    ld d, b
    ld [c], a
    ld d, b
    db $ec
    ld d, b
    cp $50
    db $10
    ld d, c
    ld d, $51
    inc e
    ld d, c
    ld [hl+], a
    ld d, c
    jr z, jr_003_5244

    inc sp
    ld d, c
    ld a, $51
    ld c, c
    ld d, c
    ld d, h
    ld d, c
    ld e, a
    ld d, c
    ld [hl], c
    ld d, c
    add e
    ld d, c
    sub l
    ld d, c
    sbc e
    ld d, c
    and c
    ld d, c
    and a
    ld d, c
    xor l
    ld d, c
    or e
    ld d, c
    cp c
    ld d, c
    cp a
    ld d, c
    push bc
    ld d, c
    bit 2, c
    pop de
    ld d, c
    ld [bc], a
    ld [bc], a
    add h
    add l
    and h
    and l
    inc b
    ld [bc], a
    push af
    or $f6
    rst $30
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    or $f6
    rst $30
    inc b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    di
    di

jr_003_5244:
    db $f4
    inc b
    ld [bc], a
    ld l, [hl]
    ld l, a
    xor [hl]
    xor a
    adc [hl]
    adc a
    adc $cf
    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    inc b
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld h, h
    ld h, l
    add b
    add c
    add d
    add e
    and b
    and c
    and d
    and e
    ld [bc], a
    ld [bc], a
    jp $e3c4


    db $e4
    ld [bc], a
    ld [bc], a
    push bc
    jp nz, $e6e5

    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $aa
    xor e
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp b
    cp c
    cp d
    ret c

    reti


    jp c, $0303

    dec de
    inc e
    dec e
    dec sp
    inc a
    dec a
    ld e, e
    ld e, h
    ld e, l
    inc bc
    inc bc
    dec de
    inc e
    dec e
    cp e
    cp h
    cp l
    db $db
    call c, $03dd
    inc bc
    dec de
    inc e
    dec e
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    ld e, $1f
    ld a, [hl]
    ld a, $3f
    sbc [hl]
    sbc $df
    cp [hl]
    ld b, $04
    dec de
    inc e
    dec e
    ld b, b
    ld b, c
    ld b, d
    dec sp
    inc a
    dec a
    ld h, b
    ld h, c
    ld h, d
    ld e, e
    ld e, h
    ld e, l
    add b
    add c
    add d
    ldh [$e1], a
    ld [c], a
    and b
    and c
    and d
    ld b, $04
    dec de
    inc e
    dec e
    ld b, e
    ld b, h
    ld b, l
    dec sp
    inc a
    dec a
    ld h, e
    ld h, h
    ld h, l
    ld e, e
    ld e, h
    ld e, l
    add e
    add h
    add l
    ldh [$e1], a
    ld [c], a
    and e
    and h
    and l
    ld b, $04
    dec de
    inc e
    dec e
    ld b, b
    ld b, c
    ld b, d
    ld hl, sp-$07
    ld a, [$6160]
    ld h, d
    ei
    db $fc
    db $fd
    add b
    add c
    add d
    ldh [$e1], a
    ld [c], a
    and b
    and c
    and d
    ld b, $04
    ld e, $1f
    ld a, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld a, $3f
    sbc [hl]
    ld h, b
    ld h, c
    ld h, d
    sbc $df
    cp [hl]
    add b
    add c
    add d
    ldh [$e1], a
    ld [c], a
    and b
    and c
    and d
    ld b, $04
    ld e, $1f
    ld a, [hl]
    ld b, e
    ld b, h
    ld b, l
    ld a, $3f
    sbc [hl]
    ld h, e
    ld h, h
    ld h, l
    sbc $df
    cp [hl]
    add e
    add h
    add l
    ldh [$e1], a
    ld [c], a
    and e
    and h
    and l
    ld b, $04
    ld e, $1f
    ld a, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld a, $3f
    sbc [hl]
    ld h, b
    ld h, c
    ld h, d
    sbc $df
    cp [hl]
    add b
    ld h, [hl]
    ld h, a
    ldh [$e1], a
    ld [c], a
    and b
    add [hl]
    add a
    rla
    ld d, d
    dec e
    ld d, d
    daa
    ld d, d
    ld sp, $3b52
    ld d, d
    ld b, l
    ld d, d
    ld c, a
    ld d, d
    ld e, c
    ld d, d
    ld l, e
    ld d, d
    ld a, l
    ld d, d
    add e
    ld d, d
    adc c
    ld d, d
    adc a
    ld d, d
    sub l
    ld d, d
    and b
    ld d, d
    xor e
    ld d, d
    or [hl]
    ld d, d
    pop bc
    ld d, d
    call z, $e652
    ld d, d
    nop
    ld d, e
    ld a, [de]
    ld d, e
    inc [hl]
    ld d, e
    ld c, [hl]
    ld d, e

unkTiles22::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTiles21::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTiles20::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTiles1F::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTiles1E::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTiles1D::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTiles1C::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTiles1B::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles1A::
    db $04, $04
    db $40, $41, $42, $43
    db $44, $45, $64, $65
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles19::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTiles18::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTiles17::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTiles16::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTiles15::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTiles14::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d,
    db $5b, $5c, $5d

unkTiles13::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTiles12::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTiles11::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTiles10::
    db $06, $04
    db $1b, $1c, $1d, $73, $74, $75
    db $f8, $f9, $fa, $93, $94, $95
    db $b0, $b1, $b2, $b3, $b4, $b5
    db $d0, $d1, $d2, $d3, $d4, $d5

unkTilesF::
    db $06, $04
    db $1b, $1c, $1d, $73, $74, $75
    db $3b, $3c, $3d, $93, $94, $95
    db $b0, $b1, $b2, $b3, $b4, $b5
    db $d0, $d1, $d2, $d3, $d4, $d5

unkTilesE::
    db $06, $04
    db $1e, $1f, $7e, $73, $74, $75
    db $3e, $3f, $9e, $93, $94, $95
    db $b0, $b1, $b2, $b3, $b4, $b5
    db $d0, $d1, $d2, $d3, $d4, $d5

unkTilesPointers2::
    dw unkTiles22
    dw unkTiles21
    dw unkTiles20
    dw unkTiles1F
    dw unkTiles1E
    dw unkTiles1D
    dw unkTiles1C
    dw unkTiles1B
    dw unkTiles1A
    dw unkTiles19
    dw unkTiles18
    dw unkTiles17
    dw unkTiles16
    dw unkTiles15
    dw unkTiles14
    dw unkTiles13
    dw unkTiles12
    dw unkTiles11
    dw unkTiles10
    dw unkTilesF
    dw unkTilesE

unkTilesD::
    db $14, $12
    db $e6, $00, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e0, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $00, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e0, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $01, $02, $03, $04, $05, $06, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $20, $21, $22, $23, $24, $25, $26, $27, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $40, $41, $42, $43, $44, $45, $46, $47, $e6, $e6, $e0, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $60, $61, $62, $63, $64, $65, $66, $67, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $00, $e6, $e6, $e6, $e6, $80, $81, $82, $83, $84, $85, $86, $87, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $e6, $e6, $e6, $e6, $e0, $e6
    db $e6, $e6, $e6, $e6, $e6, $00, $e6, $e1, $e2, $e3, $e4, $e5, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $00, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $00, $e6, $e6, $e6, $e6, $e0
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6
    db $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e0, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6, $e6

unkTilesC::
    db $06, $06
    db $08, $09, $0a, $0b, $0c, $0d
    db $28, $29, $2a, $2b, $2c, $2d
    db $48, $49, $4a, $4b, $4c, $4d
    db $68, $69, $6a, $6b, $6c, $6d
    db $88, $89, $8a, $8b, $8c, $8d
    db $a8, $a9, $aa, $ab, $ac, $ad

unkTilesB::
    db $14, $12
    db $c5, $c5, $c5, $c5, $c5, $c5, $c5, $00, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $e0, $c5, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $00, $c5, $c5, $c5, $c5, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5
    db $c5, $00, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $8e, $8f, $90, $91, $c5, $00, $c5
    db $c5, $c5, $c5, $c5, $00, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $ae, $af, $b0, $b1, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $ce, $cf, $d0, $d1, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $92, $93, $94, $c5, $c5, $00, $c5, $ee, $ef, $f0, $f1, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $b2, $b3, $b4, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5, $c5
    db $c5, $c5, $c5, $c5, $c5, $c5, $d2, $d3, $d4, $c5, $c5, $c5, $c5, $c5, $e0, $c5, $c5, $c5, $c5, $00
    db $c5, $c5, $c5, $c5, $0e, $0f, $10, $11, $12, $13, $11, $11, $12, $10, $10, $10, $10, $11, $12, $13
    db $c5, $c5, $c5, $00, $2e, $2f, $30, $31, $32, $33, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14
    db $c5, $c5, $c5, $c5, $4e, $4f, $50, $51, $52, $53, $14, $14, $15, $16, $17, $17, $11, $11, $12, $13
    db $c5, $c5, $c5, $c5, $6e, $6f, $70, $71, $72, $73, $37, $34, $35, $36, $37, $37, $37, $37, $37, $38
    db $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $11, $12, $13
    db $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14, $14
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $14, $14, $6f, $14, $14, $14, $14, $14, $14, $14, $14, $14, $6f, $14, $14, $14, $14, $14, $14, $14

unkTilesA::
    db $03, $03
    db $92, $93, $94
    db $95, $96, $97
    db $b5, $b6, $b7

unkTiles9::
    db $03, $03
    db $1c, $1d, $1e
    db $54, $55, $56
    db $74, $75, $76

unkTiles8::
    db $03, $03
    db $1c, $1d, $1e
    db $57, $58, $59
    db $77, $78, $79

unkTiles7::
    db $03, $03
    db $1c, $1d, $1e
    db $5a, $5b, $5c
    db $7a, $7b, $7c

unkTiles6::
    db $03, $03
    db $39, $3a, $3b
    db $54, $55, $56
    db $74, $75, $76

unkTiles5::
    db $03, $03
    db $39, $3a, $3b
    db $57, $58, $59
    db $77, $78, $79

unkTiles4::
    db $03, $03
    db $39, $3a, $3b
    db $5a, $5b, $5c
    db $7a, $7b, $7c

unkTiles3::
    db $03, $03
    db $3c, $3d, $3e
    db $54, $55, $56
    db $74, $75, $76

unkTiles2::
    db $03, $03
    db $3c, $3d, $3e
    db $57, $58, $59
    db $77, $78, $79

unkTiles::
    db $03, $03
    db $3c, $3d, $3e
    db $5a, $5b, $5c
    db $7a, $7b, $7c

house_tiles::
    db $14, $12
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $69, $6a, $6b, $ff, $65, $66, $67, $68, $69, $6a, $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff, $65
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff, $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff, $65, $66
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $65, $66, $67, $68, $69, $ff, $ff, $ff, $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff
    db $67, $68, $69, $6a, $6b, $ff, $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff, $ff, $65, $66, $67, $68
    db $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff, $ff, $ff, $65, $66, $67, $68, $69, $6a, $6b, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63
    db $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83, $83

unkTiles23::
    db $04, $07
    db $ff, $ff, $ff, $ff
    db $1c, $1d, $1e, $1f
    db $3c, $3d, $3e, $3f
    db $5c, $5d, $5e, $5f
    db $7c, $7d, $7e, $7f
    db $9c, $9d, $9e, $9f
    db $bc, $bd, $be, $bf

unkTiles24::
    db $04, $07
    db $ff, $ff, $ff, $ff
    db $18, $19, $1a, $1b
    db $38, $39, $3a, $3b
    db $58, $59, $5a, $5b
    db $78, $79, $7a, $7b
    db $98, $99, $9a, $9b
    db $b8, $b9, $ba, $bb

unkTiles25::
    db $04, $07
    db $d8, $d9, $da, $db
    db $f8, $f9, $fa, $fb
    db $dc, $dd, $de, $df
    db $5c, $5d, $5e, $5f
    db $7c, $7d, $7e, $7f
    db $9c, $9d, $9e, $9f
    db $bc, $bd, $be, $bf

unkTilesPointers::
    dw unkTilesD
    dw unkTilesC
    dw unkTilesB
    dw unkTilesA
    dw unkTiles9
    dw unkTiles8
    dw unkTiles7
    dw unkTiles6
    dw unkTiles5
    dw unkTiles4
    dw unkTiles3
    dw unkTiles2
    dw unkTiles
    dw house_tiles
    dw unkTiles23
    dw unkTiles24
    dw unkTiles25

;charlie?
unkTiles26::
    db $04, $07
    db $ff, $ff, $ff, $ff
    db $1c, $1d, $1e, $1f
    db $3c, $3d, $3e, $3f
    db $5c, $5d, $5e, $5f
    db $7c, $7d, $7e, $7f
    db $9c, $9d, $9e, $9f
    db $bc, $bd, $be, $bf

unkTiles27::
    db $04, $07
    db $ff, $ff, $ff, $ff
    db $18, $19, $1a, $1b
    db $38, $39, $3a, $3b
    db $58, $59, $5a, $5b
    db $78, $79, $7a, $7b
    db $98, $99, $9a, $9b
    db $b8, $b9, $ba, $bb

unkTiles28::
    db $04, $07
    db $d8, $d9, $da, $db
    db $f8, $f9, $fa, $fb
    db $dc, $dd, $de, $df
    db $5c, $5d, $5e, $5f
    db $7c, $7d, $7e, $7f
    db $9c, $9d, $9e, $9f
    db $bc, $bd, $be, $bf

unkTiles29::
    db $02, $03
    db $c4, $c5
    db $e4, $e5
    db $ac, $ad

unkAnimPointers::
    dw $5a8f
    dw $5ad7
    dw $5bb7
    dw $5bcd
    dw $5be3
    dw $5bf9
    dw $5c7f
    dw $5cf7
    dw $5d6f
    dw $5d93
    dw $5e31
    dw $5e3f
    dw $5eb7

;effects????
unkAnimSet1::
    dw $5a97
    dw $5aab
    ;actual push sweat effect
    dw $5ab9
    ;mob barrier destroy effect 
    dw $5ac5

    dw 8, ANIM_FRAME_Chalvo_Walk1
    dw 8, ANIM_FRAME_Chalvo_Stand
    dw 8, ANIM_FRAME_Chalvo_Walk2
    dw 8, ANIM_FRAME_Chalvo_Stand
    dw ANIM_COMMAND_LOOP, 0

    dw 7, ANIM_FRAME_Chalvo_Walk2
    dw 7, ANIM_FRAME_Chalvo_BallUp
    dw 7, ANIM_FRAME_Chalvo_BallDown
    dw ANIM_COMMAND_STOP
    
    ;actual push sweat effect
    dw 6, ANIM_FRAME_Chalvo_PushSweat1
    dw 6, ANIM_FRAME_Chalvo_PushSweat2
    dw ANIM_COMMAND_LOOP, 0
    
    ;mob barrier destroy effect 
    dw 7, $27
    dw 7, $28
    dw 7, $29
    dw 7, $2a
    dw ANIM_COMMAND_STOP

; this is the one for chalvo, so its easiest to test
unkAnimSet2::
    ;idle
    dw $5aef
    ;walk
    dw $5af5
    ;fall
    dw $5b09
    ;jump
    dw $5b0f
    ;push
    dw $5b15
    ;uncurl
    dw $5b29
    ;pushstand?
    dw $5b33
    ;?????
    dw $5b39
    ;?????2
    dw $5b5f
    ;?????3
    dw $5b85
    ;?????4
    dw $5b9b
    ;definitelyNotBallDie
    dw $5bb1

    ;idle anim
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Chalvo_Stand
    dw ANIM_COMMAND_STOP

    ;walk
    dw 8, ANIM_FRAME_Chalvo_Walk1
    dw 8, ANIM_FRAME_Chalvo_Stand
    dw 8, ANIM_FRAME_Chalvo_Walk2
    dw 8, ANIM_FRAME_Chalvo_Stand
    dw ANIM_COMMAND_LOOP, 0
    
    ;fall
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Chalvo_Fall
    dw ANIM_COMMAND_STOP
    
    ;jump
    dw 12, ANIM_FRAME_Chalvo_Jump
    dw ANIM_COMMAND_STOP
    
    ;push
    dw 16, ANIM_FRAME_Chalvo_Push1_Copy
    dw 16, ANIM_FRAME_Chalvo_PushStand
    dw 16, ANIM_FRAME_Chalvo_Push2
    dw 16, ANIM_FRAME_Chalvo_PushStand
    dw ANIM_COMMAND_LOOP, 0
    
    ;uncurl
    dw 8, ANIM_FRAME_Chalvo_Jump
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Chalvo_Fall
    dw ANIM_COMMAND_STOP
    
    ;pushstand?
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Chalvo_PushStand
    dw ANIM_COMMAND_STOP

    ;?????
    dw 4, $60,
    dw 4, $61,
    dw 4, $62,
    dw 4, $63,
    dw 4, $64,
    dw 4, $65,
    dw 2, $66,
    dw 2, $67,
    dw 2, $68,
    dw ANIM_COMMAND_STOP

    ;?????2
    dw 4, $6e,
    dw 4, $6f,
    dw 4, $70,
    dw 4, $71,
    dw 4, $72,
    dw 4, $73,
    dw 2, $74,
    dw 2, $75,
    dw 2, $76,
    dw ANIM_COMMAND_STOP

    ;?????3
    dw 6, $69,
    dw 6, $6a,
    dw 6, $6b,
    dw 6, $6c,
    dw 6, $6d,
    dw ANIM_COMMAND_STOP

    ;?????4
    dw 6, $77,
    dw 6, $78,
    dw 6, $79,
    dw 6, $7a,
    dw 6, $7b,
    dw ANIM_COMMAND_STOP
    
    ;definitelyNotBallDie
    dw 64, ANIM_FRAME_Chalvo_BallDie
    dw ANIM_COMMAND_STOP

;onehitenemy
unkAnimSet3::
    ;move
    dw $5bbb
    ;die
    dw $5bc7

    ;move
    dw 8, ANIM_FRAME_Stage_OneHitEnemy1
    dw 8, ANIM_FRAME_Stage_OneHitEnemy2
    dw ANIM_COMMAND_LOOP, 0

    ;die
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Stage_OneHitEnemyDie
    dw ANIM_COMMAND_STOP

;twohitenemy
unkAnimSet4::
    ;move
    dw $5bd1
    ;die
    dw $5bdd

    ;move
    dw 8, ANIM_FRAME_Stage_TwoHitEnemy1
    dw 8, ANIM_FRAME_Stage_TwoHitEnemy2
    dw ANIM_COMMAND_LOOP, 0

    ;die
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Stage_TwoHitEnemyDie
    dw ANIM_COMMAND_STOP

;nohitenemy
unkAnimSet5::
    ;move
    dw $5be7
    ;die
    dw $5bf3

    ;move
    dw 8, ANIM_FRAME_Stage_NoHitEnemy1
    dw 8, ANIM_FRAME_Stage_NoHitEnemy2
    dw ANIM_COMMAND_LOOP, 0

    ;die
    dw ANIM_COMMAND_INDEFINITE, ANIM_FRAME_Stage_NoHitEnemyDie
    dw ANIM_COMMAND_STOP

unkAnimSet6::
    dw $5c01
    dw $5c07
    dw $5c65
    dw $5c6b

    dw ANIM_COMMAND_INDEFINITE, $21, 
    dw ANIM_COMMAND_STOP

    dw 5, $21
    dw 5, $23
    dw 10, $21
    dw 5, $23
    dw 10, $21
    dw 5, $23
    dw 5, $21
    dw 5, $23
    dw 10, $21
    dw 5, $23
    dw 5, $21
    dw 5, $21
    dw 5, $23
    dw 10, $21
    dw 5, $23
    dw 10, $21
    dw 5, $23
    dw 5, $21
    dw 5, $23
    dw 10, $21
    dw 5, $23
    dw 5, $21
    dw 30, $23
    dw ANIM_COMMAND_STOP

    dw 80, $24
    dw ANIM_COMMAND_STOP

    dw 8, $20
    dw 8, $21
    dw 8, $22
    dw 8, $21
    dw ANIM_COMMAND_LOOP, 0

unkAnimSet7::
    dw $5c85
    dw $5ce7
    dw $5cf1

    dw $05, $2c
    dw $05, $2b
    dw $0a, $2c
    dw $05, $2b
    dw $0a, $2c
    dw $05, $2b
    dw $05, $2c
    dw $05, $2b
    dw $0a, $2c
    dw $05, $2b
    dw $05, $2c
    dw $05, $2c
    dw $05, $2b
    dw $0a, $2c
    dw $05, $2b
    dw $0a, $2c
    dw $05, $2b
    dw $05, $2c
    dw $05, $2b
    dw $0a, $2c
    dw $05, $2b
    dw $05, $2c
    dw $1e, $2b
    dw $01, $2c
    dw ANIM_COMMAND_STOP

    dw $3c, $2d
    dw $01, $2c
    dw ANIM_COMMAND_STOP

    dw $3c, $2d
    dw ANIM_COMMAND_STOP

unkAnimSet8::
    dw $5cfd
    dw $5d5f
    dw $5d69

    dw $05, $33
    dw $05, $34
    dw $0a, $33
    dw $05, $34
    dw $0a, $33
    dw $05, $34
    dw $05, $33
    dw $05, $34
    dw $0a, $33
    dw $05, $34
    dw $05, $33
    dw $05, $33
    dw $05, $34
    dw $0a, $33
    dw $05, $34
    dw $0a, $33
    dw $05, $34
    dw $05, $33
    dw $05, $34
    dw $0a, $33
    dw $05, $34
    dw $05, $33
    dw $1e, $34
    dw $01, $33
    dw ANIM_COMMAND_STOP

    dw $3c, $35
    dw $01, $33
    dw ANIM_COMMAND_STOP

    dw $3c, $35
    dw ANIM_COMMAND_STOP

unkAnimSet9::
    dw $5d75 
    dw $5d81
    dw $5d8d

    dw $20, $37
    dw $20, $38
    dw ANIM_COMMAND_LOOP, 0

    dw $08, $39
    dw $08, $3a
    dw ANIM_COMMAND_LOOP, 0

    dw $20, $3b
    dw ANIM_COMMAND_STOP

unkAnimSetA::
    dw $5d9b
    dw $5dfd
    dw $5e1f
    dw $5e25

    dw $05, $3c
    dw $05, $3e
    dw $0a, $3c
    dw $05, $3e
    dw $0a, $3c
    dw $05, $3e
    dw $05, $3c
    dw $05, $3e
    dw $0a, $3c
    dw $05, $3e
    dw $05, $3c
    dw $05, $3c
    dw $05, $3e
    dw $0a, $3c
    dw $05, $3e
    dw $0a, $3c
    dw $05, $3e
    dw $05, $3c
    dw $05, $3e
    dw $0a, $3c
    dw $05, $3e
    dw $05, $3c
    dw $1e, $3e
    dw $01, $3c
    dw ANIM_COMMAND_STOP

    dw $08, $3f
    dw $08, $40
    dw $08, $3f
    dw $08, $40
    dw $08, $3f
    dw $08, $40
    dw $08, $3f
    dw $08, $40
    dw ANIM_COMMAND_STOP

    dw $20, $41
    dw ANIM_COMMAND_STOP

    dw $08, $3c
    dw $08, $3d
    dw ANIM_COMMAND_LOOP, 0

unkAnimSetB::
    dw $5e33

    dw $08, $43
    dw $08, $44
    dw ANIM_COMMAND_LOOP, 0

unkAnimSetC::
    dw $5e45
    dw $5ea7
    dw $5eb1

    dw $05, $46
    dw $05, $45
    dw $0a, $46
    dw $05, $45
    dw $0a, $46
    dw $05, $45
    dw $05, $46
    dw $05, $45
    dw $0a, $46
    dw $05, $45
    dw $05, $46
    dw $05, $46
    dw $05, $45
    dw $0a, $46
    dw $05, $45
    dw $0a, $46
    dw $05, $45
    dw $05, $46
    dw $05, $45
    dw $0a, $46
    dw $05, $45
    dw $05, $46
    dw $1e, $45
    dw $01, $46
    dw ANIM_COMMAND_STOP
    
    dw $3c, $47
    dw $01, $46
    dw ANIM_COMMAND_STOP
    
    dw $3c, $47
    dw ANIM_COMMAND_STOP

unkAnimSetD::
    dw $5ebd
    dw $5ed1
    dw $5ee5

    dw $08, $4b
    dw $08, $4c
    dw $08, $4d
    dw $08, $4c
    dw ANIM_COMMAND_LOOP, 0
    
    dw $08, $4e
    dw $08, $4f
    dw $08, $50
    dw $08, $4f
    dw ANIM_COMMAND_LOOP, 0

    dw $08, $51
    dw $08, $52
    dw $08, $53
    dw $08, $52
    dw ANIM_COMMAND_LOOP, 0

unkData::
    db $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17
    db $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $f0, $0d, $0f, $f9, $f0, $0d, $0f
    db $f9, $f0, $0d, $0f, $f9, $f0, $0d, $0f, $f9, $f0, $0d, $0f, $f9, $f0, $0d, $0f
    db $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17
    db $f9, $f0, $0d, $0f, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f8, $e8, $0f, $17
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17
    db $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17, $f9, $e8, $0d, $17
    db $00, $00, $00, $00, $00, $00, $00, $00, $fa, $f2, $0b, $0b, $f8, $f0, $0f, $0f
    db $fa, $f2, $0b, $0b, $f8, $f0, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
    db $fa, $f2, $0b, $0b, $f8, $f0, $0f, $0f, $fa, $f2, $0b, $0b, $f8, $f0, $0f, $0f
    db $00, $00, $00, $00, $00, $00, $00, $00, $fa, $f2, $0b, $0b, $f8, $f0, $0f, $0f
    db $fa, $f2, $0b, $0b, $f8, $f0, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f
    db $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $e8, $e0, $2f, $1f, $0c, $e0, $0b, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f
    db $f8, $f0, $0f, $0f, $f8, $f0, $0f, $0f, $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f
    db $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f
    db $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f, $f0, $e0, $1f, $1f
    db $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $00, $df, $17, $20, $e8, $e0, $0b, $17, $fc, $f4, $07, $07, $fc, $f4, $07, $07
    db $fc, $f4, $07, $07, $fc, $f4, $07, $07, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f, $e8, $e0, $2f, $1f
    db $00, $e0, $17, $1f, $e8, $e0, $0b, $0f, $00, $00, $00, $32, $28, $1e, $14, $0a
    db $1b, $1c, $3b, $3c, $1d, $1e, $3d, $3e, $1b, $1c, $3b, $3c, $1d, $1e, $3d, $3e
    db $1b, $1c, $3b, $3c, $1d, $1e, $3d, $3e, $00, $00, $00, $0a, $0a, $0a, $0a, $0a
    db $80, $81, $a0, $a1, $82, $83, $a2, $a3, $80, $81, $a0, $a1, $82, $83, $a2, $a3
    db $80, $81, $a0, $a1, $82, $83, $a2, $a3, $00, $00, $00, $14, $28, $50, $28, $14
    db $40, $41, $60, $61, $42, $43, $62, $63, $40, $41, $60, $61, $42, $43, $62, $63
    db $40, $41, $60, $61, $42, $43, $62, $63, $fa, $18, $c8, $11, $bb, $61, $d5, $c7
    db $bc, $61, $01, $62, $59, $62, $bf, $62, $1e, $63, $6a, $63, $c2, $63, $2a, $64
    db $82, $64, $c9, $11, $40, $c1, $3e, $0c, $21, $00, $00, $19, $77, $78, $c6, $10
    db $21, $04, $00, $19, $77, $79, $c6, $20, $21, $05, $00, $19, $77, $3e, $12, $21
    db $01, $00, $19, $77, $3e, $26, $21, $02, $00, $19, $77, $3e, $00, $21, $06, $00
    db $19, $77, $3e, $08, $21, $07, $00, $19, $77, $3e, $10, $21, $1a, $00, $19, $77
    db $3e, $20, $21, $1b, $00, $19, $77, $c9, $11, $40, $c1, $3e, $0c, $21, $00, $00
    db $19, $77, $78, $c6, $18, $21, $04, $00, $19, $77, $79, $c6, $20, $21, $05, $00
    db $19, $77, $3e, $13, $21, $01, $00, $19, $77, $3e, $2c, $21, $02, $00, $19, $77
    db $21, $17, $00, $19, $77, $3e, $2e, $21, $18, $00, $19, $77, $3e, $00, $21, $06
    db $00, $19, $77, $3e, $08, $21, $07, $00, $19, $77, $3e, $18, $21, $1a, $00, $19
    db $77, $3e, $20, $21, $1b, $00, $19, $77, $3e, $04, $21, $1d, $00, $19, $77, $c9
    db $11, $00, $c2, $3e, $05, $cd, $c7, $26, $fa, $81, $c9, $3c, $ea, $81, $c9, $3e
    db $0c, $21, $00, $00, $19, $77, $78, $c6, $08, $21, $04, $00, $19, $77, $79, $c6
    db $10, $21, $05, $00, $19, $77, $3e, $06, $21, $01, $00, $19, $77, $3e, $02, $21
    db $1e, $00, $19, $77, $3e, $30, $21, $02, $00, $19, $77, $3e, $10, $21, $0e, $00
    db $19, $77, $3e, $04, $21, $06, $00, $19, $77, $3e, $18, $21, $07, $00, $19, $77
    db $fa, $81, $c9, $fe, $02, $20, $0e, $3e, $2f, $21, $02, $00, $19, $77, $3e, $08
    db $21, $07, $00, $19, $77, $c9, $11, $00, $c2, $3e, $05, $cd, $c7, $26, $fa, $81
    db $c9, $3c, $ea, $81, $c9, $3e, $0c, $21, $00, $00, $19, $77, $78, $c6, $08, $21
    db $04, $00, $19, $77, $79, $c6, $10, $21, $05, $00, $19, $77, $3e, $06, $21, $01
    db $00, $19, $77, $3e, $02, $21, $1e, $00, $19, $77, $3e, $31, $21, $02, $00, $19
    db $77, $3e, $10, $21, $0e, $00, $19, $77, $3e, $04, $21, $06, $00, $19, $77, $3e
    db $08, $21, $07, $00, $19, $77, $fa, $81, $c9, $fe, $01, $20, $07, $3e, $30, $21
    db $0e, $00, $19, $77, $c9, $11, $40, $c1, $3e, $2c, $21, $00, $00, $19, $77, $78
    db $c6, $10, $21, $04, $00, $19, $77, $79, $c6, $20, $21, $05, $00, $19, $77, $3e
    db $16, $21, $01, $00, $19, $77, $3e, $37, $21, $02, $00, $19, $77, $3e, $00, $21
    db $06, $00, $19, $77, $3e, $03, $21, $0e, $00, $19, $77, $3e, $08, $21, $07, $00
    db $19, $77, $3e, $10, $21, $1a, $00, $19, $77, $3e, $20, $21, $1b, $00, $19, $77
    db $c9, $11, $40, $c1, $3e, $0c, $21, $00, $00, $19, $77, $78, $c6, $18, $21, $04
    db $00, $19, $77, $79, $c6, $20, $21, $05, $00, $19, $77, $3e, $17, $21, $01, $00
    db $19, $77, $3e, $3c, $21, $02, $00, $19, $77, $21, $17, $00, $19, $77, $3e, $42
    db $21, $18, $00, $19, $77, $3e, $00, $21, $06, $00, $19, $77, $3e, $08, $21, $07
    db $00, $19, $77, $3e, $18, $21, $1a, $00, $19, $77, $3e, $20, $21, $1b, $00, $19
    db $77, $3e, $04, $21, $1d, $00, $19, $77, $c9, $11, $00, $c2, $3e, $05, $cd, $c7
    db $26, $3e, $08, $21, $00, $00, $19, $77, $78, $c6, $08, $21, $04, $00, $19, $77
    db $79, $c6, $10, $21, $05, $00, $19, $77, $3e, $18, $21, $01, $00, $19, $77, $3e
    db $43, $21, $02, $00, $19, $77, $3e, $10, $21, $0e, $00, $19, $77, $3e, $04, $21
    db $06, $00, $19, $77, $fa, $81, $c9, $87, $87, $87, $c6, $c8, $21, $0e, $00, $19
    db $77, $d6, $0a, $67, $fa, $81, $c9, $cb, $37, $2f, $3c, $84, $21, $1f, $00, $19
    db $77, $fa, $81, $c9, $3c, $ea, $81, $c9, $fe, $04, $20, $04, $af, $ea, $81, $c9
    db $c9, $11, $40, $c1, $3e, $0c, $21, $00, $00, $19, $77, $78, $c6, $18, $21, $04
    db $00, $19, $77, $79, $c6, $20, $21, $05, $00, $19, $77, $3e, $1a, $21, $01, $00
    db $19, $77, $3e, $46, $21, $02, $00, $19, $77, $21, $17, $00, $19, $77, $3e, $48
    db $21, $18, $00, $19, $77, $3e, $00, $21, $06, $00, $19, $77, $3e, $08, $21, $07
    db $00, $19, $77, $3e, $18, $21, $1a, $00, $19, $77, $3e, $20, $21, $1b, $00, $19
    db $77, $3e, $04, $21, $1d, $00, $19, $77, $c9, $11, $40, $c1, $3e, $0c, $21, $00
    db $00, $19, $77, $78, $c6, $18, $21, $04, $00, $19, $77, $79, $c6, $20, $21, $05
    db $00, $19, $77, $3e, $1a, $21, $01, $00, $19, $77, $3e, $46, $21, $02, $00, $19
    db $77, $21, $17, $00, $19, $77, $3e, $48, $21, $18, $00, $19, $77, $3e, $00, $21
    db $06, $00, $19, $77, $3e, $08, $21, $07, $00, $19, $77, $3e, $18, $21, $1a, $00
    db $19, $77, $3e, $20, $21, $1b, $00, $19, $77, $3e, $0a, $21, $1d, $00, $19, $77
    db $c9, $fa, $0c, $c8, $11, $e8, $64, $d5, $c7, $e9, $64, $fd, $64, $2d, $65, $c9
    db $cd, $ec, $23, $11, $40, $ff, $1a, $e6, $7f, $cd, $0e, $24, $fa, $0c, $c8, $3c
    db $ea, $0c, $c8, $c9, $3e, $10, $ea, $18, $c8, $cd, $07, $2d, $af, $ea, $18, $c8
    db $cd, $ec, $23, $21, $00, $98, $01, $00, $04, $3e, $ff, $22, $0b, $78, $b1, $20
    db $f8, $11, $40, $ff, $1a, $f6, $80, $12, $af, $ea, $3d, $c8, $fa, $0c, $c8, $3c
    db $ea, $0c, $c8, $c9, $f0, $9b, $e6, $30, $20, $04, $af, $ea, $3d, $c8, $f0, $9c
    db $cb, $67, $20, $16, $f0, $9b, $cb, $67, $28, $1d, $fa, $3d, $c8, $3c, $ea, $3d
    db $c8, $fe, $14, $20, $66, $3e, $0e, $ea, $3d, $c8, $fa, $18, $c8, $fe, $1e, $28
    db $5a, $3c, $ea, $18, $c8, $18, $54, $f0, $9c, $cb, $6f, $20, $16, $f0, $9b, $cb
    db $6f, $28, $1d, $fa, $3d, $c8, $3c, $ea, $3d, $c8, $fe, $14, $20, $3d, $3e, $0e
    db $ea, $3d, $c8, $fa, $18, $c8, $fe, $00, $28, $31, $3d, $ea, $18, $c8, $18, $2b
    db $f0, $9c, $cb, $47, $28, $06, $fa, $18, $c8, $cd, $03, $09, $f0, $9c, $cb, $4f
    db $28, $05, $3e, $20, $cd, $84, $0a, $f0, $9c, $cb, $5f, $28, $0e, $cd, $65, $0a
    db $3e, $02, $ea, $0b, $c8, $af, $ea, $0c, $c8, $18, $31, $fa, $18, $c8, $16, $00
    db $14, $d6, $0a, $30, $fb, $15, $c6, $0a, $f5, $26, $00, $6a, $29, $11, $e6, $65
    db $19, $5e, $23, $56, $21, $00, $98, $cd, $4a, $24, $f1, $26, $00, $6f, $29, $11
    db $e6, $65, $19, $5e, $23, $56, $21, $03, $98, $cd, $4a, $24, $c9, $fa, $65, $02
    db $66, $0a, $66, $12, $66, $1a, $66, $22, $66, $2a, $66, $32, $66, $3a, $66, $42
    db $66, $03, $02, $6a, $6b, $6c, $8a, $8b, $8c, $03, $02, $20, $21, $22, $40, $41
    db $42, $03, $02, $23, $24, $25, $43, $44, $45, $03, $02, $26, $27, $28, $46, $47
    db $48, $03, $02, $29, $2a, $2b, $49, $4a, $4b, $03, $02, $2c, $2d, $2e, $4c, $4d
    db $4e, $03, $02, $2f, $30, $31, $4f, $50, $51, $03, $02, $32, $33, $34, $52, $53
    db $54, $03, $02, $35, $36, $37, $55, $56, $57, $03, $02, $67, $68, $69, $87, $88
    db $89, $fa, $0c, $c8, $11, $92, $66, $d5, $c7, $93, $66, $c0, $66, $69, $67, $85
    db $67, $86, $69, $a1, $69, $fc, $69, $5d, $40, $18, $6a, $38, $6a, $0d, $6b, $15
    db $6b, $5b, $6b, $a7, $6b, $14, $6c, $5e, $6c, $5d, $40, $5d, $40, $5d, $40, $c2
    db $6c, $f6, $6c, $a3, $6d, $cb, $6d, $ed, $6d, $45, $6e, $61, $6e, $83, $6e, $d7
    db $6e, $5d, $40, $5d, $40, $5d, $40, $f3, $6e, $c9, $af, $ea, $17, $c8, $ea, $75
    db $c9, $ea, $77, $c9, $ea, $74, $c9, $ea, $78, $c9, $06, $10, $21, $13, $cb, $22
    db $05, $20, $fc, $cd, $ec, $23, $11, $40, $ff, $1a, $e6, $7f, $cd, $0e, $24, $fa
    db $0c, $c8, $3c, $ea, $0c, $c8, $c9, $fa, $18, $c8, $21, $82, $c9, $cb, $4e, $28
    db $02, $c6, $09, $87, $21, $3c, $67, $06, $00, $4f, $09, $44, $4d, $11, $20, $c1
    db $3e, $02, $21, $01, $00, $19, $77, $3e, $01, $21, $02, $00, $19, $77, $3e, $0c
    db $21, $00, $00, $19, $77, $0a, $03, $21, $04, $00, $19, $77, $0a, $21, $05, $00
    db $19, $77, $3e, $78, $21, $1b, $00, $19, $77, $21, $00, $00, $19, $cb, $ce, $cd
    db $38, $70, $cd, $05, $27, $21, $82, $c9, $cb, $4e, $28, $0e, $fa, $18, $c8, $16
    db $00, $5f, $21, $60, $67, $19, $7e, $ea, $f4, $c9, $cd, $f6, $27, $3e, $01, $16
    db $07, $cd, $f8, $2d, $11, $40, $ff, $1a, $f6, $80, $12, $fa, $0c, $c8, $3c, $ea
    db $0c, $c8, $c9, $80, $f0, $d0, $30, $18, $f0, $80, $30, $80, $f0, $80, $c0, $80
    db $f0, $18, $f0, $80, $e0, $e0, $f0, $80, $f0, $e0, $30, $e0, $24, $e0, $f0, $e0
    db $f0, $e0, $f0, $18, $f0, $20, $f0, $09, $0a, $09, $0b, $0b, $03, $09, $0b, $1d
    db $3e, $04, $cd, $61, $2e, $28, $14, $cd, $cc, $27, $21, $17, $c8, $cb, $c6, $21
    db $2c, $cb, $cb, $ae, $fa, $0c, $c8, $3c, $ea, $0c, $c8, $c9, $fa, $23, $cb, $a7
    db $28, $28, $f0, $9c, $e6, $09, $c2, $4a, $69, $21, $2c, $cb, $cb, $ae, $fa, $2c
    db $cb, $cb, $7f, $28, $08, $f0, $9b, $fe, $02, $20, $02, $cb, $ee, $cd, $e1, $25
    db $fa, $28, $cb, $fe, $e0, $ca, $4a, $69, $18, $2b, $f0, $9c, $cb, $57, $28, $0d
    db $3e, $04, $e0, $9b, $cd, $3a, $26, $3e, $08, $ea, $0c, $c8, $c9, $f0, $9c, $cb
    db $5f, $28, $0d, $3e, $08, $e0, $9b, $cd, $3a, $26, $3e, $0b, $ea, $0b, $c8, $c9
    db $cd, $3a, $26, $18, $06, $f0, $9c, $e6, $0c, $20, $ae, $3e, $02, $21, $01, $40
    db $cd, $ae, $08, $21, $17, $c8, $cb, $6e, $c2, $85, $69, $cd, $c6, $70, $fa, $17
    db $c8, $cb, $57, $c2, $f0, $68, $cb, $77, $c2, $90, $68, $cb, $5f, $c2, $35, $69
    db $cd, $22, $6f, $20, $50, $3e, $01, $21, $f8, $68, $cd, $ae, $08, $fa, $78, $c9
    db $fe, $ff, $c2, $85, $69, $01, $20, $c1, $21, $00, $00, $09, $7e, $cb, $a7, $ea
    db $7e, $c9, $21, $1c, $00, $09, $7e, $ea, $7f, $c9, $21, $04, $00, $09, $7e, $ea
    db $78, $c9, $21, $05, $00, $09, $7e, $ea, $7b, $c9, $fa, $03, $c8, $ea, $79, $c9
    db $fa, $04, $c8, $ea, $7c, $c9, $fa, $1b, $c8, $ea, $7a, $c9, $fa, $1c, $c8, $ea
    db $7d, $c9, $c3, $85, $69, $f5, $cd, $19, $06, $21, $2c, $cb, $cb, $ae, $f1, $fe
    db $03, $28, $24, $fe, $02, $28, $3c, $fe, $04, $28, $5a, $21, $17, $c8, $cb, $ce
    db $cb, $86, $af, $ea, $78, $c9, $3e, $00, $16, $07, $cd, $f8, $2d, $fa, $0c, $c8
    db $3c, $ea, $0c, $c8, $c3, $85, $69, $21, $2c, $cb, $cb, $ae, $cd, $19, $06, $21
    db $2c, $cb, $cb, $ae, $3e, $00, $16, $07, $cd, $f8, $2d, $3e, $1f, $ea, $0c, $c8
    db $c3, $85, $69, $21, $17, $c8, $cb, $ce, $cb, $86, $21, $83, $c9, $cb, $c6, $af
    db $ea, $78, $c9, $cd, $65, $0a, $3e, $00, $16, $07, $cd, $f8, $2d, $3e, $19, $ea
    db $0c, $c8, $c3, $85, $69, $21, $17, $c8, $cb, $ce, $cb, $86, $21, $83, $c9, $cb
    db $d6, $af, $ea, $78, $c9, $cd, $65, $0a, $3e, $00, $16, $07, $cd, $f8, $2d, $3e
    db $16, $ea, $0c, $c8, $c3, $85, $69, $cd, $65, $0a, $e5, $f5, $21, $17, $1d, $3e
    db $01, $cd, $a6, $0a, $f1, $e1, $cd, $19, $06, $21, $2c, $cb, $cb, $ae, $21, $17
    db $c8, $cb, $ce, $cb, $86, $af, $ea, $78, $c9, $21, $0c, $c8, $36, $0b, $3e, $20
    db $ea, $12, $c8, $af, $ea, $3f, $c8, $ea, $40, $c8, $21, $3c, $c1, $cb, $56, $ca
    db $2f, $69, $3e, $01, $18, $01, $af, $cd, $12, $2f, $18, $50, $cd, $19, $06, $21
    db $2c, $cb, $cb, $ae, $fa, $23, $cb, $a7, $28, $2b, $fa, $2c, $cb, $cb, $7f, $20
    db $28, $cd, $19, $06, $21, $2c, $cb, $cb, $ae, $3e, $0e, $ea, $0b, $c8, $af, $ea
    db $0c, $c8, $3e, $03, $ea, $0c, $c8, $fa, $18, $c8, $fe, $07, $30, $1e, $3e, $10
    db $cd, $84, $0a, $18, $17

Chalvo_RemoveLife::
    db $21, $fc, $c9, $35

Chalvo_Respawn::
    db $21, $17, $c8, $cb, $ce, $cb, $86, $3e, $00, $16, $07, $cd, $f8, $2d, $3e, $13
    db $ea, $0c, $c8, $c9, $3e, $04, $cd, $61, $2e, $28, $13, $11, $40, $ff, $1a, $e6
    db $7f, $cd, $0e, $24, $cd, $fa, $23, $fa, $0c, $c8, $3c, $ea, $0c, $c8, $c9, $21
    db $83, $c9, $cb, $56, $28, $08, $cb, $96, $cd, $07, $2d, $cd, $cc, $27, $01, $20
    db $c1, $fa, $87, $c9, $21, $05, $00, $09, $77, $fa, $89, $c9, $ea, $04, $c8, $fa
    db $8b, $c9, $ea, $1c, $c8, $fa, $86, $c9, $21, $04, $00, $09, $77, $fa, $88, $c9
    db $ea, $03, $c8, $fa, $8a, $c9, $ea, $1b, $c8, $cd, $f6, $27, $11, $40, $ff, $1a
    db $f6, $80, $12, $3e, $01, $16, $07, $cd, $f8, $2d, $3e, $02, $21, $01, $40, $cd
    db $ae, $08, $fa, $0c, $c8, $3c, $ea, $0c, $c8, $c9, $3e, $02, $21, $01, $40, $cd
    db $ae, $08, $3e, $04, $cd, $61, $2e, $28, $0c, $3e, $03, $ea, $0c, $c8, $21, $17
    db $c8, $cb, $8e, $cb, $c6, $c9, $21, $00, $c1, $11, $80, $c4, $01, $80, $03, $cd
    db $b2, $03, $fa, $03, $c8, $ea, $09, $c8, $fa, $04, $c8, $ea, $0a, $c8, $fa, $0c
    db $c8, $3c, $ea, $0c, $c8, $c9, $f0, $9b, $cb, $57, $ca, $eb, $6a, $11, $00, $00
    db $f0, $9b, $cb, $67, $28, $15, $fa, $03, $c8, $c6, $04, $fe, $61, $da, $5b, $6a
    db $d6, $60, $2f, $3c, $c6, $04, $57, $18, $02, $16, $04, $f0, $9b, $cb, $6f, $28
    db $12, $fa, $03, $c8, $d6, $04, $cb, $7f, $28, $07, $c6, $04, $2f, $3c, $57, $18
    db $02, $16, $fc, $f0, $9b, $cb, $77, $28, $12, $fa, $04, $c8, $d6, $04, $cb, $7f
    db $28, $07, $c6, $04, $2f, $3c, $5f, $18, $02, $1e, $fc, $f0, $9b, $cb, $7f, $28
    db $15, $fa, $04, $c8, $c6, $04, $fe, $71, $da, $a6, $6a, $d6, $70, $2f, $3c, $c6
    db $04, $5f, $18, $02, $1e, $04, $3e, $1c, $ea, $2d, $c8, $01, $00, $c1, $21, $01
    db $00, $09, $7e, $a7, $28, $17, $21, $00, $00, $09, $7e, $cb, $5f, $28, $0e, $21
    db $04, $00, $09, $7e, $92, $77, $21, $05, $00, $09, $7e, $93, $77, $21, $20, $00
    db $09, $44, $4d, $21, $2d, $c8, $35, $20, $d5, $fa, $03, $c8, $82, $ea, $03, $c8
    db $fa, $04, $c8, $83, $ea, $04, $c8, $18, $21, $21, $80, $c4, $11, $00, $c1, $01
    db $80, $03, $cd, $b2, $03, $fa, $09, $c8, $ea, $03, $c8, $fa, $0a, $c8, $ea, $04
    db $c8, $3e, $03, $ea, $0c, $c8, $3e, $04, $e0, $9b, $c9, $fa, $0c, $c8, $3c, $ea
    db $0c, $c8, $c9, $fa, $3f, $c8, $ea, $1f, $c8, $fa, $40, $c8, $ea, $20, $c8, $fa
    db $1f, $c8, $c6, $02, $ea, $1f, $c8, $fa, $20, $c8, $ce, $00, $ea, $20, $c8, $11
    db $3f, $c8, $fa, $1f, $c8, $cd, $0e, $24, $11, $40, $c8, $fa, $20, $c8, $cd, $0e
    db $24, $fa, $12, $c8, $3d, $ea, $12, $c8, $28, $0e, $3e, $00, $16, $07, $cd, $f8
    db $2d, $fa, $0c, $c8, $3c, $ea, $0c, $c8, $c9, $fa, $3f, $c8, $ea, $1f, $c8, $fa
    db $40, $c8, $ea, $20, $c8, $fa, $1f, $c8, $c6, $02, $ea, $1f, $c8, $fa, $20, $c8
    db $ce, $00, $ea, $20, $c8, $11, $3f, $c8, $fa, $1f, $c8, $cd, $0e, $24, $11, $40
    db $c8, $fa, $20, $c8, $cd, $0e, $24, $3e, $20, $cd, $61, $2e, $28, $16, $cd, $39
    db $2f, $11, $40, $ff, $1a, $e6, $7f, $cd, $0e, $24, $cd, $fa, $23, $fa, $0c, $c8
    db $3c, $ea, $0c, $c8, $c9, $3e, $00, $cd, $06, $04, $fe, $01, $20, $07, $21, $83
    db $c9, $cb, $d6, $18, $0b, $fe, $00, $20, $0a, $21, $83, $c9, $cb, $c6, $cb, $96
    db $cd, $07, $2d, $01, $20, $c1, $3e, $01, $21, $1e, $00, $09, $77, $3e, $01, $21
    db $02, $00, $09, $77, $fa, $f2, $c9, $c6, $08, $21, $04, $00, $09, $77, $fa, $f3
    db $c9, $c6, $10, $21, $05, $00, $09, $77, $cd, $38, $70, $cd, $f6, $27, $11, $40
    db $ff, $1a, $f6, $80, $12, $3e, $01, $16, $07, $cd, $f8, $2d, $fa, $42, $c8, $cd
    db $12, $2f, $3e, $02, $21, $01, $40, $cd, $ae, $08, $fa, $0c, $c8, $3c, $ea, $0c
    db $c8, $c9, $fa, $3f, $c8, $ea, $1f, $c8, $fa, $40, $c8, $ea, $20, $c8, $fa, $1f
    db $c8, $d6, $02, $ea, $1f, $c8, $fa, $20, $c8, $de, $00, $ea, $20, $c8, $11, $3f
    db $c8, $fa, $1f, $c8, $cd, $0e, $24, $11, $40, $c8, $fa, $20, $c8, $cd, $0e, $24
    db $3e, $02, $21, $01, $40, $cd, $ae, $08, $3e, $20, $cd, $61, $2e, $28, $0c, $3e
    db $20, $ea, $12, $c8, $fa, $0c, $c8, $3c, $ea, $0c, $c8, $c9, $fa, $3f, $c8, $ea
    db $1f, $c8, $fa, $40, $c8, $ea, $20, $c8, $fa, $1f, $c8, $d6, $02, $ea, $1f, $c8
    db $fa, $20, $c8, $de, $00, $ea, $20, $c8, $11, $3f, $c8, $fa, $1f, $c8, $cd, $0e
    db $24, $11, $40, $c8, $fa, $20, $c8, $cd, $0e, $24, $3e, $02, $21, $01, $40, $cd
    db $ae, $08, $fa, $12, $c8, $3d, $ea, $12, $c8, $28, $24, $cd, $39, $2f, $3e, $03
    db $ea, $0c, $c8, $21, $17, $c8, $cb, $8e, $cb, $96, $cb, $c6, $3e, $ff, $ea, $78
    db $c9, $21, $83, $c9, $cb, $56, $20, $07, $cb, $46, $20, $03, $cd, $79, $0a, $c9
    db $3e, $04, $cd, $61, $2e, $28, $2c, $fa, $fc, $c9, $a7, $20, $13, $21, $2c, $cb
    db $cb, $ae, $cd, $ec, $23, $3e, $01, $ea, $0b, $c8, $af, $ea, $0c, $c8, $18, $13
    db $11, $40, $ff, $1a, $e6, $7f, $cd, $0e, $24, $cd, $fa, $23, $fa, $0c, $c8, $3c
    db $ea, $0c, $c8, $c9, $11, $20, $c1, $fa, $7e, $c9, $21, $00, $00, $19, $77, $fa
    db $7f, $c9, $21, $1c, $00, $19, $77, $fa, $78, $c9, $21, $04, $00, $19, $77, $fa
    db $7b, $c9, $21, $05, $00, $19, $77, $fa, $79, $c9, $ea, $03, $c8, $fa, $7c, $c9
    db $ea, $04, $c8, $fa, $7a, $c9, $ea, $1b, $c8, $fa, $7d, $c9, $ea, $1c, $c8, $3e
    db $78, $21, $1b, $00, $19, $77, $21, $00, $00, $19, $cb, $ce, $af, $21, $1e, $00
    db $19, $77, $3e, $01, $21, $02, $00, $19, $77, $21, $1c, $00, $19, $cb, $56, $28
    db $1a, $3e, $06, $21, $1e, $00, $19, $77, $3e, $03, $21, $02, $00, $19, $77, $af
    db $21, $0f, $00, $19, $22, $77, $21, $0e, $00, $19, $77, $af, $21, $1c, $00, $19
    db $77, $21, $17, $00, $19, $77, $21, $16, $00, $19, $77, $21, $19, $00, $19, $77
    db $cd, $f6, $27, $11, $40, $ff, $1a, $f6, $80, $12, $3e, $01, $16, $07, $cd, $f8
    db $2d, $3e, $02, $21, $01, $40, $cd, $ae, $08, $fa, $0c, $c8, $3c, $ea, $0c, $c8
    db $c9, $3e, $02, $21, $01, $40, $cd, $ae, $08, $3e, $04, $cd, $61, $2e, $28, $18
    db $3e, $03, $ea, $0c, $c8, $21, $17, $c8, $cb, $8e, $cb, $c6, $cb, $9e, $21, $83
    db $c9, $cb, $46, $20, $03, $cd, $cc, $27, $c9, $3e, $04, $cd, $61, $2e, $28, $1a
    db $3e, $04, $cd, $61, $2e, $28, $13, $11, $40, $ff, $1a, $e6, $7f, $cd, $0e, $24
    db $cd, $fa, $23, $fa, $0c, $c8, $3c, $ea, $0c, $c8, $c9, $21, $83, $c9, $cb, $46
    db $28, $02, $cb, $86, $cd, $07, $2d, $01, $20, $c1, $fa, $87, $c9, $21, $05, $00
    db $09, $77, $fa, $89, $c9, $ea, $04, $c8, $fa, $8b, $c9, $ea, $1c, $c8, $fa, $86
    db $c9, $21, $04, $00, $09, $77, $fa, $88, $c9, $ea, $03, $c8, $fa, $8a, $c9, $ea
    db $1b, $c8, $cd, $f6, $27, $11, $40, $ff, $1a, $f6, $80, $12, $3e, $01, $16, $07
    db $cd, $f8, $2d, $3e, $02, $21, $01, $40, $cd, $ae, $08, $fa, $0c, $c8, $3c, $ea
    db $0c, $c8, $c9, $3e, $02, $21, $01, $40, $cd, $ae, $08, $3e, $04, $cd, $61, $2e
    db $28, $0c, $3e, $03, $ea, $0c, $c8, $21, $17, $c8, $cb, $8e, $cb, $c6, $c9, $3e
    db $04, $cd, $61, $2e, $28, $1a, $3e, $04, $cd, $61, $2e, $28, $13, $11, $40, $ff
    db $1a, $e6, $7f, $cd, $0e, $24, $cd, $fa, $23, $fa, $0c, $c8, $3c, $ea, $0c, $c8
    db $c9, $21, $83, $c9, $cb, $96, $cd, $07, $2d, $01, $20, $c1, $fa, $87, $c9, $21
    db $05, $00, $09, $77, $fa, $89, $c9, $ea, $04, $c8, $fa, $8b, $c9, $ea, $1c, $c8
    db $fa, $86, $c9, $21, $04, $00, $09, $77, $fa, $88, $c9, $ea, $03, $c8, $fa, $8a
    db $c9, $ea, $1b, $c8, $cd, $f6, $27, $11, $40, $ff, $1a, $f6, $80, $12, $3e, $01
    db $16, $07, $cd, $f8, $2d, $3e, $02, $21, $01, $40, $cd, $ae, $08, $fa, $0c, $c8
    db $3c, $ea, $0c, $c8, $c9, $3e, $02, $21, $01, $40, $cd, $ae, $08, $3e, $04, $cd
    db $61, $2e, $28, $0c, $3e, $03, $ea, $0c, $c8, $21, $17, $c8, $cb, $8e, $cb, $c6
    db $c9, $fa, $17, $c8, $cb, $77, $ca, $07, $6f, $3e, $02, $21, $01, $40, $cd, $ae
    db $08, $3e, $20, $18, $02, $3e, $04, $cd, $61, $2e, $28, $13, $cd, $ec, $23, $fa
    db $18, $c8, $3c, $ea, $18, $c8, $3e, $0c, $ea, $0b, $c8, $af, $ea, $0c, $c8, $c9
    db $01, $20, $c1, $21, $00, $00, $09, $7e, $cb, $47, $c2, $36, $70, $21, $05, $00
    db $09, $7e, $d6, $1f, $fe, $c8, $da, $6e, $6f, $21, $83, $c9, $cb, $46, $c2, $1a
    db $70, $c6, $90, $c6, $10, $ea, $87, $c9, $3e, $70, $ea, $89, $c9, $ea, $8b, $c9
    db $21, $04, $00, $09, $7e, $ea, $86, $c9, $fa, $03, $c8, $ea, $88, $c9, $fa, $1b
    db $c8, $ea, $8a, $c9, $3e, $01, $cd, $06, $04, $c3, $1f, $70, $fe, $81, $da, $a5
    db $6f, $21, $83, $c9, $cb, $4e, $c2, $1a, $70, $d6, $90, $c6, $2f, $ea, $87, $c9
    db $3e, $00, $ea, $89, $c9, $ea, $8b, $c9, $21, $04, $00, $09, $7e, $ea, $86, $c9
    db $fa, $03, $c8, $ea, $88, $c9, $fa, $1b, $c8, $ea, $8a, $c9, $3e, $02, $cd, $06
    db $04, $18, $7a, $21, $04, $00, $09, $7e, $d6, $0f, $fe, $c8, $da, $e3, $6f, $21
    db $83, $c9, $cb, $4e, $c2, $1a, $70, $c6, $a0, $c6, $00, $ea, $86, $c9, $3e, $60
    db $ea, $88, $c9, $ea, $8a, $c9, $21, $05, $00, $09, $7e, $ea, $87, $c9, $fa, $04
    db $c8, $ea, $89, $c9, $fa, $1c, $c8, $ea, $8b, $c9, $3e, $03, $cd, $06, $04, $18
    db $3c, $fe, $91, $da, $36, $70, $21, $83, $c9, $cb, $4e, $c2, $1a, $70, $d6, $a0
    db $c6, $1f, $ea, $86, $c9, $3e, $00, $ea, $88, $c9, $ea, $8a, $c9, $21, $05, $00
    db $09, $7e, $ea, $87, $c9, $fa, $04, $c8, $ea, $89, $c9, $fa, $1c, $c8, $ea, $8b
    db $c9, $3e, $04, $cd, $06, $04, $18, $05, $3e, $03, $a7, $18, $18, $fe, $00, $28
    db $09, $fe, $01, $28, $0a, $3e, $01, $a7, $18, $0b, $3e, $02, $a7, $18, $06, $3e
    db $04, $a7, $18, $01, $af, $c9, $01, $20, $c1, $21, $04, $00, $09, $7e, $fe, $50
    db $da, $6d, $70, $d6, $50, $fe, $60, $da, $61, $70, $21, $04, $00, $09, $7e, $d6
    db $60, $c6, $08, $21, $04, $00, $09, $77, $3e, $60, $ea, $03, $c8, $18, $17, $ea
    db $03, $c8, $3e, $58, $21, $04, $00, $09, $77, $18, $0b, $c6, $08, $21, $04, $00
    db $09, $77, $af, $ea, $03, $c8, $21, $05, $00, $09, $7e, $fe, $54, $da, $aa, $70
    db $d6, $54, $fe, $70, $da, $9e, $70, $21, $05, $00, $09, $7e, $d6, $70, $c6, $10
    db $21, $05, $00, $09, $77, $3e, $70, $ea, $04, $c8, $18, $17, $ea, $04, $c8, $3e
    db $64, $21, $05, $00, $09, $77, $18, $0b, $c6, $10, $21, $05, $00, $09, $77, $af
    db $ea, $04, $c8, $21, $04, $00, $09, $7e, $ea, $1b, $c8, $21, $05, $00, $19, $7e
    db $ea, $1c, $c8, $c9, $fa, $73, $c8, $a7, $28, $11, $57, $21, $43, $c8, $2a, $4f
    db $2a, $47, $2a, $02, $15, $20, $f7, $af, $ea, $73, $c8, $c9
    
bank3_pad:: ds 3874 ;f22
