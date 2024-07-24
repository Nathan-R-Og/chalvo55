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
    dec de
    inc e
    dec e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld hl, sp-$07
    ld a, [$9493]
    sub l
    or b
    or c
    or d
    or e
    or h
    or l
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld b, $04
    dec de
    inc e
    dec e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    dec sp
    inc a
    dec a
    sub e
    sub h
    sub l
    or b
    or c
    or d
    or e
    or h
    or l
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld b, $04
    ld e, $1f
    ld a, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, $3f
    sbc [hl]
    sub e
    sub h
    sub l
    or b
    or c
    or d
    or e
    or h
    or l
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sbc b
    ld d, e
    sbc [hl]
    ld d, e
    xor b
    ld d, e
    or d
    ld d, e
    cp h
    ld d, e
    add $53
    ret nc

    ld d, e
    jp c, $ec53

    ld d, e
    cp $53
    inc b
    ld d, h
    ld a, [bc]
    ld d, h
    db $10
    ld d, h
    ld d, $54
    ld hl, $2c54
    ld d, h
    scf
    ld d, h
    ld b, d
    ld d, h
    ld c, l
    ld d, h
    ld h, a
    ld d, h
    add c
    ld d, h
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
    jr z, jr_003_5662

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

jr_003_5662:
    push bc
    push bc
    push bc
    push bc
    ldh [$c5], a
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
    push bc
    push bc
    push bc
    adc [hl]
    adc a
    sub b
    sub c
    push bc
    nop
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
    push bc
    push bc
    push bc
    xor [hl]
    xor a
    or b
    or c
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
    ld de, $1312
    ld de, $1211
    db $10
    db $10
    db $10
    db $10
    ld de, $1312
    push bc
    push bc
    push bc
    nop
    ld l, $2f
    jr nc, jr_003_576c

    ld [hl-], a
    inc sp
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
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
    rla
    ld de, $1211
    inc de
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

jr_003_576c:
    scf
    scf
    jr c, jr_003_5780

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_003_5780:
    ld de, $1312
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
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
    inc d
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
    jr jr_003_59d6

    ld a, [de]
    dec de
    jr c, @+$3b

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

jr_003_59d6:
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
    push bc
    ld d, h
    cpl
    ld d, [hl]
    ld d, l
    ld d, [hl]
    cp a
    ld d, a
    jp z, $d557

    ld d, a
    ldh [$57], a
    db $eb
    ld d, a
    or $57
    ld bc, $0c58
    ld e, b
    rla
    ld e, b
    ld [hl+], a
    ld e, b
    dec l
    ld e, b
    sub a
    ld e, c
    or l
    ld e, c
    db $d3
    ld e, c
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
    jr jr_003_5a52

    ld a, [de]
    dec de
    jr c, jr_003_5a76

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

jr_003_5a52:
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
    ld [bc], a
    inc bc
    call nz, $e4c5
    push hl
    xor h
    xor l
    adc a

jr_003_5a76:
    ld e, d
    rst $10
    ld e, d
    or a
    ld e, e
    call $e35b
    ld e, e
    ld sp, hl
    ld e, e
    ld a, a
    ld e, h
    rst $30
    ld e, h
    ld l, a
    ld e, l
    sub e
    ld e, l
    ld sp, $3f5e
    ld e, [hl]
    or a
    ld e, [hl]
    sub a
    ld e, d
    xor e
    ld e, d
    cp c
    ld e, d
    push bc
    ld e, d
    ld [$0000], sp
    nop
    ld [$0100], sp
    nop
    ld [$0200], sp
    nop
    ld [$0100], sp
    nop
    cp $00
    nop
    nop
    rlca
    nop
    ld [bc], a
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc b
    nop
    rst $38
    nop
    ld b, $00
    dec e
    nop
    ld b, $00
    ld e, $00
    cp $00
    nop
    nop
    rlca
    nop
    daa
    nop
    rlca
    nop
    jr z, jr_003_5acd

jr_003_5acd:
    rlca
    nop
    add hl, hl
    nop
    rlca
    nop
    ld a, [hl+]
    nop
    rst $38
    nop
    rst $28
    ld e, d
    push af
    ld e, d
    add hl, bc
    ld e, e
    rrca
    ld e, e
    dec d
    ld e, e
    add hl, hl
    ld e, e
    inc sp
    ld e, e
    add hl, sp
    ld e, e
    ld e, a
    ld e, e
    add l
    ld e, e
    sbc e
    ld e, e
    or c
    ld e, e
    db $fd
    nop
    ld bc, $ff00
    nop
    ld [$0000], sp
    nop
    ld [$0100], sp
    nop
    ld [$0200], sp
    nop
    ld [$0100], sp
    nop
    cp $00
    nop
    nop
    db $fd
    nop
    ld b, $00
    rst $38
    nop
    inc c
    nop
    ld [$ff00], sp
    nop
    stop
    dec c
    nop
    stop
    ld c, $00
    stop
    rrca
    nop
    stop
    ld c, $00
    cp $00
    nop
    nop
    ld [$0800], sp
    nop
    db $fd
    nop
    ld b, $00
    rst $38
    nop
    db $fd
    nop
    ld c, $00
    rst $38
    nop
    inc b
    nop
    ld h, b
    nop
    inc b
    nop
    ld h, c
    nop
    inc b
    nop
    ld h, d
    nop
    inc b
    nop
    ld h, e
    nop
    inc b
    nop
    ld h, h
    nop
    inc b
    nop
    ld h, l
    nop
    ld [bc], a
    nop
    ld h, [hl]
    nop
    ld [bc], a
    nop
    ld h, a
    nop
    ld [bc], a
    nop
    ld l, b
    nop
    rst $38
    nop
    inc b
    nop
    ld l, [hl]
    nop
    inc b
    nop
    ld l, a
    nop
    inc b
    nop
    ld [hl], b
    nop
    inc b
    nop
    ld [hl], c
    nop
    inc b
    nop
    ld [hl], d
    nop
    inc b
    nop
    ld [hl], e
    nop
    ld [bc], a
    nop
    ld [hl], h
    nop
    ld [bc], a
    nop
    ld [hl], l
    nop
    ld [bc], a
    nop
    halt
    rst $38
    nop
    ld b, $00
    ld l, c
    nop
    ld b, $00
    ld l, d
    nop
    ld b, $00
    ld l, e
    nop
    ld b, $00
    ld l, h
    nop
    ld b, $00
    ld l, l
    nop
    rst $38
    nop
    ld b, $00
    ld [hl], a
    nop
    ld b, $00
    ld a, b
    nop
    ld b, $00
    ld a, c
    nop
    ld b, $00
    ld a, d
    nop
    ld b, $00
    ld a, e
    nop
    rst $38
    nop
    ld b, b
    nop
    dec b
    nop
    rst $38
    nop
    cp e
    ld e, e
    rst $00
    ld e, e
    ld [$1100], sp
    nop
    ld [$1200], sp
    nop
    cp $00
    nop
    nop
    db $fd
    nop
    inc de
    nop
    rst $38
    nop
    pop de
    ld e, e
    db $dd
    ld e, e
    ld [$1400], sp
    nop
    ld [$1500], sp
    nop
    cp $00
    nop
    nop
    db $fd
    nop
    ld d, $00
    rst $38
    nop
    rst $20
    ld e, e
    di
    ld e, e
    ld [$1700], sp
    nop
    ld [$1800], sp
    nop
    cp $00
    nop
    nop
    db $fd
    nop
    add hl, de
    nop
    rst $38
    nop
    ld bc, $075c
    ld e, h
    ld h, l
    ld e, h
    ld l, e
    ld e, h
    db $fd
    nop
    ld hl, $ff00
    nop
    dec b
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    ld a, [bc]
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    ld a, [bc]
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    dec b
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    ld a, [bc]
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    dec b
    nop
    ld hl, $0500
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    ld a, [bc]
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    ld a, [bc]
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    dec b
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    ld a, [bc]
    nop
    ld hl, $0500
    nop
    inc hl
    nop
    dec b
    nop
    ld hl, $1e00
    nop
    inc hl
    nop
    rst $38
    nop
    ld d, b
    nop
    inc h
    nop
    rst $38
    nop
    ld [$2000], sp
    nop
    ld [$2100], sp
    nop
    ld [$2200], sp
    nop
    ld [$2100], sp
    nop
    cp $00
    nop
    nop
    add l
    ld e, h
    rst $20
    ld e, h
    pop af
    ld e, h
    dec b
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    ld a, [bc]
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    ld a, [bc]
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    dec b
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    ld a, [bc]
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    dec b
    nop
    inc l
    nop
    dec b
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    ld a, [bc]
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    ld a, [bc]
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    dec b
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    ld a, [bc]
    nop
    inc l
    nop
    dec b
    nop
    dec hl
    nop
    dec b
    nop
    inc l
    nop
    ld e, $00
    dec hl
    nop
    ld bc, $2c00
    nop
    rst $38
    nop
    inc a
    nop
    dec l
    nop
    ld bc, $2c00
    nop
    rst $38
    nop
    inc a
    nop
    dec l
    nop
    rst $38
    nop
    db $fd
    ld e, h
    ld e, a
    ld e, l
    ld l, c
    ld e, l
    dec b
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    dec b
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    dec b
    nop
    inc sp
    nop
    dec b
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    dec b
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    dec b
    nop
    inc [hl]
    nop
    dec b
    nop
    inc sp
    nop
    ld e, $00
    inc [hl]
    nop
    ld bc, $3300
    nop
    rst $38
    nop
    inc a
    nop
    dec [hl]
    nop
    ld bc, $3300
    nop
    rst $38
    nop
    inc a
    nop
    dec [hl]
    nop
    rst $38
    nop
    ld [hl], l
    ld e, l
    add c
    ld e, l
    adc l
    ld e, l
    jr nz, jr_003_5d77

jr_003_5d77:
    scf
    nop
    jr nz, jr_003_5d7b

jr_003_5d7b:
    jr c, jr_003_5d7d

jr_003_5d7d:
    cp $00
    nop
    nop
    ld [$3900], sp
    nop
    ld [$3a00], sp
    nop
    cp $00
    nop
    nop
    jr nz, jr_003_5d8f

jr_003_5d8f:
    dec sp
    nop
    rst $38
    nop
    sbc e
    ld e, l
    db $fd
    ld e, l
    rra
    ld e, [hl]
    dec h
    ld e, [hl]
    dec b
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    ld a, [bc]
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    ld a, [bc]
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    dec b
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    ld a, [bc]
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    dec b
    nop
    inc a
    nop
    dec b
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    ld a, [bc]
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    ld a, [bc]
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    dec b
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    ld a, [bc]
    nop
    inc a
    nop
    dec b
    nop
    ld a, $00
    dec b
    nop
    inc a
    nop
    ld e, $00
    ld a, $00
    ld bc, $3c00
    nop
    rst $38
    nop
    ld [$3f00], sp
    nop
    ld [$4000], sp
    nop
    ld [$3f00], sp
    nop
    ld [$4000], sp
    nop
    ld [$3f00], sp
    nop
    ld [$4000], sp
    nop
    ld [$3f00], sp
    nop
    ld [$4000], sp
    nop
    rst $38
    nop
    jr nz, jr_003_5e21

jr_003_5e21:
    ld b, c
    nop
    rst $38
    nop
    ld [$3c00], sp
    nop
    ld [$3d00], sp
    nop
    cp $00
    nop
    nop
    inc sp
    ld e, [hl]
    ld [$4300], sp
    nop
    ld [$4400], sp
    nop
    cp $00
    nop
    nop
    ld b, l
    ld e, [hl]
    and a
    ld e, [hl]
    or c
    ld e, [hl]
    dec b
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    dec b
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    dec b
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    dec b
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    ld a, [bc]
    nop
    ld b, [hl]
    nop
    dec b
    nop
    ld b, l
    nop
    dec b
    nop
    ld b, [hl]
    nop
    ld e, $00
    ld b, l
    nop
    ld bc, $4600
    nop
    rst $38
    nop
    inc a
    nop
    ld b, a
    nop
    ld bc, $4600
    nop
    rst $38
    nop
    inc a
    nop
    ld b, a
    nop
    rst $38
    nop
    cp l
    ld e, [hl]
    pop de
    ld e, [hl]
    push hl
    ld e, [hl]
    ld [$4b00], sp
    nop
    ld [$4c00], sp
    nop
    ld [$4d00], sp
    nop
    ld [$4c00], sp
    nop
    cp $00
    nop
    nop
    ld [$4e00], sp
    nop
    ld [$4f00], sp
    nop
    ld [$5000], sp
    nop
    ld [$4f00], sp
    nop
    cp $00
    nop
    nop
    ld [$5100], sp
    nop
    ld [$5200], sp
    nop
    ld [$5300], sp
    nop
    ld [$5200], sp
    nop
    cp $00
    nop
    nop
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    ldh a, [$0d]
    rrca
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld hl, sp-$18
    rrca
    rla
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    ld sp, hl
    add sp, $0d
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$0bf2]
    dec bc
    ld hl, sp-$10
    rrca
    rrca
    ld a, [$0bf2]
    dec bc
    ld hl, sp-$10
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$0bf2]
    dec bc
    ld hl, sp-$10
    rrca
    rrca
    ld a, [$0bf2]
    dec bc
    ld hl, sp-$10
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$0bf2]
    dec bc
    ld hl, sp-$10
    rrca
    rrca
    ld a, [$0bf2]
    dec bc
    ld hl, sp-$10
    rrca
    rrca
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
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
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
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    inc c
    ldh [$0b], a
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ld hl, sp-$10
    rrca
    rrca
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    ldh a, [$e0]
    rra
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    nop
    rst $18
    rla
    jr nz, @-$16

    ldh [$0b], a
    rla
    db $fc
    db $f4
    rlca
    rlca
    db $fc
    db $f4
    rlca
    rlca
    db $fc
    db $f4
    rlca
    rlca
    db $fc
    db $f4
    rlca
    rlca
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    add sp, -$20
    cpl
    rra
    nop
    ldh [rNR22], a
    rra
    add sp, -$20
    dec bc
    rrca
    nop
    nop
    nop
    ld [hl-], a
    jr z, jr_003_6165

    inc d
    ld a, [bc]
    dec de
    inc e
    dec sp
    inc a
    dec e
    ld e, $3d
    ld a, $1b
    inc e
    dec sp
    inc a
    dec e
    ld e, $3d
    ld a, $1b
    inc e
    dec sp
    inc a
    dec e
    ld e, $3d
    ld a, $00
    nop
    nop
    ld a, [bc]

jr_003_6165:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add b
    add c
    and b
    and c
    add d
    add e
    and d
    and e
    add b
    add c
    and b
    and c
    add d
    add e
    and d
    and e
    add b
    add c
    and b
    and c
    add d
    add e
    and d
    and e
    nop
    nop
    nop
    inc d
    jr z, @+$52

    jr z, jr_003_619d

    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld b, b
    ld b, c
    ld h, b
    ld h, c
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld b, b
    ld b, c
    ld h, b
    ld h, c

jr_003_619d:
    ld b, d
    ld b, e
    ld h, d
    ld h, e
    ld a, [currentStage]
    ld de, $61bb
    push de
    rst $00
    cp h
    ld h, c
    ld bc, $5962
    ld h, d
    cp a
    ld h, d
    ld e, $63
    ld l, d
    ld h, e
    jp nz, Jump_000_2a63

    ld h, h
    add d
    ld h, h
    ret


    ld de, $c140
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $10
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $12
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $26
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a
    ret


    ld de, $c140
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $18
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $13
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $2c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld a, $2e
    ld hl, $0018
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $001d
    add hl, de
    ld [hl], a
    ret


    ld de, $c200
    ld a, $05
    call Call_000_26c7
    ld a, [$c981]
    inc a
    ld [$c981], a
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $30
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, [$c981]
    cp $02
    jr nz, jr_003_62be

    ld a, $2f
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a

jr_003_62be:
    ret


    ld de, $c200
    ld a, $05
    call Call_000_26c7
    ld a, [$c981]
    inc a
    ld [$c981], a
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $31
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, [$c981]
    cp $01
    jr nz, jr_003_631d

    ld a, $30
    ld hl, $000e
    add hl, de
    ld [hl], a

jr_003_631d:
    ret


    ld de, $c140
    ld a, $2c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $10
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $16
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $37
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a
    ret


    ld de, $c140
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $18
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $17
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $3c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld a, $42
    ld hl, $0018
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $001d
    add hl, de
    ld [hl], a
    ret


    ld de, $c200
    ld a, $05
    call Call_000_26c7
    ld a, $08
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $43
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, [$c981]
    add a
    add a
    add a
    add $c8
    ld hl, $000e
    add hl, de
    ld [hl], a
    sub $0a
    ld h, a
    ld a, [$c981]
    swap a
    cpl
    inc a
    add h
    ld hl, $001f
    add hl, de
    ld [hl], a
    ld a, [$c981]
    inc a
    ld [$c981], a
    cp $04
    jr nz, jr_003_6429

    xor a
    ld [$c981], a

jr_003_6429:
    ret


    ld de, $c140
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $18
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $1a
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $46
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld a, $48
    ld hl, $0018
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a
    ld a, $04
    ld hl, $001d
    add hl, de
    ld [hl], a
    ret


    ld de, $c140
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $18
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $1a
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $46
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld a, $48
    ld hl, $0018
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $18
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a
    ld a, $0a
    ld hl, $001d
    add hl, de
    ld [hl], a
    ret


    ld a, [$c80c]
    ld de, $64e8
    push de
    rst $00
    jp hl


    ld h, h
    db $fd
    ld h, h
    dec l
    ld h, l
    ret


    call Call_000_23ec
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, $10
    ld [currentStage], a
    call Call_000_2d07
    xor a
    ld [currentStage], a
    call Call_000_23ec
    ld hl, $9800
    ld bc, $0400

jr_003_6512:
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_003_6512

    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    xor a
    ld [$c83d], a
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ldh a, [$9b]
    and $30
    jr nz, jr_003_6537

    xor a
    ld [$c83d], a

jr_003_6537:
    ldh a, [$9c]
    bit 4, a
    jr nz, jr_003_6553

    ldh a, [$9b]
    bit 4, a
    jr z, jr_003_6560

    ld a, [$c83d]
    inc a
    ld [$c83d], a
    cp $14
    jr nz, jr_003_65b4

    ld a, $0e
    ld [$c83d], a

jr_003_6553:
    ld a, [currentStage]
    cp $1e
    jr z, jr_003_65b4

    inc a
    ld [currentStage], a
    jr jr_003_65b4

jr_003_6560:
    ldh a, [$9c]
    bit 5, a
    jr nz, jr_003_657c

    ldh a, [$9b]
    bit 5, a
    jr z, jr_003_6589

    ld a, [$c83d]
    inc a
    ld [$c83d], a
    cp $14
    jr nz, jr_003_65b4

    ld a, $0e
    ld [$c83d], a

jr_003_657c:
    ld a, [currentStage]
    cp $00
    jr z, jr_003_65b4

    dec a
    ld [currentStage], a
    jr jr_003_65b4

jr_003_6589:
    ldh a, [$9c]
    bit 0, a
    jr z, jr_003_6595

    ld a, [currentStage]
    call Call_000_0903

jr_003_6595:
    ldh a, [$9c]
    bit 1, a
    jr z, jr_003_65a0

    ld a, $20
    call Call_000_0a84

jr_003_65a0:
    ldh a, [$9c]
    bit 3, a
    jr z, jr_003_65b4

    call Call_000_0a65
    ld a, $02
    ld [$c80b], a
    xor a
    ld [$c80c], a
    jr jr_003_65e5

jr_003_65b4:
    ld a, [currentStage]
    ld d, $00

jr_003_65b9:
    inc d
    sub $0a
    jr nc, jr_003_65b9

    dec d
    add $0a
    push af
    ld h, $00
    ld l, d
    add hl, hl
    ld de, $65e6
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9800
    call Call_000_244a
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $65e6
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9803
    call Call_000_244a

jr_003_65e5:
    ret


    ld a, [$0265]
    ld h, [hl]
    ld a, [bc]
    ld h, [hl]
    ld [de], a
    ld h, [hl]
    ld a, [de]
    ld h, [hl]
    ld [hl+], a
    ld h, [hl]
    ld a, [hl+]
    ld h, [hl]
    ld [hl-], a
    ld h, [hl]
    ld a, [hl-]
    ld h, [hl]
    ld b, d
    ld h, [hl]
    inc bc
    ld [bc], a
    ld l, d
    ld l, e
    ld l, h
    adc d
    adc e
    adc h
    inc bc
    ld [bc], a
    jr nz, @+$23

    ld [hl+], a
    ld b, b
    ld b, c
    ld b, d
    inc bc
    ld [bc], a
    inc hl
    inc h
    dec h
    ld b, e
    ld b, h
    ld b, l
    inc bc
    ld [bc], a
    ld h, $27
    jr z, jr_003_665e

    ld b, a
    ld c, b
    inc bc
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    dec hl
    ld c, c
    ld c, d
    ld c, e
    inc bc
    ld [bc], a
    inc l
    dec l
    ld l, $4c
    ld c, l
    ld c, [hl]
    inc bc
    ld [bc], a
    cpl
    jr nc, jr_003_6660

    ld c, a
    ld d, b
    ld d, c
    inc bc
    ld [bc], a
    ld [hl-], a
    inc sp
    inc [hl]
    ld d, d
    ld d, e
    ld d, h
    inc bc
    ld [bc], a
    dec [hl]
    ld [hl], $37
    ld d, l
    ld d, [hl]
    ld d, a
    inc bc
    ld [bc], a
    ld h, a
    ld l, b
    ld l, c
    add a
    adc b
    adc c
    ld a, [$c80c]
    ld de, $6692
    push de
    rst $00
    sub e
    ld h, [hl]
    ret nz

    ld h, [hl]
    ld l, c
    ld h, a
    add l
    ld h, a
    add [hl]
    ld l, c
    and c
    ld l, c

jr_003_665e:
    db $fc
    ld l, c

jr_003_6660:
    ld e, l
    ld b, b
    jr @+$6c

    jr c, jr_003_66d0

    dec c
    ld l, e
    dec d
    ld l, e
    ld e, e
    ld l, e
    and a
    ld l, e
    inc d
    ld l, h
    ld e, [hl]
    ld l, h
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    jp nz, $f66c

    ld l, h
    and e
    ld l, l
    bit 5, l
    db $ed
    ld l, l
    ld b, l
    ld l, [hl]
    ld h, c
    ld l, [hl]
    add e
    ld l, [hl]
    rst $10
    ld l, [hl]
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    ld e, l
    ld b, b
    di
    ld l, [hl]
    ret


    xor a
    ld [playerState], a
    ld [levelDiamondsBitFlag], a
    ld [levelLivesBitFlag], a
    ld [diamonds], a
    ld [chalvoPosCheckpointX], a
    ld b, $10
    ld hl, $cb13

jr_003_66a8:
    ld [hl+], a
    dec b
    jr nz, jr_003_66a8

    call Call_000_23ec
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, [currentStage]
    ld hl, $c982
    bit 1, [hl]
    jr z, jr_003_66cc

    add $09

jr_003_66cc:
    add a
    ld hl, $673c

jr_003_66d0:
    ld b, $00
    ld c, a
    add hl, bc
    ld b, h
    ld c, l
    ld de, $c120
    ld a, $02
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, [bc]
    inc bc
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [bc]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $78
    ld hl, $001b
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, de
    set 1, [hl]
    call Call_003_7038
    call Call_000_2705
    ld hl, $c982
    bit 1, [hl]
    jr z, jr_003_6723

    ld a, [currentStage]
    ld d, $00
    ld e, a
    ld hl, $6760
    add hl, de
    ld a, [hl]
    ld [currentPassword], a

jr_003_6723:
    call Call_000_27f6
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    add b
    ldh a, [$d0]
    jr nc, @+$1a

    ldh a, [$80]
    jr nc, @-$7e

    ldh a, [$80]
    ret nz

    add b
    ldh a, [rNR23]
    ldh a, [$80]
    ldh [$e0], a
    ldh a, [$80]
    ldh a, [$e0]
    jr nc, @-$1e

    inc h
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    jr @-$0e

    jr nz, @-$0e

    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    dec bc
    inc bc
    add hl, bc
    dec bc
    dec e
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6784

    call Call_000_27cc
    ld hl, playerState
    set 0, [hl]
    ld hl, $cb2c
    res 5, [hl]
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6784:
    ret


    ld a, [demoing]
    and a
    jr z, jr_003_67b3

    ldh a, [$9c]
    and $09
    jp nz, Jump_003_694a

jr_003_6792:
    ld hl, $cb2c
    res 5, [hl]
    ld a, [$cb2c]
    bit 7, a
    jr z, jr_003_67a6

    ldh a, [$9b]
    cp $02
    jr nz, jr_003_67a6

    set 5, [hl]

jr_003_67a6:
    call Call_000_25e1
    ld a, [$cb28]
    cp $e0
    jp z, Jump_003_694a

    jr jr_003_67de

jr_003_67b3:
    ldh a, [$9c]
    bit 2, a
    jr z, jr_003_67c6

    ld a, $04
    ldh [$9b], a
    call Call_000_263a
    ld a, $08
    ld [$c80c], a
    ret


jr_003_67c6:
    ldh a, [$9c]
    bit 3, a
    jr z, jr_003_67d9

    ld a, $08
    ldh [$9b], a
    call Call_000_263a
    ld a, $0b
    ld [$c80b], a
    ret


jr_003_67d9:
    call Call_000_263a
    jr jr_003_67e4

jr_003_67de:
    ldh a, [$9c]
    and $0c
    jr nz, jr_003_6792

jr_003_67e4:
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld hl, playerState
    bit 5, [hl]
    jp nz, Jump_003_6985

    call Call_003_70c6
    ld a, [playerState]
    bit 2, a
    jp nz, Jump_003_68f0

    bit 6, a
    jp nz, Jump_003_6890

    bit 3, a
    jp nz, Jump_003_6935

    call Call_003_6f22
    jr nz, jr_003_685e

    ld a, $01
    ld hl, $68f8
    call Call_000_08ae
    ld a, [chalvoPosCheckpointX]
    cp $ff
    jp nz, Jump_003_6985

    ld bc, $c120
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    res 4, a
    ld [$c97e], a
    ld hl, $001c
    add hl, bc
    ld a, [hl]
    ld [$c97f], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [chalvoPosCheckpointX], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [screenPosCheckpointY], a
    ld a, [$c803]
    ld [screenPosCheckpointX], a
    ld a, [$c804]
    ld [$c97c], a
    ld a, [$c81b]
    ld [chalvoPosCheckpointY], a
    ld a, [$c81c]
    ld [$c97d], a
    jp Jump_003_6985


jr_003_685e:
    push af
    call Call_000_0619
    ld hl, $cb2c
    res 5, [hl]
    pop af
    cp $03
    jr z, jr_003_6890

    cp $02
    jr z, jr_003_68ac

    cp $04
    jr z, jr_003_68ce

    ld hl, playerState
    set 1, [hl]
    res 0, [hl]
    xor a
    ld [chalvoPosCheckpointX], a
    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    jp Jump_003_6985


Jump_003_6890:
jr_003_6890:
    ld hl, $cb2c
    res 5, [hl]
    call Call_000_0619
    ld hl, $cb2c
    res 5, [hl]
    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, $1f
    ld [$c80c], a
    jp Jump_003_6985


jr_003_68ac:
    ld hl, playerState
    set 1, [hl]
    res 0, [hl]
    ld hl, $c983
    set 0, [hl]
    xor a
    ld [chalvoPosCheckpointX], a
    call Call_000_0a65
    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, $19
    ld [$c80c], a
    jp Jump_003_6985


jr_003_68ce:
    ld hl, playerState
    set 1, [hl]
    res 0, [hl]
    ld hl, $c983
    set 2, [hl]
    xor a
    ld [chalvoPosCheckpointX], a
    call Call_000_0a65
    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, $16
    ld [$c80c], a
    jp Jump_003_6985


Jump_003_68f0:
    call Call_000_0a65
    push hl
    push af
    ld hl, $1d17
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_000_0619
    ld hl, $cb2c
    res 5, [hl]
    ld hl, playerState
    set 1, [hl]
    res 0, [hl]
    xor a
    ld [chalvoPosCheckpointX], a
    ld hl, $c80c
    ld [hl], $0b
    ld a, $20
    ld [$c812], a
    xor a
    ld [$c83f], a
    ld [$c840], a
    ld hl, $c13c
    bit 2, [hl]
    jp z, Jump_003_692f

    ld a, $01
    jr jr_003_6930

Jump_003_692f:
    xor a

jr_003_6930:
    call Call_000_2f12
    jr jr_003_6985

Jump_003_6935:
    call Call_000_0619
    ld hl, $cb2c
    res 5, [hl]
    ld a, [demoing]
    and a
    jr z, Chalvo_RemoveLife

    ld a, [$cb2c]
    bit 7, a
    jr nz, Chalvo_Respawn

Jump_003_694a:
    call Call_000_0619
    ld hl, $cb2c
    res 5, [hl]
    ld a, $0e
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ld a, $03
    ld [$c80c], a
    ld a, [currentStage]
    cp $07
    jr nc, jr_003_6985

    ld a, $10
    call Call_000_0a84
    jr jr_003_6985

Chalvo_RemoveLife::
    ld hl, playerLives
    dec [hl]

Chalvo_Respawn::
    ld hl, playerState
    set 1, [hl]
    res 0, [hl]
    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, $13
    ld [$c80c], a

Jump_003_6985:
jr_003_6985:
    ret


    ld a, $04
    call Call_000_2e61
    jr z, jr_003_69a0

    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    call Call_000_23fa
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_69a0:
    ret


    ld hl, $c983
    bit 2, [hl]
    jr z, jr_003_69b0

    res 2, [hl]
    call Call_000_2d07
    call Call_000_27cc

jr_003_69b0:
    ld bc, $c120
    ld a, [$c987]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, [$c989]
    ld [$c804], a
    ld a, [$c98b]
    ld [$c81c], a
    ld a, [$c986]
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, [$c988]
    ld [$c803], a
    ld a, [$c98a]
    ld [$c81b], a
    call Call_000_27f6
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6a17

    ld a, $03
    ld [$c80c], a
    ld hl, playerState
    res 1, [hl]
    set 0, [hl]

jr_003_6a17:
    ret


    ld hl, $c100
    ld de, $c480
    ld bc, $0380
    call Call_000_03b2
    ld a, [$c803]
    ld [$c809], a
    ld a, [$c804]
    ld [$c80a], a
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ldh a, [$9b]
    bit 2, a
    jp z, Jump_003_6aeb

    ld de, $0000
    ldh a, [$9b]
    bit 4, a
    jr z, jr_003_6a5d

    ld a, [$c803]
    add $04
    cp $61
    jp c, Jump_003_6a5b

    sub $60
    cpl
    inc a
    add $04
    ld d, a
    jr jr_003_6a5d

Jump_003_6a5b:
    ld d, $04

jr_003_6a5d:
    ldh a, [$9b]
    bit 5, a
    jr z, jr_003_6a75

    ld a, [$c803]
    sub $04
    bit 7, a
    jr z, jr_003_6a73

    add $04
    cpl
    inc a
    ld d, a
    jr jr_003_6a75

jr_003_6a73:
    ld d, $fc

jr_003_6a75:
    ldh a, [$9b]
    bit 6, a
    jr z, jr_003_6a8d

    ld a, [$c804]
    sub $04
    bit 7, a
    jr z, jr_003_6a8b

    add $04
    cpl
    inc a
    ld e, a
    jr jr_003_6a8d

jr_003_6a8b:
    ld e, $fc

jr_003_6a8d:
    ldh a, [$9b]
    bit 7, a
    jr z, jr_003_6aa8

    ld a, [$c804]
    add $04
    cp $71
    jp c, Jump_003_6aa6

    sub $70
    cpl
    inc a
    add $04
    ld e, a
    jr jr_003_6aa8

Jump_003_6aa6:
    ld e, $04

jr_003_6aa8:
    ld a, $1c
    ld [$c82d], a
    ld bc, $c100

jr_003_6ab0:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_003_6acf

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 3, a
    jr z, jr_003_6acf

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub d
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub e
    ld [hl], a

jr_003_6acf:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $c82d
    dec [hl]
    jr nz, jr_003_6ab0

    ld a, [$c803]
    add d
    ld [$c803], a
    ld a, [$c804]
    add e
    ld [$c804], a
    jr jr_003_6b0c

Jump_003_6aeb:
    ld hl, $c480
    ld de, $c100
    ld bc, $0380
    call Call_000_03b2
    ld a, [$c809]
    ld [$c803], a
    ld a, [$c80a]
    ld [$c804], a
    ld a, $03
    ld [$c80c], a
    ld a, $04
    ldh [$9b], a

jr_003_6b0c:
    ret


    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, [$c83f]
    ld [$c81f], a
    ld a, [$c840]
    ld [$c820], a
    ld a, [$c81f]
    add $02
    ld [$c81f], a
    ld a, [$c820]
    adc $00
    ld [$c820], a
    ld de, $c83f
    ld a, [$c81f]
    call Call_000_240e
    ld de, $c840
    ld a, [$c820]
    call Call_000_240e
    ld a, [$c812]
    dec a
    ld [$c812], a
    jr z, jr_003_6b5a

    ld a, $00
    ld d, $07
    call Call_000_2df8
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6b5a:
    ret


    ld a, [$c83f]
    ld [$c81f], a
    ld a, [$c840]
    ld [$c820], a
    ld a, [$c81f]
    add $02
    ld [$c81f], a
    ld a, [$c820]
    adc $00
    ld [$c820], a
    ld de, $c83f
    ld a, [$c81f]
    call Call_000_240e
    ld de, $c840
    ld a, [$c820]
    call Call_000_240e
    ld a, $20
    call Call_000_2e61
    jr z, jr_003_6ba6

    call Call_000_2f39
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    call Call_000_23fa
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6ba6:
    ret


    ld a, $00
    call Call_000_0406
    cp $01
    jr nz, jr_003_6bb7

    ld hl, $c983
    set 2, [hl]
    jr jr_003_6bc2

jr_003_6bb7:
    cp $00
    jr nz, jr_003_6bc5

    ld hl, $c983
    set 0, [hl]
    res 2, [hl]

jr_003_6bc2:
    call Call_000_2d07

jr_003_6bc5:
    ld bc, $c120
    ld a, $01
    ld hl, $001e
    add hl, bc
    ld [hl], a
    ld a, $01
    ld hl, $0002
    add hl, bc
    ld [hl], a
    ld a, [cursorIndex]
    add $08
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, [passwordLetter]
    add $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    call Call_003_7038
    call Call_000_27f6
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, [$c842]
    call Call_000_2f12
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, [$c83f]
    ld [$c81f], a
    ld a, [$c840]
    ld [$c820], a
    ld a, [$c81f]
    sub $02
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    ld de, $c83f
    ld a, [$c81f]
    call Call_000_240e
    ld de, $c840
    ld a, [$c820]
    call Call_000_240e
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $20
    call Call_000_2e61
    jr z, jr_003_6c5d

    ld a, $20
    ld [$c812], a
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6c5d:
    ret


    ld a, [$c83f]
    ld [$c81f], a
    ld a, [$c840]
    ld [$c820], a
    ld a, [$c81f]
    sub $02
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    ld de, $c83f
    ld a, [$c81f]
    call Call_000_240e
    ld de, $c840
    ld a, [$c820]
    call Call_000_240e
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, [$c812]
    dec a
    ld [$c812], a
    jr z, jr_003_6cc1

    call Call_000_2f39
    ld a, $03
    ld [$c80c], a
    ld hl, playerState
    res 1, [hl]
    res 2, [hl]
    set 0, [hl]
    ld a, $ff
    ld [chalvoPosCheckpointX], a
    ld hl, $c983
    bit 2, [hl]
    jr nz, jr_003_6cc1

    bit 0, [hl]
    jr nz, jr_003_6cc1

    call Call_000_0a79

jr_003_6cc1:
    ret


    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6cf5

    ld a, [playerLives]
    and a
    jr nz, jr_003_6ce2

    ld hl, $cb2c
    res 5, [hl]
    call Call_000_23ec
    ld a, $01
    ld [$c80b], a
    xor a
    ld [$c80c], a
    jr jr_003_6cf5

jr_003_6ce2:
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    call Call_000_23fa
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6cf5:
    ret


    ld de, $c120
    ld a, [$c97e]
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, [$c97f]
    ld hl, $001c
    add hl, de
    ld [hl], a
    ld a, [chalvoPosCheckpointX]
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, [screenPosCheckpointY]
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, [screenPosCheckpointX]
    ld [$c803], a
    ld a, [$c97c]
    ld [$c804], a
    ld a, [chalvoPosCheckpointY]
    ld [$c81b], a
    ld a, [$c97d]
    ld [$c81c], a
    ld a, $78
    ld hl, $001b
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, de
    set 1, [hl]
    xor a
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $001c
    add hl, de
    bit 2, [hl]
    jr z, jr_003_6d6d

    ld a, $06
    ld hl, $001e
    add hl, de
    ld [hl], a
    ld a, $03
    ld hl, $0002
    add hl, de
    ld [hl], a
    xor a
    ld hl, $000f
    add hl, de
    ld [hl+], a
    ld [hl], a
    ld hl, $000e
    add hl, de
    ld [hl], a

jr_003_6d6d:
    xor a
    ld hl, $001c
    add hl, de
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld hl, $0016
    add hl, de
    ld [hl], a
    ld hl, $0019
    add hl, de
    ld [hl], a
    call Call_000_27f6
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6dca

    ld a, $03
    ld [$c80c], a
    ld hl, playerState
    res 1, [hl]
    set 0, [hl]
    res 3, [hl]
    ld hl, $c983
    bit 0, [hl]
    jr nz, jr_003_6dca

    call Call_000_27cc

jr_003_6dca:
    ret


    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6dec

    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6dec

    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    call Call_000_23fa
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6dec:
    ret


    ld hl, $c983
    bit 0, [hl]
    jr z, jr_003_6df6

    res 0, [hl]

jr_003_6df6:
    call Call_000_2d07
    ld bc, $c120
    ld a, [$c987]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, [$c989]
    ld [$c804], a
    ld a, [$c98b]
    ld [$c81c], a
    ld a, [$c986]
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, [$c988]
    ld [$c803], a
    ld a, [$c98a]
    ld [$c81b], a
    call Call_000_27f6
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6e60

    ld a, $03
    ld [$c80c], a
    ld hl, playerState
    res 1, [hl]
    set 0, [hl]

jr_003_6e60:
    ret


    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6e82

    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6e82

    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    call Call_000_23fa
    ld a, [$c80c]
    inc a
    ld [$c80c], a

jr_003_6e82:
    ret


    ld hl, $c983
    res 2, [hl]
    call Call_000_2d07
    ld bc, $c120
    ld a, [$c987]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, [$c989]
    ld [$c804], a
    ld a, [$c98b]
    ld [$c81c], a
    ld a, [$c986]
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, [$c988]
    ld [$c803], a
    ld a, [$c98a]
    ld [$c81b], a
    call Call_000_27f6
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6ef2

    ld a, $03
    ld [$c80c], a
    ld hl, playerState
    res 1, [hl]
    set 0, [hl]

jr_003_6ef2:
    ret


    ld a, [playerState]
    bit 6, a
    jp z, Jump_003_6f07

    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $20
    jr jr_003_6f09

Jump_003_6f07:
    ld a, $04

jr_003_6f09:
    call Call_000_2e61
    jr z, jr_003_6f21

    call Call_000_23ec
    ld a, [currentStage]
    inc a
    ld [currentStage], a
    ld a, $0c
    ld [$c80b], a
    xor a
    ld [$c80c], a

jr_003_6f21:
    ret


Call_003_6f22:
    ld bc, $c120
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    bit 0, a
    jp nz, Jump_003_7036

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $1f
    cp $c8
    jp c, Jump_003_6f6e

    ld hl, $c983
    bit 0, [hl]
    jp nz, Jump_003_701a

    add $90
    add $10
    ld [$c987], a
    ld a, $70
    ld [$c989], a
    ld [$c98b], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c986], a
    ld a, [$c803]
    ld [$c988], a
    ld a, [$c81b]
    ld [$c98a], a
    ld a, $01
    call Call_000_0406
    jp Jump_003_701f


Jump_003_6f6e:
    cp $81
    jp c, Jump_003_6fa5

    ld hl, $c983
    bit 1, [hl]
    jp nz, Jump_003_701a

    sub $90
    add $2f
    ld [$c987], a
    ld a, $00
    ld [$c989], a
    ld [$c98b], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c986], a
    ld a, [$c803]
    ld [$c988], a
    ld a, [$c81b]
    ld [$c98a], a
    ld a, $02
    call Call_000_0406
    jr jr_003_701f

Jump_003_6fa5:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $0f
    cp $c8
    jp c, Jump_003_6fe3

    ld hl, $c983
    bit 1, [hl]
    jp nz, Jump_003_701a

    add $a0
    add $00
    ld [$c986], a
    ld a, $60
    ld [$c988], a
    ld [$c98a], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c987], a
    ld a, [$c804]
    ld [$c989], a
    ld a, [$c81c]
    ld [$c98b], a
    ld a, $03
    call Call_000_0406
    jr jr_003_701f

Jump_003_6fe3:
    cp $91
    jp c, Jump_003_7036

    ld hl, $c983
    bit 1, [hl]
    jp nz, Jump_003_701a

    sub $a0
    add $1f
    ld [$c986], a
    ld a, $00
    ld [$c988], a
    ld [$c98a], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c987], a
    ld a, [$c804]
    ld [$c989], a
    ld a, [$c81c]
    ld [$c98b], a
    ld a, $04
    call Call_000_0406
    jr jr_003_701f

Jump_003_701a:
    ld a, $03
    and a
    jr jr_003_7037

Jump_003_701f:
jr_003_701f:
    cp $00
    jr z, jr_003_702c

    cp $01
    jr z, jr_003_7031

    ld a, $01
    and a
    jr jr_003_7037

jr_003_702c:
    ld a, $02
    and a
    jr jr_003_7037

jr_003_7031:
    ld a, $04
    and a
    jr jr_003_7037

Jump_003_7036:
    xor a

jr_003_7037:
    ret


Call_003_7038:
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $50
    jp c, Jump_003_706d

    sub $50
    cp $60
    jp c, Jump_003_7061

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub $60
    add $08
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, $60
    ld [$c803], a
    jr jr_003_7078

Jump_003_7061:
    ld [$c803], a
    ld a, $58
    ld hl, $0004
    add hl, bc
    ld [hl], a
    jr jr_003_7078

Jump_003_706d:
    add $08
    ld hl, $0004
    add hl, bc
    ld [hl], a
    xor a
    ld [$c803], a

jr_003_7078:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $54
    jp c, Jump_003_70aa

    sub $54
    cp $70
    jp c, Jump_003_709e

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $70
    add $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ld a, $70
    ld [$c804], a
    jr jr_003_70b5

Jump_003_709e:
    ld [$c804], a
    ld a, $64
    ld hl, $0005
    add hl, bc
    ld [hl], a
    jr jr_003_70b5

Jump_003_70aa:
    add $10
    ld hl, $0005
    add hl, bc
    ld [hl], a
    xor a
    ld [$c804], a

jr_003_70b5:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c81b], a
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld [$c81c], a
    ret


Call_003_70c6:
    ld a, [$c873]
    and a
    jr z, jr_003_70dd

    ld d, a
    ld hl, $c843

jr_003_70d0:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [bc], a
    dec d
    jr nz, jr_003_70d0

    xor a
    ld [$c873], a

jr_003_70dd:
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
