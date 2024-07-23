; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c83a], a
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    ld [$c839], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c83c], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    ld [$c83b], a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_001_4076

    dec a
    ld h, a
    ld l, $00
    srl h
    rr l
    ld de, $4077
    add hl, de
    ld d, h
    ld e, l
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    add a
    add a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [$c839]
    ld h, a
    ld a, [de]
    inc de
    add h
    push af
    ld hl, $0008
    add hl, bc
    ld [hl], a
    pop af
    ld a, [$c83a]
    ld h, a
    ld a, [de]
    inc de
    adc h
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, [$c83b]
    ld h, a
    ld a, [de]
    inc de
    add h
    push af
    ld hl, $0009
    add hl, bc
    ld [hl], a
    pop af
    ld a, [$c83c]
    ld h, a
    ld a, [de]
    adc h
    ld hl, $0005
    add hl, bc
    ld [hl], a

jr_001_4076:
    ret


    nop
    nop
    ret nz

    rst $38
    inc c
    nop
    jp nz, $18ff

    nop
    push bc
    rst $38
    inc hl
    nop
    set 7, a
    dec l
    nop
    db $d3
    rst $38
    dec [hl]
    nop
    db $dd
    rst $38
    dec sp
    nop
    add sp, -$01
    ld a, $00
    db $f4
    rst $38
    ld b, b
    nop
    nop
    nop
    ld a, $00
    inc c
    nop
    dec sp
    nop
    jr jr_001_40a3

jr_001_40a3:
    dec [hl]
    nop
    inc hl
    nop
    dec l
    nop
    dec l
    nop
    inc hl
    nop
    dec [hl]
    nop
    jr jr_001_40b1

jr_001_40b1:
    dec sp
    nop
    inc c
    nop
    ld a, $00
    nop
    nop
    ld b, b
    nop
    db $f4
    rst $38
    ld a, $00
    add sp, -$01
    dec sp
    nop
    db $dd
    rst $38
    dec [hl]
    nop
    db $d3
    rst $38
    dec l
    nop
    set 7, a
    inc hl
    nop
    push bc
    rst $38
    jr jr_001_40d3

jr_001_40d3:
    jp nz, Jump_000_0cff

    nop
    ret nz

    rst $38
    nop
    nop
    jp nz, $f4ff

    rst $38
    push bc
    rst $38
    add sp, -$01
    set 7, a
    db $dd
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    db $dd
    rst $38
    set 7, a
    add sp, -$01
    push bc
    rst $38
    db $f4
    rst $38
    jp nz, Jump_000_00ff

    nop
    add b
    rst $38
    jr jr_001_40fd

jr_001_40fd:
    add e
    rst $38
    jr nc, jr_001_4101

jr_001_4101:
    adc d
    rst $38
    ld b, a
    nop
    sub [hl]
    rst $38
    ld e, d
    nop
    and [hl]
    rst $38
    ld l, d
    nop
    cp c
    rst $38
    halt
    ret nc

    rst $38
    ld a, l
    nop
    add sp, -$01
    add b
    nop
    nop
    nop
    ld a, l
    nop
    jr jr_001_411f

jr_001_411f:
    halt
    jr nc, jr_001_4123

jr_001_4123:
    ld l, d
    nop
    ld b, a
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld b, a
    nop
    ld l, d
    nop
    jr nc, jr_001_4131

jr_001_4131:
    halt
    jr jr_001_4135

jr_001_4135:
    ld a, l
    nop
    nop
    nop
    add b
    nop
    add sp, -$01
    ld a, l
    nop
    ret nc

    rst $38
    halt
    cp c
    rst $38
    ld l, d
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    sub [hl]
    rst $38
    ld b, a
    nop
    adc d
    rst $38
    jr nc, jr_001_4153

jr_001_4153:
    add e
    rst $38
    jr jr_001_4157

jr_001_4157:
    add b
    rst $38
    nop
    nop
    add e
    rst $38
    add sp, -$01
    adc d
    rst $38
    ret nc

    rst $38
    sub [hl]
    rst $38
    cp c
    rst $38
    and [hl]
    rst $38
    and [hl]
    rst $38
    cp c
    rst $38
    sub [hl]
    rst $38
    ret nc

    rst $38
    adc d
    rst $38
    add sp, -$01
    add e
    rst $38
    nop
    nop
    ld b, b
    rst $38
    dec h
    nop
    ld b, h
    rst $38
    ld c, c
    nop
    ld c, a
    rst $38
    ld l, d
    nop
    ld h, c
    rst $38
    add a
    nop
    ld a, c
    rst $38
    sbc a
    nop
    sub [hl]
    rst $38
    or c
    nop
    or a
    rst $38
    cp h
    nop
    db $db
    rst $38
    ret nz

    nop
    nop
    nop
    cp h
    nop
    dec h
    nop
    or c
    nop
    ld c, c
    nop
    sbc a
    nop
    ld l, d
    nop
    add a
    nop
    add a
    nop
    ld l, d
    nop
    sbc a
    nop
    ld c, c
    nop
    or c
    nop
    dec h
    nop
    cp h
    nop
    nop
    nop
    ret nz

    nop
    db $db
    rst $38
    cp h
    nop
    or a
    rst $38
    or c
    nop
    sub [hl]
    rst $38
    sbc a
    nop
    ld a, c
    rst $38
    add a
    nop
    ld h, c
    rst $38
    ld l, d
    nop
    ld c, a
    rst $38
    ld c, c
    nop
    ld b, h
    rst $38
    dec h
    nop
    ld b, b
    rst $38
    nop
    nop
    ld b, h
    rst $38
    db $db
    rst $38
    ld c, a
    rst $38
    or a
    rst $38
    ld h, c
    rst $38
    sub [hl]
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    sub [hl]
    rst $38
    ld h, c
    rst $38
    or a
    rst $38
    ld c, a
    rst $38
    db $db
    rst $38
    ld b, h
    rst $38
    nop
    nop
    nop
    rst $38
    ld sp, $0500
    rst $38
    ld h, c
    nop
    inc d
    rst $38
    adc [hl]
    nop
    inc l
    rst $38
    or l
    nop
    ld c, e
    rst $38
    call nc, Call_001_7200
    rst $38
    db $ec
    nop
    sbc a
    rst $38
    ei
    nop
    rst $08
    rst $38
    nop
    ld bc, $0000
    ei
    nop
    ld sp, $ec00
    nop
    ld h, c
    nop
    call nc, $8e00
    nop
    or l
    nop
    or l
    nop
    adc [hl]
    nop
    call nc, $6100
    nop
    db $ec
    nop
    ld sp, $fb00
    nop
    nop
    nop
    nop
    ld bc, $ffcf
    ei
    nop
    sbc a
    rst $38
    db $ec
    nop
    ld [hl], d
    rst $38
    call nc, $4b00
    rst $38
    or l
    nop
    inc l
    rst $38
    adc [hl]
    nop
    inc d
    rst $38
    ld h, c
    nop
    dec b
    rst $38
    ld sp, $0000
    rst $38
    nop
    nop
    dec b
    rst $38
    rst $08
    rst $38
    inc d
    rst $38
    sbc a
    rst $38
    inc l
    rst $38
    ld [hl], d
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld [hl], d
    rst $38
    inc l
    rst $38
    sbc a
    rst $38
    inc d
    rst $38
    rst $08
    rst $38
    dec b
    rst $38
    nop
    nop
    ret nz

    cp $3e
    nop
    rst $00
    cp $7a
    nop
    reti


    cp $b1
    nop
    or $fe
    ld [c], a
    nop
    ld e, $ff
    ld a, [bc]
    ld bc, $ff4f
    daa
    ld bc, $ff86
    add hl, sp
    ld bc, $ffc2
    ld b, b
    ld bc, $0000
    add hl, sp
    ld bc, $003e
    daa
    ld bc, $007a
    ld a, [bc]
    ld bc, $00b1
    ld [c], a
    nop
    ld [c], a
    nop
    or c
    nop
    ld a, [bc]
    ld bc, $007a
    daa
    ld bc, $003e
    add hl, sp
    ld bc, $0000
    ld b, b
    ld bc, $ffc2
    add hl, sp
    ld bc, $ff86
    daa
    ld bc, $ff4f
    ld a, [bc]
    ld bc, $ff1e
    ld [c], a
    nop
    or $fe
    or c
    nop
    reti


    cp $7a
    nop
    rst $00
    cp $3e
    nop
    ret nz

    cp $00
    nop
    rst $00
    cp $c2
    rst $38
    reti


    cp $86
    rst $38
    or $fe
    ld c, a
    rst $38
    ld e, $ff
    ld e, $ff
    ld c, a
    rst $38
    or $fe
    add [hl]
    rst $38
    reti


    cp $c2
    rst $38
    rst $00
    cp $00
    nop
    add b
    cp $4a
    nop
    adc b
    cp $92
    nop
    sbc [hl]
    cp $d5
    nop
    pop bc
    cp $0f
    ld bc, $fef1
    ccf
    ld bc, $ff2b
    ld h, d
    ld bc, $ff6e
    ld a, b
    ld bc, $ffb6
    add b
    ld bc, $0000
    ld a, b
    ld bc, $004a
    ld h, d
    ld bc, $0092
    ccf
    ld bc, $00d5
    rrca
    ld bc, $010f
    push de
    nop
    ccf
    ld bc, $0092
    ld h, d
    ld bc, $004a
    ld a, b
    ld bc, $0000
    add b
    ld bc, $ffb6
    ld a, b
    ld bc, $ff6e
    ld h, d
    ld bc, $ff2b
    ccf
    ld bc, $fef1
    rrca
    ld bc, $fec1
    push de
    nop
    sbc [hl]
    cp $92
    nop
    adc b
    cp $4a
    nop
    add b
    cp $00
    nop
    adc b
    cp $b6
    rst $38
    sbc [hl]
    cp $6e
    rst $38
    pop bc
    cp $2b
    rst $38
    pop af
    cp $f1
    cp $2b
    rst $38
    pop bc
    cp $6e
    rst $38
    sbc [hl]
    cp $b6
    rst $38
    adc b
    cp $00
    nop
    ld b, b
    cp $57
    nop
    ld c, c
    cp $ab
    nop
    ld h, e
    cp $f8
    nop
    adc h
    cp $3c
    ld bc, $fec4
    ld [hl], h
    ld bc, $ff08
    sbc l
    ld bc, $ff55
    or a
    ld bc, $ffa9
    ret nz

    ld bc, $0000
    or a
    ld bc, $0057
    sbc l
    ld bc, $00ab
    ld [hl], h
    ld bc, $00f8
    inc a
    ld bc, $013c
    ld hl, sp+$00
    ld [hl], h
    ld bc, $00ab
    sbc l
    ld bc, $0057
    or a
    ld bc, $0000
    ret nz

    ld bc, $ffa9
    or a
    ld bc, $ff55
    sbc l
    ld bc, $ff08
    ld [hl], h
    ld bc, $fec4
    inc a
    ld bc, $fe8c
    ld hl, sp+$00
    ld h, e
    cp $ab
    nop
    ld c, c
    cp $57
    nop
    ld b, b
    cp $00
    nop
    ld c, c
    cp $a9
    rst $38
    ld h, e
    cp $55
    rst $38
    adc h
    cp $08
    rst $38
    call nz, $c4fe
    cp $08
    rst $38
    adc h
    cp $55
    rst $38
    ld h, e
    cp $a9
    rst $38
    ld c, c
    cp $00
    nop
    nop
    cp $63
    nop
    ld a, [bc]
    cp $c3
    nop
    daa
    cp $1c
    ld bc, $fe57
    ld l, d
    ld bc, $fe96
    xor c
    ld bc, $fee4
    reti


    ld bc, $ff3d
    or $01
    sbc l
    rst $38
    nop
    ld [bc], a
    nop
    nop
    or $01
    ld h, e
    nop
    reti


    ld bc, $00c3
    xor c
    ld bc, $011c
    ld l, d
    ld bc, $016a
    inc e
    ld bc, $01a9
    jp $d900


    ld bc, $0063
    or $01
    nop
    nop
    nop
    ld [bc], a
    sbc l
    rst $38
    or $01
    dec a
    rst $38
    reti


    ld bc, $fee4
    xor c
    ld bc, $fe96
    ld l, d
    ld bc, $fe57
    inc e
    ld bc, $fe27
    jp Jump_000_0a00


    cp $63
    nop
    nop
    cp $00
    nop
    ld a, [bc]
    cp $9d
    rst $38
    daa
    cp $3d
    rst $38
    ld d, a
    cp $e4
    cp $96
    cp $96
    cp $e4
    cp $57
    cp $3d
    rst $38
    daa
    cp $9d
    rst $38
    ld a, [bc]
    cp $00
    nop
    ret nz

    db $fd
    ld [hl], b
    nop
    call z, $dcfd
    nop
    db $ec
    db $fd
    ld b, b
    ld bc, $fe22
    sub a
    ld bc, $fe69
    sbc $01
    ret nz

    cp $14
    ld [bc], a
    inc h
    rst $38
    inc [hl]
    ld [bc], a
    sub b
    rst $38
    ld b, b
    ld [bc], a
    nop
    nop
    inc [hl]
    ld [bc], a
    ld [hl], b
    nop
    inc d
    ld [bc], a
    call c, $de00
    ld bc, $0140
    sub a
    ld bc, $0197
    ld b, b
    ld bc, $01de
    call c, $1400
    ld [bc], a
    ld [hl], b
    nop
    inc [hl]
    ld [bc], a
    nop
    nop
    ld b, b
    ld [bc], a
    sub b
    rst $38
    inc [hl]
    ld [bc], a
    inc h
    rst $38
    inc d
    ld [bc], a
    ret nz

    cp $de
    ld bc, $fe69
    sub a
    ld bc, $fe22
    ld b, b
    ld bc, $fdec
    call c, $cc00
    db $fd
    ld [hl], b
    nop
    ret nz

    db $fd
    nop
    nop
    call z, $90fd
    rst $38
    db $ec
    db $fd
    inc h
    rst $38
    ld [hl+], a
    cp $c0
    cp $69
    cp $69
    cp $c0
    cp $22
    cp $24
    rst $38
    db $ec
    db $fd
    sub b
    rst $38
    call z, Call_000_00fd
    nop
    add b
    db $fd
    ld a, h
    nop
    adc l
    db $fd
    db $f4
    nop
    or c
    db $fd
    ld h, e
    ld bc, $fdec
    call nz, $3c01
    cp $14
    ld [bc], a
    sbc l
    cp $4f
    ld [bc], a
    inc c
    rst $38
    ld [hl], e
    ld [bc], a
    add h
    rst $38
    add b
    ld [bc], a
    nop
    nop
    ld [hl], e
    ld [bc], a
    ld a, h
    nop
    ld c, a
    ld [bc], a
    db $f4
    nop
    inc d
    ld [bc], a
    ld h, e
    ld bc, $01c4
    call nz, Call_001_6301
    ld bc, $0214
    db $f4
    nop
    ld c, a
    ld [bc], a
    ld a, h
    nop
    ld [hl], e
    ld [bc], a
    nop
    nop
    add b
    ld [bc], a
    add h
    rst $38
    ld [hl], e
    ld [bc], a
    inc c
    rst $38
    ld c, a
    ld [bc], a
    sbc l
    cp $14
    ld [bc], a
    inc a
    cp $c4
    ld bc, $fdec
    ld h, e
    ld bc, $fdb1
    db $f4
    nop
    adc l
    db $fd
    ld a, h
    nop
    add b
    db $fd
    nop
    nop
    adc l
    db $fd
    add h
    rst $38
    or c
    db $fd
    inc c
    rst $38
    db $ec
    db $fd
    sbc l
    cp $3c
    cp $3c
    cp $9d
    cp $ec
    db $fd
    inc c
    rst $38
    or c
    db $fd
    add h
    rst $38
    adc l
    db $fd
    nop
    nop
    ld b, b
    db $fd
    adc c
    nop
    ld c, [hl]
    db $fd
    dec c
    ld bc, $fd76
    add a
    ld bc, $fdb7
    pop af
    ld bc, $fe0f
    ld c, c
    ld [bc], a
    ld a, c
    cp $8a
    ld [bc], a
    di
    cp $b2
    ld [bc], a
    ld [hl], a
    rst $38
    ret nz

    ld [bc], a
    nop
    nop
    or d
    ld [bc], a
    adc c
    nop
    adc d
    ld [bc], a
    dec c
    ld bc, $0249
    add a
    ld bc, $01f1
    pop af
    ld bc, $0187
    ld c, c
    ld [bc], a
    dec c
    ld bc, $028a
    adc c
    nop
    or d
    ld [bc], a
    nop
    nop
    ret nz

    ld [bc], a
    ld [hl], a
    rst $38
    or d
    ld [bc], a
    di
    cp $8a
    ld [bc], a
    ld a, c
    cp $49
    ld [bc], a
    rrca
    cp $f1
    ld bc, $fdb7
    add a
    ld bc, $fd76
    dec c
    ld bc, $fd4e
    adc c
    nop
    ld b, b
    db $fd
    nop
    nop
    ld c, [hl]
    db $fd
    ld [hl], a
    rst $38
    db $76
    db $fd
    di
    cp $b7
    db $fd
    ld a, c
    cp $0f
    cp $0f
    cp $79
    cp $b7
    db $fd
    di
    cp $76
    db $fd
    ld [hl], a
    rst $38
    ld c, [hl]
    db $fd
    nop
    nop
    nop
    db $fd
    sub l
    nop
    rrca
    db $fd
    dec h
    ld bc, $fd3b
    xor d
    ld bc, $fd82
    rra
    ld [bc], a
    pop hl
    db $fd
    ld a, [hl]
    ld [bc], a
    ld d, [hl]
    cp $c5
    ld [bc], a
    db $db
    cp $f1
    ld [bc], a
    ld l, e
    rst $38
    nop
    inc bc
    nop
    nop
    pop af
    ld [bc], a
    sub l
    nop
    push bc
    ld [bc], a
    dec h
    ld bc, $027e
    xor d
    ld bc, $021f
    rra
    ld [bc], a
    xor d
    ld bc, $027e
    dec h
    ld bc, $02c5
    sub l
    nop
    pop af
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld l, e
    rst $38
    pop af
    ld [bc], a
    db $db
    cp $c5
    ld [bc], a
    ld d, [hl]
    cp $7e
    ld [bc], a
    pop hl
    db $fd
    rra
    ld [bc], a
    add d
    db $fd
    xor d
    ld bc, $fd3b
    dec h
    ld bc, $fd0f
    sub l
    nop
    nop
    db $fd
    nop
    nop
    rrca
    db $fd
    ld l, e
    rst $38
    dec sp
    db $fd
    db $db
    cp $82
    db $fd
    ld d, [hl]
    cp $e1
    db $fd
    pop hl
    db $fd
    ld d, [hl]
    cp $82
    db $fd
    db $db
    cp $3b
    db $fd
    ld l, e
    rst $38
    rrca
    db $fd
    nop
    nop
    ret nz

    db $fc
    and d
    nop
    ret nc

    db $fc
    ld a, $01
    nop
    db $fd
    adc $01
    ld c, l
    db $fd
    ld c, h
    ld [bc], a
    or h
    db $fd
    or e
    ld [bc], a
    ld [hl-], a
    cp $00
    inc bc
    jp nz, Jump_000_30fe

    inc bc
    ld e, [hl]
    rst $38
    ld b, b
    inc bc
    nop
    nop
    jr nc, jr_001_46a0

    and d
    nop
    nop

jr_001_46a0:
    inc bc
    ld a, $01
    or e
    ld [bc], a
    adc $01
    ld c, h
    ld [bc], a
    ld c, h
    ld [bc], a
    adc $01
    or e
    ld [bc], a
    ld a, $01
    nop
    inc bc
    and d
    nop
    jr nc, jr_001_46ba

    nop
    nop
    ld b, b

jr_001_46ba:
    inc bc
    ld e, [hl]
    rst $38
    jr nc, jr_001_46c2

    jp nz, Jump_000_00fe

jr_001_46c2:
    inc bc
    ld [hl-], a
    cp $b3
    ld [bc], a
    or h
    db $fd
    ld c, h
    ld [bc], a
    ld c, l
    db $fd
    adc $01
    nop
    db $fd
    ld a, $01
    ret nc

    db $fc
    and d
    nop
    ret nz

    db $fc
    nop
    nop
    ret nc

    db $fc
    ld e, [hl]
    rst $38
    nop
    db $fd
    jp nz, $4dfe

    db $fd
    ld [hl-], a
    cp $b4
    db $fd
    or h
    db $fd
    ld [hl-], a
    cp $4d
    db $fd
    jp nz, Jump_000_00fe

    db $fd
    ld e, [hl]
    rst $38
    ret nc

    db $fc
    nop
    nop
    add b
    db $fc
    xor [hl]
    nop
    sub d
    db $fc
    ld d, [hl]
    ld bc, $fcc5
    pop af
    ld bc, $fd18
    ld a, c
    ld [bc], a
    add a
    db $fd
    add sp, $02
    rrca
    cp $3b
    inc bc
    xor d
    cp $6e
    inc bc
    ld d, d
    rst $38
    add b
    inc bc
    nop
    nop
    ld l, [hl]
    inc bc
    xor [hl]
    nop
    dec sp
    inc bc
    ld d, [hl]
    ld bc, $02e8
    pop af
    ld bc, $0279
    ld a, c
    ld [bc], a
    pop af
    ld bc, $02e8
    ld d, [hl]
    ld bc, $033b
    xor [hl]
    nop
    ld l, [hl]
    inc bc
    nop
    nop
    add b
    inc bc
    ld d, d
    rst $38
    ld l, [hl]
    inc bc
    xor d
    cp $3b
    inc bc
    rrca
    cp $e8
    ld [bc], a
    add a
    db $fd
    ld a, c

jr_001_474a:
    ld [bc], a
    jr jr_001_474a

    pop af
    ld bc, $fcc5
    ld d, [hl]
    ld bc, $fc92
    xor [hl]
    nop
    add b
    db $fc
    nop
    nop
    sub d
    db $fc
    ld d, d
    rst $38
    push bc
    db $fc
    xor d
    cp $18
    db $fd
    rrca
    cp $87
    db $fd
    add a
    db $fd
    rrca
    cp $18
    db $fd
    xor d
    cp $c5
    db $fc
    ld d, d
    rst $38
    sub d
    db $fc
    nop
    nop
    ld b, b
    db $fc
    cp e
    nop
    ld d, e
    db $fc
    ld l, a
    ld bc, $fc8a
    dec d
    ld [bc], a
    ld [c], a
    db $fc
    and [hl]
    ld [bc], a
    ld e, d
    db $fd
    ld e, $03
    db $eb
    db $fd
    db $76
    inc bc
    sub c
    cp $ad
    inc bc
    ld b, l
    rst $38
    ret nz

    inc bc
    nop
    nop
    xor l
    inc bc
    cp e
    nop
    db $76
    inc bc
    ld l, a
    ld bc, $031e
    dec d
    ld [bc], a
    and [hl]
    ld [bc], a
    and [hl]
    ld [bc], a
    dec d
    ld [bc], a
    ld e, $03
    ld l, a
    ld bc, $0376
    cp e
    nop
    xor l
    inc bc
    nop
    nop
    ret nz

    inc bc
    ld b, l
    rst $38
    xor l
    inc bc
    sub c
    cp $76
    inc bc
    db $eb
    db $fd
    ld e, $03
    ld e, d
    db $fd
    and [hl]
    ld [bc], a
    ld [c], a
    db $fc
    dec d
    ld [bc], a
    adc d
    db $fc
    ld l, a
    ld bc, $fc53
    cp e
    nop
    ld b, b
    db $fc
    nop
    nop
    ld d, e
    db $fc
    ld b, l
    rst $38
    adc d
    db $fc
    sub c
    cp $e2
    db $fc
    db $eb
    db $fd
    ld e, d
    db $fd
    ld e, d
    db $fd
    db $eb
    db $fd
    ld [c], a
    db $fc
    sub c
    cp $8a
    db $fc
    ld b, l
    rst $38
    ld d, e
    db $fc
    nop
    nop
    nop
    db $fc
    rst $00
    nop

Jump_001_47fd:
    inc d
    db $fc
    add a
    ld bc, $fc4e
    jr c, jr_001_4807

    xor l
    db $fc

Jump_001_4807:
jr_001_4807:
    call nc, $2c02
    db $fd
    ld d, e
    inc bc
    ret z

    db $fd
    or d
    inc bc
    ld a, c
    cp $ec
    inc bc
    add hl, sp
    rst $38
    nop
    inc b
    nop
    nop
    db $ec
    inc bc
    rst $00
    nop
    or d
    inc bc
    add a
    ld bc, $0353
    jr c, @+$04

    call nc, $d402
    ld [bc], a
    jr c, jr_001_482f

    ld d, e
    inc bc

jr_001_482f:
    add a
    ld bc, $03b2
    rst $00
    nop
    db $ec
    inc bc
    nop
    nop
    nop
    inc b
    add hl, sp
    rst $38
    db $ec
    inc bc
    ld a, c
    cp $b2
    inc bc
    ret z

    db $fd
    ld d, e
    inc bc
    inc l
    db $fd
    call nc, $ad02
    db $fc
    jr c, jr_001_4851

    ld c, [hl]
    db $fc

jr_001_4851:
    add a
    ld bc, $fc14
    rst $00
    nop
    nop
    db $fc
    nop
    nop
    inc d
    db $fc
    add hl, sp
    rst $38
    ld c, [hl]
    db $fc
    ld a, c
    cp $ad
    db $fc
    ret z

    db $fd
    inc l
    db $fd
    inc l
    db $fd
    ret z

    db $fd
    xor l
    db $fc
    ld a, c
    cp $4e
    db $fc
    add hl, sp
    rst $38
    inc d
    db $fc
    nop
    nop
    ret nz

    ei
    call nc, $d500
    ei
    and b
    ld bc, $fc13
    ld e, h
    ld [bc], a
    ld a, b
    db $fc
    ld bc, $ff03
    db $fc
    adc b
    inc bc
    and h
    db $fd
    db $ed
    inc bc
    ld h, b
    cp $2b
    inc b
    inc l
    rst $38
    ld b, b
    inc b
    nop
    nop
    dec hl
    inc b
    call nc, $ed00
    inc bc
    and b
    ld bc, $0388
    ld e, h
    ld [bc], a
    ld bc, $0103
    inc bc
    ld e, h
    ld [bc], a
    adc b
    inc bc
    and b
    ld bc, $03ed
    call nc, Call_000_2b00
    inc b
    nop
    nop
    ld b, b
    inc b
    inc l
    rst $38
    dec hl
    inc b
    ld h, b
    cp $ed
    inc bc
    and h
    db $fd
    adc b
    inc bc
    rst $38
    db $fc
    ld bc, $7803
    db $fc
    ld e, h
    ld [bc], a
    inc de
    db $fc
    and b
    ld bc, $fbd5
    call nc, $c000
    ei
    nop
    nop
    push de
    ei
    inc l
    rst $38
    inc de
    db $fc
    ld h, b
    cp $78
    db $fc
    and h
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    and h
    db $fd
    ld a, b
    db $fc
    ld h, b
    cp $13
    db $fc
    inc l
    rst $38
    push de
    ei
    nop
    nop
    add b
    ei
    ldh [rP1], a
    sub a
    ei
    cp b
    ld bc, $fbd8
    add b
    ld [bc], a
    ld b, e
    db $fc
    ld l, $03
    jp nc, $bdfc

    inc bc
    add b
    db $fd
    jr z, jr_001_4915

    ld c, b
    cp $69
    inc b

jr_001_4915:
    jr nz, @+$01

    add b
    inc b
    nop
    nop
    ld l, c
    inc b
    ldh [rP1], a
    jr z, jr_001_4925

    cp b
    ld bc, $03bd

jr_001_4925:
    add b
    ld [bc], a
    ld l, $03
    ld l, $03
    add b
    ld [bc], a
    cp l
    inc bc
    cp b
    ld bc, $0428
    ldh [rP1], a
    ld l, c
    inc b
    nop
    nop
    add b
    inc b
    jr nz, @+$01

    ld l, c
    inc b
    ld c, b
    cp $28
    inc b
    add b
    db $fd
    cp l
    inc bc
    jp nc, $2efc

    inc bc
    ld b, e
    db $fc
    add b
    ld [bc], a
    ret c

    ei
    cp b
    ld bc, $fb97
    ldh [rP1], a
    add b
    ei
    nop
    nop
    sub a
    ei
    jr nz, @+$01

    ret c

    ei
    ld c, b
    cp $43
    db $fc
    add b
    db $fd
    jp nc, $d2fc

    db $fc
    add b
    db $fd
    ld b, e
    db $fc
    ld c, b
    cp $d8
    ei
    jr nz, @+$01

    sub a
    ei
    nop
    nop
    ld b, b
    ei
    db $ed
    nop
    ld e, b
    ei
    pop de
    ld bc, $fb9d
    and e
    ld [bc], a
    dec c
    db $fc
    ld e, e
    inc bc
    and l
    db $fc
    di
    inc bc
    ld e, l
    db $fd
    ld h, e
    inc b
    cpl
    cp $a8
    inc b
    inc de
    rst $38
    ret nz

    inc b
    nop
    nop
    xor b
    inc b
    db $ed
    nop
    ld h, e
    inc b
    pop de
    ld bc, $03f3
    and e
    ld [bc], a
    ld e, e
    inc bc
    ld e, e
    inc bc
    and e
    ld [bc], a
    di
    inc bc
    pop de
    ld bc, $0463
    db $ed
    nop
    xor b
    inc b
    nop
    nop
    ret nz

    inc b
    inc de
    rst $38
    xor b
    inc b
    cpl
    cp $63
    inc b
    ld e, l
    db $fd
    di
    inc bc
    and l
    db $fc
    ld e, e
    inc bc
    dec c
    db $fc
    and e
    ld [bc], a
    sbc l
    ei
    pop de
    ld bc, $fb58
    db $ed
    nop
    ld b, b
    ei
    nop
    nop
    ld e, b
    ei
    inc de
    rst $38
    sbc l
    ei
    cpl
    cp $0d
    db $fc
    ld e, l
    db $fd
    and l
    db $fc
    and l
    db $fc
    ld e, l
    db $fd
    dec c
    db $fc
    cpl
    cp $9d
    ei
    inc de
    rst $38
    ld e, b
    ei
    nop
    nop
    nop
    ei
    ld sp, hl
    nop
    add hl, de
    ei
    jp hl


    ld bc, $fb62
    rst $00
    ld [bc], a
    ret c

    ei
    adc c
    inc bc
    ld [hl], a
    db $fc
    jr z, jr_001_4a11

    add hl, sp
    db $fd
    sbc [hl]
    inc b

jr_001_4a11:
    rla
    cp $e7
    inc b
    rlca
    rst $38
    nop
    dec b
    nop
    nop
    rst $20
    inc b
    ld sp, hl
    nop
    sbc [hl]
    inc b
    jp hl


    ld bc, $0428
    rst $00
    ld [bc], a
    adc c
    inc bc
    adc c
    inc bc
    rst $00
    ld [bc], a
    jr z, jr_001_4a33

    jp hl


    ld bc, $049e

jr_001_4a33:
    ld sp, hl
    nop
    rst $20
    inc b
    nop
    nop
    nop
    dec b
    rlca
    rst $38
    rst $20
    inc b
    rla
    cp $9e
    inc b
    add hl, sp
    db $fd
    jr z, jr_001_4a4b

    ld [hl], a
    db $fc
    adc c
    inc bc

jr_001_4a4b:
    ret c

    ei
    rst $00
    ld [bc], a
    ld h, d
    ei
    jp hl


    ld bc, $fb19
    ld sp, hl
    nop
    nop
    ei
    nop
    nop
    add hl, de
    ei
    rlca
    rst $38
    ld h, d
    ei
    rla
    cp $d8
    ei
    add hl, sp
    db $fd
    ld [hl], a
    db $fc
    ld [hl], a
    db $fc
    add hl, sp
    db $fd
    ret c

    ei
    rla
    cp $62
    ei
    rlca
    rst $38
    add hl, de
    ei
    nop
    nop
    ret nz

    ld a, [$0106]
    jp c, $02fa

    ld [bc], a
    daa
    ei
    ld [$a302], a
    ei
    or [hl]
    inc bc
    ld c, d
    db $fc
    ld e, l
    inc b
    ld d, $fd
    reti


    inc b
    cp $fd
    ld h, $05
    ld a, [$40fe]
    dec b
    nop
    nop
    ld h, $05
    ld b, $01
    reti


    inc b
    ld [bc], a
    ld [bc], a
    ld e, l
    inc b
    ld [$b602], a
    inc bc
    or [hl]
    inc bc
    ld [$5d02], a
    inc b
    ld [bc], a
    ld [bc], a
    reti


    inc b
    ld b, $01
    ld h, $05
    nop
    nop
    ld b, b
    dec b
    ld a, [$26fe]
    dec b
    cp $fd
    reti


    inc b
    ld d, $fd
    ld e, l
    inc b
    ld c, d
    db $fc
    or [hl]
    inc bc
    and e
    ei
    ld [$2702], a
    ei
    ld [bc], a
    ld [bc], a
    jp c, $06fa

    ld bc, $fac0
    nop
    nop
    jp c, $fafa

    cp $27
    ei
    cp $fd
    and e
    ei
    ld d, $fd
    ld c, d
    db $fc
    ld c, d
    db $fc
    ld d, $fd
    and e
    ei
    cp $fd
    daa
    ei
    ld a, [$dafe]
    ld a, [$0000]
    add b
    ld a, [$0112]
    sbc h
    ld a, [$021a]
    db $ec
    ld a, [$030e]
    ld l, [hl]
    ei
    db $e3
    inc bc
    dec e
    db $fc
    sub d
    inc b
    ld a, [c]
    db $fc
    inc d
    dec b
    and $fd
    ld h, h
    dec b
    xor $fe
    add b
    dec b
    nop
    nop
    ld h, h
    dec b
    ld [de], a
    ld bc, $0514
    ld a, [de]
    ld [bc], a
    sub d
    inc b
    ld c, $03
    db $e3
    inc bc
    db $e3
    inc bc
    ld c, $03
    sub d
    inc b
    ld a, [de]
    ld [bc], a
    inc d
    dec b
    ld [de], a
    ld bc, $0564
    nop
    nop
    add b
    dec b
    xor $fe
    ld h, h
    dec b
    and $fd
    inc d
    dec b
    ld a, [c]
    db $fc
    sub d
    inc b
    dec e
    db $fc
    db $e3
    inc bc
    ld l, [hl]
    ei
    ld c, $03
    db $ec
    ld a, [$021a]
    sbc h
    ld a, [$0112]
    add b
    ld a, [$0000]
    sbc h
    ld a, [$feee]
    db $ec
    ld a, [$fde6]
    ld l, [hl]
    ei
    ld a, [c]
    db $fc
    dec e
    db $fc
    dec e
    db $fc
    ld a, [c]
    db $fc
    ld l, [hl]
    ei
    and $fd
    db $ec
    ld a, [$feee]
    sbc h
    ld a, [$0000]
    ld b, b
    ld a, [$011f]
    ld e, l
    ld a, [$0233]
    or c
    ld a, [$0331]
    add hl, sp
    ei
    db $10
    inc b
    ldh a, [$fb]
    rst $00
    inc b
    rst $08
    db $fc
    ld c, a
    dec b
    call $a3fd
    dec b
    pop hl
    cp $c0
    dec b
    nop
    nop
    and e
    dec b
    rra
    ld bc, $054f
    inc sp
    ld [bc], a
    rst $00
    inc b
    ld sp, $1003
    inc b
    db $10
    inc b
    ld sp, $c703
    inc b
    inc sp
    ld [bc], a
    ld c, a
    dec b
    rra
    ld bc, $05a3
    nop
    nop
    ret nz

    dec b
    pop hl
    cp $a3
    dec b
    call $4ffd
    dec b
    rst $08
    db $fc
    rst $00
    inc b
    ldh a, [$fb]
    db $10
    inc b
    add hl, sp
    ei
    ld sp, $b103
    ld a, [$0233]
    ld e, l
    ld a, [$011f]
    ld b, b
    ld a, [$0000]
    ld e, l
    ld a, [$fee1]
    or c
    ld a, [$fdcd]
    add hl, sp
    ei
    rst $08
    db $fc
    ldh a, [$fb]
    ldh a, [$fb]
    rst $08
    db $fc
    add hl, sp
    ei
    call $b1fd
    ld a, [$fee1]
    ld e, l
    ld a, [$0000]
    nop
    ld a, [$012b]
    ld e, $fa
    ld c, e
    ld [bc], a
    ld [hl], l
    ld a, [$0355]
    inc bc
    ei
    ld a, $04
    jp nz, $fdfb

    inc b
    xor e
    db $fc
    adc e
    dec b
    or l
    db $fd
    ld [c], a
    dec b
    push de
    cp $00
    ld b, $00
    nop
    ld [c], a
    dec b
    dec hl
    ld bc, $058b
    ld c, e
    ld [bc], a
    db $fd
    inc b
    ld d, l
    inc bc
    ld a, $04
    ld a, $04
    ld d, l
    inc bc
    db $fd
    inc b
    ld c, e
    ld [bc], a
    adc e
    dec b
    dec hl
    ld bc, $05e2
    nop
    nop
    nop
    ld b, $d5
    cp $e2
    dec b
    or l
    db $fd
    adc e
    dec b
    xor e
    db $fc
    db $fd
    inc b
    jp nz, Jump_000_3efb

    inc b
    inc bc
    ei
    ld d, l
    inc bc
    ld [hl], l
    ld a, [$024b]
    ld e, $fa
    dec hl
    ld bc, $fa00
    nop
    nop
    ld e, $fa
    push de
    cp $75
    ld a, [$fdb5]
    inc bc
    ei
    xor e
    db $fc
    jp nz, $c2fb

    ei
    xor e
    db $fc
    inc bc
    ei
    or l
    db $fd
    ld [hl], l
    ld a, [$fed5]
    ld e, $fa
    nop
    nop
    ret nz

    ld sp, hl
    jr c, jr_001_4c7e

    rst $18

jr_001_4c7e:
    ld sp, hl
    ld h, h
    ld [bc], a
    ld a, [hl-]
    ld a, [$0378]
    adc $fa
    ld l, e
    inc b
    sub l
    ei
    ld [hl-], a
    dec b
    adc b
    db $fc
    add $05
    sbc h
    db $fd
    ld hl, $c806
    cp $40
    ld b, $00
    nop
    ld hl, $3806
    ld bc, $05c6
    ld h, h
    ld [bc], a
    ld [hl-], a
    dec b
    ld a, b
    inc bc
    ld l, e
    inc b
    ld l, e
    inc b
    ld a, b
    inc bc
    ld [hl-], a
    dec b
    ld h, h
    ld [bc], a
    add $05
    jr c, @+$03

    ld hl, $0006
    nop
    ld b, b
    ld b, $c8
    cp $21
    ld b, $9c
    db $fd
    add $05
    adc b
    db $fc
    ld [hl-], a
    dec b
    sub l
    ei
    ld l, e
    inc b
    adc $fa
    ld a, b
    inc bc
    ld a, [hl-]
    ld a, [$0264]
    rst $18
    ld sp, hl
    jr c, jr_001_4cd8

    ret nz

jr_001_4cd8:
    ld sp, hl
    nop
    nop
    rst $18
    ld sp, hl
    ret z

    cp $3a
    ld a, [$fd9c]
    adc $fa
    adc b
    db $fc
    sub l
    ei
    sub l
    ei
    adc b
    db $fc
    adc $fa
    sbc h
    db $fd
    ld a, [hl-]
    ld a, [$fec8]
    rst $18
    ld sp, hl
    nop
    nop
    add b
    ld sp, hl
    ld b, h
    ld bc, $f9a0
    ld a, h
    ld [bc], a
    rst $38
    ld sp, hl
    sbc h
    inc bc
    sbc c
    ld a, [$0498]
    ld l, b
    ei
    ld h, a
    dec b
    ld h, h
    db $fc
    ld bc, $8406
    db $fd
    ld h, b
    ld b, $bc
    cp $80
    ld b, $00
    nop
    ld h, b
    ld b, $44
    ld bc, $0601
    ld a, h
    ld [bc], a
    ld h, a
    dec b
    sbc h
    inc bc
    sbc b
    inc b
    sbc b
    inc b
    sbc h
    inc bc
    ld h, a
    dec b
    ld a, h
    ld [bc], a
    ld bc, $4406
    ld bc, $0660
    nop
    nop
    add b
    ld b, $bc
    cp $60
    ld b, $84
    db $fd
    ld bc, $6406
    db $fc
    ld h, a
    dec b
    ld l, b
    ei
    sbc b
    inc b
    sbc c
    ld a, [$039c]
    rst $38
    ld sp, hl
    ld a, h
    ld [bc], a
    and b
    ld sp, hl
    ld b, h
    ld bc, $f980
    nop
    nop
    and b
    ld sp, hl
    cp h
    cp $ff
    ld sp, hl
    add h
    db $fd
    sbc c
    ld a, [$fc64]
    ld l, b
    ei
    ld l, b
    ei
    ld h, h
    db $fc
    sbc c
    ld a, [$fd84]
    rst $38
    ld sp, hl
    cp h
    cp $a0
    ld sp, hl
    nop
    nop
    ld b, b
    ld sp, hl
    ld d, c
    ld bc, $f962
    sub l
    ld [bc], a
    call nz, $c0f9
    inc bc
    ld h, h
    ld a, [$04c5]
    dec sp
    ei
    sbc h
    dec b
    ld b, b
    db $fc
    inc a
    ld b, $6b
    db $fd
    sbc [hl]
    ld b, $af
    cp $c0
    ld b, $00
    nop
    sbc [hl]
    ld b, $51
    ld bc, $063c
    sub l
    ld [bc], a
    sbc h
    dec b
    ret nz

    inc bc
    push bc
    inc b
    push bc
    inc b
    ret nz

    inc bc
    sbc h
    dec b
    sub l
    ld [bc], a
    inc a
    ld b, $51
    ld bc, $069e
    nop
    nop
    ret nz

    ld b, $af
    cp $9e
    ld b, $6b
    db $fd
    inc a
    ld b, $40
    db $fc
    sbc h
    dec b
    dec sp
    ei
    push bc
    inc b
    ld h, h
    ld a, [$03c0]
    call nz, $95f9
    ld [bc], a
    ld h, d
    ld sp, hl
    ld d, c
    ld bc, $f940
    nop
    nop
    ld h, d
    ld sp, hl
    xor a
    cp $c4
    ld sp, hl
    ld l, e
    db $fd
    ld h, h
    ld a, [$fc40]
    dec sp
    ei
    dec sp
    ei
    ld b, b
    db $fc
    ld h, h
    ld a, [$fd6b]
    call nz, $aff9
    cp $62
    ld sp, hl
    nop
    nop

Call_001_4df9:
    nop
    ld sp, hl
    ld e, l
    ld bc, $f923
    xor l
    ld [bc], a
    adc c
    ld sp, hl
    db $e3
    inc bc
    cpl
    ld a, [$04f3]
    dec c
    ei
    pop de
    dec b
    dec e
    db $fc
    ld [hl], a
    ld b, $53
    db $fd
    db $dd
    ld b, $a3
    cp $00
    rlca
    nop
    nop
    db $dd
    ld b, $5d
    ld bc, $0677
    xor l
    ld [bc], a
    pop de
    dec b
    db $e3
    inc bc
    di
    inc b
    di
    inc b
    db $e3
    inc bc
    pop de
    dec b
    xor l
    ld [bc], a
    ld [hl], a
    ld b, $5d
    ld bc, $06dd
    nop
    nop
    nop
    rlca
    and e
    cp $dd
    ld b, $53
    db $fd
    ld [hl], a
    ld b, $1d
    db $fc
    pop de
    dec b
    dec c
    ei
    di
    inc b
    cpl
    ld a, [$03e3]
    adc c
    ld sp, hl
    xor l
    ld [bc], a
    inc hl
    ld sp, hl
    ld e, l
    ld bc, $f900
    nop
    nop
    inc hl
    ld sp, hl
    and e
    cp $89
    ld sp, hl
    ld d, e
    db $fd
    cpl
    ld a, [$fc1d]
    dec c
    ei
    dec c
    ei
    dec e
    db $fc
    cpl
    ld a, [$fd53]
    adc c
    ld sp, hl
    and e
    cp $23
    ld sp, hl
    nop
    nop
    ret nz

    ld hl, sp+$6a
    ld bc, $f8e4
    add $02
    ld c, [hl]
    ld sp, hl
    rlca
    inc b
    ld sp, hl
    ld sp, hl
    jr nz, jr_001_4e8e

    ldh [$fa], a
    rlca
    ld b, $f9

jr_001_4e8e:
    ei
    or d
    ld b, $3a
    db $fd
    inc e
    rlca
    sub [hl]
    cp $40
    rlca
    nop
    nop
    inc e
    rlca
    ld l, d
    ld bc, $06b2
    add $02
    rlca
    ld b, $07
    inc b
    jr nz, jr_001_4eae

    jr nz, jr_001_4eb0

    rlca
    inc b
    rlca

jr_001_4eae:
    ld b, $c6

jr_001_4eb0:
    ld [bc], a
    or d
    ld b, $6a
    ld bc, $071c
    nop
    nop
    ld b, b
    rlca
    sub [hl]
    cp $1c
    rlca
    ld a, [hl-]
    db $fd
    or d
    ld b, $f9
    ei
    rlca
    ld b, $e0
    ld a, [$0520]
    ld sp, hl
    ld sp, hl
    rlca
    inc b
    ld c, [hl]
    ld sp, hl
    add $02
    db $e4
    ld hl, sp+$6a
    ld bc, $f8c0
    nop
    nop
    db $e4
    ld hl, sp-$6a
    cp $4e
    ld sp, hl
    ld a, [hl-]
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ei
    ldh [$fa], a
    ldh [$fa], a
    ld sp, hl
    ei
    ld sp, hl
    ld sp, hl
    ld a, [hl-]
    db $fd
    ld c, [hl]
    ld sp, hl
    sub [hl]
    cp $e4
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$76
    ld bc, $f8a5
    sbc $02
    inc de
    ld sp, hl
    ld a, [hl+]
    inc b
    call nz, Call_001_4df9
    dec b
    or e
    ld a, [$063c]
    sub $fb
    db $ed
    ld b, $22
    db $fd
    ld e, e
    rlca
    adc d
    cp $80
    rlca
    nop
    nop
    ld e, e
    rlca
    db $76
    ld bc, $06ed
    sbc $02
    inc a
    ld b, $2a
    inc b
    ld c, l
    dec b
    ld c, l
    dec b
    ld a, [hl+]
    inc b
    inc a
    ld b, $de
    ld [bc], a
    db $ed
    ld b, $76
    ld bc, $075b
    nop
    nop
    add b
    rlca
    adc d
    cp $5b
    rlca
    ld [hl+], a
    db $fd
    db $ed
    ld b, $d6
    ei
    inc a
    ld b, $b3
    ld a, [$054d]
    call nz, Call_000_2af9
    inc b
    inc de
    ld sp, hl
    sbc $02
    and l
    ld hl, sp+$76
    ld bc, $f880
    nop
    nop
    and l
    ld hl, sp-$76
    cp $13
    ld sp, hl
    ld [hl+], a
    db $fd
    call nz, $d6f9
    ei
    or e
    ld a, [$fab3]
    sub $fb
    call nz, $22f9
    db $fd
    inc de
    ld sp, hl
    adc d
    cp $a5
    ld hl, sp+$00
    nop
    ld b, b
    ld hl, sp-$7d
    ld bc, $f867
    rst $30
    ld [bc], a
    ret c

    ld hl, sp+$4e
    inc b
    adc a
    ld sp, hl
    ld a, d
    dec b
    add [hl]
    ld a, [$0671]
    or d
    ei
    jr z, jr_001_4f98

    add hl, bc
    db $fd
    sbc c
    rlca
    ld a, l
    cp $c0

jr_001_4f98:
    rlca
    nop
    nop
    sbc c
    rlca
    add e
    ld bc, $0728
    rst $30
    ld [bc], a
    ld [hl], c
    ld b, $4e
    inc b
    ld a, d
    dec b
    ld a, d
    dec b
    ld c, [hl]
    inc b
    ld [hl], c
    ld b, $f7
    ld [bc], a
    jr z, jr_001_4fba

    add e
    ld bc, $0799
    nop
    nop
    ret nz

jr_001_4fba:
    rlca
    ld a, l
    cp $99
    rlca
    add hl, bc
    db $fd
    jr z, @+$09

    or d
    ei
    ld [hl], c
    ld b, $86
    ld a, [$057a]
    adc a
    ld sp, hl
    ld c, [hl]
    inc b
    ret c

    ld hl, sp-$09
    ld [bc], a
    ld h, a
    ld hl, sp-$7d
    ld bc, $f840
    nop
    nop
    ld h, a
    ld hl, sp+$7d
    cp $d8
    ld hl, sp+$09
    db $fd
    adc a
    ld sp, hl
    or d
    ei
    add [hl]
    ld a, [$fa86]
    or d
    ei
    adc a
    ld sp, hl
    add hl, bc
    db $fd
    ret c

    ld hl, sp+$7d
    cp $67
    ld hl, sp+$00
    nop
    nop
    ld hl, sp-$71
    ld bc, $f828
    rrca
    inc bc
    sbc h
    ld hl, sp+$71
    inc b
    ld e, d
    ld sp, hl
    xor b
    dec b
    ld e, b
    ld a, [$06a6]
    adc a
    ei
    ld h, h
    rlca
    pop af
    db $fc
    ret c

    rlca
    ld [hl], c
    cp $00
    ld [$0000], sp
    ret c

    rlca
    adc a
    ld bc, $0764
    rrca
    inc bc
    and [hl]
    ld b, $71
    inc b
    xor b
    dec b
    xor b
    dec b
    ld [hl], c
    inc b
    and [hl]
    ld b, $0f
    inc bc
    ld h, h
    rlca
    adc a
    ld bc, $07d8
    nop
    nop
    nop
    ld [$fe71], sp
    ret c

    rlca
    pop af
    db $fc
    ld h, h
    rlca
    adc a
    ei
    and [hl]
    ld b, $58
    ld a, [$05a8]
    ld e, d
    ld sp, hl

jr_001_504d:
    ld [hl], c
    inc b
    sbc h
    ld hl, sp+$0f
    inc bc
    jr z, jr_001_504d

jr_001_5055:
    adc a
    ld bc, $f800
    nop
    nop
    jr z, jr_001_5055

    ld [hl], c
    cp $9c
    ld hl, sp-$0f
    db $fc
    ld e, d
    ld sp, hl
    adc a
    ei
    ld e, b
    ld a, [$fa58]
    adc a
    ei
    ld e, d
    ld sp, hl
    pop af
    db $fc
    sbc h
    ld hl, sp+$71
    cp $28
    ld hl, sp+$00
    nop
    ret nz

    rst $30
    sbc h
    ld bc, $f7e9
    jr z, jr_001_5084

    ld h, c
    ld hl, sp-$6b

jr_001_5084:
    inc b
    inc h
    ld sp, hl
    push de
    dec b
    dec hl
    ld a, [$06dc]
    ld l, e
    ei
    sbc a
    rlca
    ret c

    db $fc
    rla
    ld [$fe64], sp
    ld b, b
    ld [$0000], sp
    rla
    ld [$019c], sp
    sbc a
    rlca
    jr z, jr_001_50a6

    call c, $9506

jr_001_50a6:
    inc b
    push de
    dec b
    push de
    dec b
    sub l
    inc b
    call c, $2806
    inc bc
    sbc a
    rlca
    sbc h
    ld bc, $0817
    nop
    nop
    ld b, b
    ld [$fe64], sp
    rla
    ld [$fcd8], sp
    sbc a
    rlca
    ld l, e
    ei
    call c, $2b06
    ld a, [$05d5]
    inc h
    ld sp, hl
    sub l
    inc b
    ld h, c
    ld hl, sp+$28
    inc bc
    jp hl


    rst $30
    sbc h
    ld bc, $f7c0
    nop
    nop
    jp hl


    rst $30
    ld h, h
    cp $61
    ld hl, sp-$28
    db $fc
    inc h
    ld sp, hl
    ld l, e
    ei
    dec hl
    ld a, [$fa2b]
    ld l, e
    ei
    inc h
    ld sp, hl
    ret c

    db $fc
    ld h, c
    ld hl, sp+$64
    cp $e9
    rst $30
    nop
    nop
    add b
    rst $30
    xor b
    ld bc, $f7aa
    ld b, b
    inc bc

Jump_001_5101:
    ld h, $f8
    cp b
    inc b
    rst $28
    ld hl, sp+$02
    ld b, $fe
    ld sp, hl
    ld de, $4807
    ei
    jp c, $c007

    db $fc
    ld d, [hl]
    ld [$fe58], sp
    add b
    ld [$0000], sp
    ld d, [hl]
    ld [$01a8], sp
    jp c, $4007

    inc bc
    ld de, $b807
    inc b
    ld [bc], a
    ld b, $02
    ld b, $b8
    inc b
    ld de, $4007
    inc bc
    jp c, $a807

    ld bc, $0856
    nop
    nop
    add b
    ld [$fe58], sp
    ld d, [hl]
    ld [$fcc0], sp
    jp c, Jump_001_4807

    ei
    ld de, $fe07
    ld sp, hl
    ld [bc], a
    ld b, $ef
    ld hl, sp-$48
    inc b
    ld h, $f8
    ld b, b
    inc bc
    xor d
    rst $30
    xor b
    ld bc, $f780
    nop
    nop
    xor d
    rst $30
    ld e, b
    cp $26
    ld hl, sp-$40
    db $fc
    rst $28
    ld hl, sp+$48
    ei
    cp $f9
    cp $f9
    ld c, b
    ei
    rst $28
    ld hl, sp-$40
    db $fc
    ld h, $f8
    ld e, b
    cp $aa
    rst $30
    nop
    nop
    ld b, b
    rst $30
    or l
    ld bc, $f76c
    ld e, c
    inc bc
    db $eb
    rst $30
    call c, $ba04
    ld hl, sp+$2f
    ld b, $d1
    ld sp, hl
    ld b, [hl]
    rlca
    inc h
    ei
    dec d
    ld [$fca7], sp
    sub h
    ld [$fe4b], sp
    ret nz

    ld [$0000], sp
    sub h
    ld [$01b5], sp
    dec d
    ld [$0359], sp
    ld b, [hl]
    rlca
    call c, Call_000_2f04
    ld b, $2f
    ld b, $dc
    inc b
    ld b, [hl]
    rlca
    ld e, c
    inc bc
    dec d
    ld [$01b5], sp
    sub h
    ld [$0000], sp
    ret nz

    ld [$fe4b], sp
    sub h
    ld [$fca7], sp
    dec d
    ld [$fb24], sp
    ld b, [hl]
    rlca
    pop de
    ld sp, hl
    cpl
    ld b, $ba
    ld hl, sp-$24
    inc b
    db $eb
    rst $30
    ld e, c
    inc bc
    ld l, h
    rst $30
    or l
    ld bc, $f740
    nop
    nop
    ld l, h
    rst $30
    ld c, e
    cp $eb
    rst $30
    and a
    db $fc
    cp d
    ld hl, sp+$24
    ei
    pop de
    ld sp, hl
    pop de
    ld sp, hl
    inc h
    ei
    cp d
    ld hl, sp-$59
    db $fc
    db $eb
    rst $30
    ld c, e
    cp $6c
    rst $30
    nop
    nop
    nop
    rst $30
    pop bc
    ld bc, $f72d
    ld [hl], c
    inc bc
    or b
    rst $30
    nop
    dec b
    add l
    ld hl, sp+$5d
    ld b, $a3
    ld sp, hl
    ld a, e
    rlca
    nop
    ei
    ld d, b
    ld [$fc8f], sp
    db $d3
    ld [$fe3f], sp
    nop
    add hl, bc
    nop
    nop
    db $d3
    ld [$01c1], sp
    ld d, b
    ld [$0371], sp
    ld a, e
    rlca
    nop
    dec b
    ld e, l
    ld b, $5d
    ld b, $00
    dec b
    ld a, e
    rlca
    ld [hl], c
    inc bc
    ld d, b
    ld [$01c1], sp
    db $d3
    ld [$0000], sp
    nop
    add hl, bc
    ccf
    cp $d3
    ld [$fc8f], sp
    ld d, b
    ld [$fb00], sp
    ld a, e
    rlca
    and e
    ld sp, hl
    ld e, l
    ld b, $85
    ld hl, sp+$00
    dec b
    or b
    rst $30
    ld [hl], c
    inc bc
    dec l
    rst $30
    pop bc
    ld bc, $f700
    nop
    nop
    dec l
    rst $30
    ccf
    cp $b0
    rst $30
    adc a
    db $fc
    add l
    ld hl, sp+$00
    ei
    and e
    ld sp, hl
    and e
    ld sp, hl
    nop
    ei
    add l
    ld hl, sp-$71
    db $fc
    or b
    rst $30
    ccf
    cp $2d
    rst $30
    nop
    nop
    ret nz

    or $cd
    ld bc, $f6ee
    adc d
    inc bc
    ld [hl], l
    rst $30
    inc hl
    dec b
    ld d, b
    ld hl, sp-$76
    ld b, $76
    ld sp, hl
    or b
    rlca
    db $dd
    ld a, [$088b]
    db $76
    db $fc
    ld [de], a
    add hl, bc
    inc sp
    cp $40
    add hl, bc
    nop
    nop
    ld [de], a
    add hl, bc
    call $8b01
    ld [$038a], sp
    or b
    rlca
    inc hl
    dec b
    adc d
    ld b, $8a
    ld b, $23
    dec b
    or b
    rlca
    adc d
    inc bc
    adc e
    ld [$01cd], sp
    ld [de], a
    add hl, bc
    nop
    nop
    ld b, b
    add hl, bc
    inc sp
    cp $12
    add hl, bc
    db $76
    db $fc
    adc e
    ld [$fadd], sp
    or b
    rlca
    db $76
    ld sp, hl
    adc d
    ld b, $50
    ld hl, sp+$23
    dec b
    ld [hl], l
    rst $30
    adc d
    inc bc
    xor $f6
    call $c001
    or $00
    nop
    xor $f6
    inc sp
    cp $75
    rst $30
    db $76
    db $fc
    ld d, b
    ld hl, sp-$23
    ld a, [$f976]
    db $76
    ld sp, hl
    db $dd
    ld a, [$f850]
    db $76
    db $fc
    ld [hl], l
    rst $30
    inc sp
    cp $ee
    or $00
    nop
    add b
    or $da
    ld bc, $f6af
    and d
    inc bc
    ld a, [hl-]
    rst $30
    ld b, a
    dec b
    ld a, [de]
    ld hl, sp-$49
    ld b, $49
    ld sp, hl
    and $07
    cp c
    ld a, [$08c6]
    ld e, [hl]
    db $fc
    ld d, c
    add hl, bc
    ld h, $fe
    add b
    add hl, bc
    nop
    nop
    ld d, c
    add hl, bc
    jp c, $c601

    ld [$03a2], sp
    and $07
    ld b, a
    dec b
    or a
    ld b, $b7
    ld b, $47
    dec b
    and $07
    and d
    inc bc
    add $08
    jp c, Jump_001_5101

    add hl, bc
    nop
    nop
    add b
    add hl, bc
    ld h, $fe
    ld d, c
    add hl, bc
    ld e, [hl]
    db $fc
    add $08
    cp c
    ld a, [$07e6]
    ld c, c
    ld sp, hl
    or a
    ld b, $1a
    ld hl, sp+$47
    dec b
    ld a, [hl-]
    rst $30
    and d
    inc bc
    xor a
    or $da
    ld bc, $f680
    nop
    nop
    xor a
    or $26
    cp $3a
    rst $30
    ld e, [hl]
    db $fc
    ld a, [de]
    ld hl, sp-$47
    ld a, [$f949]
    ld c, c
    ld sp, hl
    cp c
    ld a, [$f81a]
    ld e, [hl]
    db $fc
    ld a, [hl-]
    rst $30
    ld h, $fe
    xor a
    or $00
    nop
    ld b, b
    or $e6
    ld bc, $f670
    cp e
    inc bc
    cp $f6
    ld l, d
    dec b
    push hl
    rst $30
    db $e4
    ld b, $1c
    ld sp, hl
    dec de
    ld [$fa96], sp
    ld [bc], a
    add hl, bc
    ld b, l
    db $fc
    sub b
    add hl, bc
    ld a, [de]
    cp $c0
    add hl, bc
    nop
    nop
    sub b
    add hl, bc
    and $01
    ld [bc], a
    add hl, bc
    cp e
    inc bc
    dec de
    ld [$056a], sp
    db $e4
    ld b, $e4
    ld b, $6a
    dec b
    dec de
    ld [$03bb], sp
    ld [bc], a
    add hl, bc
    and $01
    sub b
    add hl, bc
    nop
    nop
    ret nz

    add hl, bc
    ld a, [de]
    cp $90
    add hl, bc
    ld b, l
    db $fc
    ld [bc], a
    add hl, bc
    sub [hl]
    ld a, [$081b]
    inc e
    ld sp, hl
    db $e4
    ld b, $e5
    rst $30
    ld l, d
    dec b
    cp $f6
    cp e
    inc bc
    ld [hl], b
    or $e6
    ld bc, $f640
    nop
    nop
    ld [hl], b
    or $1a
    cp $fe
    or $45
    db $fc
    push hl
    rst $30
    sub [hl]
    ld a, [$f91c]
    inc e
    ld sp, hl
    sub [hl]
    ld a, [$f7e5]
    ld b, l
    db $fc
    cp $f6
    ld a, [de]
    cp $70
    or $00
    nop
    nop
    or $f3
    ld bc, $f632
    db $d3
    inc bc
    jp $8ef6


    dec b
    or b
    rst $30
    ld [de], a
    rlca
    xor $f8
    ld d, b
    ld [$fa72], sp
    dec a
    add hl, bc
    dec l
    db $fc
    adc $09
    dec c
    cp $00
    ld a, [bc]
    nop
    nop
    adc $09
    di
    ld bc, $093d
    db $d3
    inc bc
    ld d, b
    ld [$058e], sp
    ld [de], a
    rlca
    ld [de], a
    rlca
    adc [hl]
    dec b
    ld d, b
    ld [$03d3], sp
    dec a
    add hl, bc
    di
    ld bc, $09ce
    nop
    nop
    nop
    ld a, [bc]
    dec c
    cp $ce
    add hl, bc
    dec l
    db $fc
    dec a
    add hl, bc
    ld [hl], d
    ld a, [$0850]
    xor $f8
    ld [de], a
    rlca
    or b
    rst $30
    adc [hl]
    dec b
    jp $d3f6


    inc bc
    ld [hl-], a
    or $f3
    ld bc, $f600
    nop
    nop
    ld [hl-], a
    or $0d
    cp $c3
    or $2d
    db $fc
    or b
    rst $30
    ld [hl], d
    ld a, [$f8ee]
    xor $f8
    ld [hl], d
    ld a, [$f7b0]
    dec l
    db $fc
    jp $0df6


    cp $32
    or $00
    nop
    ret nz

    push af
    rst $38
    ld bc, $f5f3
    db $ec
    inc bc
    adc b
    or $b1
    dec b
    ld a, e
    rst $30
    ccf
    rlca
    pop bc
    ld hl, sp-$7b
    ld [$fa4f], sp
    ld a, b
    add hl, bc
    inc d
    db $fc
    dec c
    ld a, [bc]
    ld bc, $40fe
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    rst $38
    ld bc, $0978
    db $ec
    inc bc
    add l
    ld [$05b1], sp
    ccf
    rlca
    ccf
    rlca
    or c
    dec b
    add l
    ld [$03ec], sp
    ld a, b
    add hl, bc
    rst $38
    ld bc, $0a0d
    nop
    nop
    ld b, b
    ld a, [bc]
    ld bc, $0dfe
    ld a, [bc]
    inc d
    db $fc
    ld a, b
    add hl, bc
    ld c, a
    ld a, [$0885]
    pop bc
    ld hl, sp+$3f
    rlca
    ld a, e
    rst $30
    or c
    dec b
    adc b
    or $ec
    inc bc
    di
    push af
    rst $38
    ld bc, $f5c0
    nop
    nop
    di
    push af
    ld bc, $88fe
    or $14
    db $fc
    ld a, e
    rst $30
    ld c, a
    ld a, [$f8c1]
    pop bc
    ld hl, sp+$4f
    ld a, [$f77b]
    inc d
    db $fc
    adc b
    or $01
    cp $f3
    push af
    nop
    nop
    add b
    push af
    inc c
    ld [bc], a
    or h
    push af
    inc b
    inc b
    ld c, l
    or $d5
    dec b
    ld b, [hl]
    rst $30
    ld l, h
    rlca
    sub h
    ld hl, sp-$46
    ld [$fa2b], sp
    or e
    add hl, bc
    db $fc
    ei
    ld c, h
    ld a, [bc]
    db $f4
    db $fd
    add b
    ld a, [bc]
    nop
    nop
    ld c, h
    ld a, [bc]
    inc c
    ld [bc], a
    or e
    add hl, bc
    inc b
    inc b
    cp d
    ld [$05d5], sp
    ld l, h
    rlca
    ld l, h
    rlca
    push de
    dec b
    cp d
    ld [$0404], sp
    or e
    add hl, bc
    inc c
    ld [bc], a
    ld c, h
    ld a, [bc]
    nop
    nop
    add b
    ld a, [bc]
    db $f4
    db $fd
    ld c, h
    ld a, [bc]
    db $fc
    ei
    or e
    add hl, bc
    dec hl
    ld a, [$08ba]
    sub h
    ld hl, sp+$6c
    rlca
    ld b, [hl]
    rst $30
    push de
    dec b
    ld c, l
    or $04
    inc b
    or h
    push af
    inc c
    ld [bc], a
    add b
    push af
    nop
    nop
    or h
    push af
    db $f4
    db $fd
    ld c, l
    or $fc
    ei
    ld b, [hl]
    rst $30
    dec hl
    ld a, [$f894]
    sub h
    ld hl, sp+$2b
    ld a, [$f746]
    db $fc
    ei
    ld c, l
    or $f4
    db $fd
    or h
    push af
    nop
    nop
    ld b, b
    push af
    jr jr_001_557f

    ld [hl], l
    push af

jr_001_557f:
    dec e
    inc b
    ld [de], a
    or $f8
    dec b
    db $10
    rst $30
    sbc c
    rlca
    ld h, a
    ld hl, sp-$10
    ld [$fa08], sp
    xor $09
    db $e3
    ei
    adc e
    ld a, [bc]
    add sp, -$03
    ret nz

    ld a, [bc]
    nop
    nop
    adc e
    ld a, [bc]
    jr jr_001_55a1

    xor $09

jr_001_55a1:
    dec e
    inc b
    ldh a, [$08]
    ld hl, sp+$05
    sbc c
    rlca
    sbc c
    rlca
    ld hl, sp+$05
    ldh a, [$08]
    dec e
    inc b
    xor $09
    jr jr_001_55b7

    adc e
    ld a, [bc]

jr_001_55b7:
    nop
    nop
    ret nz

    ld a, [bc]
    add sp, -$03
    adc e
    ld a, [bc]
    db $e3
    ei
    xor $09
    ld [$f0fa], sp
    ld [$f867], sp
    sbc c
    rlca
    db $10
    rst $30
    ld hl, sp+$05
    ld [de], a
    or $1d
    inc b
    ld [hl], l
    push af
    jr jr_001_55d9

    ld b, b
    push af

jr_001_55d9:
    nop
    nop
    ld [hl], l
    push af
    add sp, -$03
    ld [de], a
    or $e3
    ei
    db $10
    rst $30
    ld [$67fa], sp
    ld hl, sp+$67
    ld hl, sp+$08
    ld a, [$f710]
    db $e3
    ei
    ld [de], a
    or $e8
    db $fd
    ld [hl], l
    push af
    nop
    nop
    nop
    push af
    dec h
    ld [bc], a
    scf
    push af
    dec [hl]
    inc b
    rst $10
    push af
    inc e
    ld b, $db
    or $c7
    rlca
    add hl, sp
    ld hl, sp+$25
    add hl, bc
    db $e4
    ld sp, hl
    add hl, hl
    ld a, [bc]
    set 7, e
    ret


    ld a, [bc]
    db $db
    db $fd
    nop
    dec bc
    nop
    nop
    ret


    ld a, [bc]
    dec h
    ld [bc], a
    add hl, hl
    ld a, [bc]
    dec [hl]
    inc b
    dec h
    add hl, bc
    inc e
    ld b, $c7
    rlca
    rst $00
    rlca
    inc e
    ld b, $25
    add hl, bc
    dec [hl]
    inc b
    add hl, hl
    ld a, [bc]
    dec h
    ld [bc], a
    ret


    ld a, [bc]
    nop
    nop
    nop
    dec bc
    db $db
    db $fd
    ret


    ld a, [bc]
    set 7, e
    add hl, hl
    ld a, [bc]
    db $e4
    ld sp, hl
    dec h
    add hl, bc
    add hl, sp
    ld hl, sp-$39
    rlca
    db $db
    or $1c
    ld b, $d7
    push af
    dec [hl]
    inc b
    scf
    push af
    dec h
    ld [bc], a
    nop
    push af
    nop
    nop
    scf
    push af
    db $db
    db $fd
    rst $10
    push af
    set 7, e
    db $db
    or $e4
    ld sp, hl
    add hl, sp
    ld hl, sp+$39
    ld hl, sp-$1c
    ld sp, hl
    db $db
    or $cb
    ei
    rst $10
    push af
    db $db
    db $fd
    scf
    push af
    nop
    nop
    ret nz

    db $f4
    ld sp, $f802
    db $f4
    ld c, [hl]
    inc b
    sbc h
    push af
    ld b, b
    ld b, $a6
    or $f4
    rlca
    inc c
    ld hl, sp+$5a
    add hl, bc
    ret nz

    ld sp, hl
    ld h, h
    ld a, [bc]
    or d
    ei
    ld [$cf0b], sp
    db $fd
    ld b, b
    dec bc
    nop
    nop
    ld [$310b], sp
    ld [bc], a
    ld h, h
    ld a, [bc]
    ld c, [hl]
    inc b
    ld e, d
    add hl, bc
    ld b, b
    ld b, $f4
    rlca
    db $f4
    rlca
    ld b, b
    ld b, $5a
    add hl, bc
    ld c, [hl]
    inc b
    ld h, h
    ld a, [bc]
    ld sp, $0802
    dec bc
    nop
    nop
    ld b, b
    dec bc
    rst $08
    db $fd
    ld [$b20b], sp
    ei
    ld h, h
    ld a, [bc]
    ret nz

    ld sp, hl
    ld e, d
    add hl, bc
    inc c
    ld hl, sp-$0c
    rlca
    and [hl]
    or $40
    ld b, $9c
    push af
    ld c, [hl]
    inc b
    ld hl, sp-$0c
    ld sp, $c002
    db $f4
    nop
    nop
    ld hl, sp-$0c
    rst $08
    db $fd
    sbc h
    push af
    or d
    ei
    and [hl]
    or $c0
    ld sp, hl
    inc c
    ld hl, sp+$0c
    ld hl, sp-$40
    ld sp, hl
    and [hl]
    or $b2
    ei
    sbc h
    push af
    rst $08
    db $fd
    ld hl, sp-$0c
    nop
    nop
    add b
    db $f4
    ld a, $02
    cp c
    db $f4
    ld h, [hl]
    inc b
    ld h, c
    push af
    ld h, e
    ld b, $71
    or $21
    ld [$f7df], sp

Call_001_570b:
    adc a
    add hl, bc
    sbc l
    ld sp, hl
    sbc a
    ld a, [bc]
    sbc d
    ei
    ld b, a
    dec bc
    jp nz, $80fd

    dec bc
    nop
    nop
    ld b, a
    dec bc
    ld a, $02
    sbc a
    ld a, [bc]
    ld h, [hl]
    inc b
    adc a
    add hl, bc
    ld h, e
    ld b, $21
    ld [$0821], sp
    ld h, e
    ld b, $8f
    add hl, bc
    ld h, [hl]
    inc b
    sbc a
    ld a, [bc]
    ld a, $02
    ld b, a
    dec bc
    nop
    nop
    add b
    dec bc
    jp nz, Jump_001_47fd

    dec bc
    sbc d
    ei
    sbc a
    ld a, [bc]
    sbc l
    ld sp, hl
    adc a
    add hl, bc
    rst $18
    rst $30
    ld hl, $7108
    or $63
    ld b, $61
    push af
    ld h, [hl]
    inc b
    cp c
    db $f4
    ld a, $02
    add b
    db $f4
    nop
    nop
    cp c
    db $f4
    jp nz, Jump_001_61fd

    push af
    sbc d
    ei
    ld [hl], c
    or $9d
    ld sp, hl
    rst $18
    rst $30
    rst $18
    rst $30
    sbc l
    ld sp, hl
    ld [hl], c
    or $9a
    ei
    ld h, c
    push af
    jp nz, $b9fd

    db $f4
    nop
    nop
    ld b, b
    db $f4
    ld c, d
    ld [bc], a
    ld a, d
    db $f4
    ld a, a
    inc b
    dec h
    push af
    add a
    ld b, $3b
    or $4e
    ld [$f7b2], sp
    push bc
    add hl, bc
    ld a, c
    ld sp, hl
    db $db
    ld a, [bc]
    add c
    ei
    add [hl]
    dec bc
    or [hl]
    db $fd
    ret nz

    dec bc
    nop
    nop
    add [hl]
    dec bc
    ld c, d
    ld [bc], a
    db $db
    ld a, [bc]
    ld a, a
    inc b
    push bc
    add hl, bc
    add a
    ld b, $4e
    ld [$084e], sp
    add a
    ld b, $c5
    add hl, bc
    ld a, a
    inc b
    db $db
    ld a, [bc]
    ld c, d
    ld [bc], a
    add [hl]
    dec bc
    nop
    nop
    ret nz

    dec bc
    or [hl]
    db $fd
    add [hl]
    dec bc
    add c
    ei
    db $db
    ld a, [bc]
    ld a, c
    ld sp, hl
    push bc
    add hl, bc
    or d
    rst $30
    ld c, [hl]
    ld [$f63b], sp
    add a
    ld b, $25
    push af
    ld a, a
    inc b
    ld a, d
    db $f4
    ld c, d
    ld [bc], a
    ld b, b
    db $f4
    nop
    nop
    ld a, d
    db $f4
    or [hl]
    db $fd
    dec h
    push af
    add c
    ei
    dec sp
    or $79
    ld sp, hl
    or d
    rst $30
    or d
    rst $30
    ld a, c
    ld sp, hl
    dec sp
    or $81
    ei
    dec h
    push af
    or [hl]
    db $fd
    ld a, d
    db $f4
    nop
    nop
    nop
    db $f4
    ld d, a
    ld [bc], a
    inc a
    db $f4
    sub a
    inc b
    ld [$aaf4], a
    ld b, $06
    or $7c
    ld [$f784], sp
    ld a, [$5609]
    ld sp, hl
    ld d, $0b
    ld l, c
    ei
    call nz, $a90b
    db $fd
    nop
    inc c
    nop
    nop
    call nz, Call_001_570b
    ld [bc], a
    ld d, $0b
    sub a
    inc b
    ld a, [$aa09]
    ld b, $7c
    ld [$087c], sp
    xor d
    ld b, $fa
    add hl, bc
    sub a
    inc b
    ld d, $0b
    ld d, a
    ld [bc], a
    call nz, Call_000_000b
    nop
    nop
    inc c
    xor c
    db $fd
    call nz, Call_001_690b
    ei
    ld d, $0b
    ld d, [hl]
    ld sp, hl
    ld a, [$8409]
    rst $30
    ld a, h
    ld [$f606], sp
    xor d
    ld b, $ea
    db $f4
    sub a
    inc b
    inc a
    db $f4
    ld d, a
    ld [bc], a
    nop
    db $f4
    nop
    nop
    inc a
    db $f4
    xor c
    db $fd
    ld [$69f4], a
    ei
    ld b, $f6
    ld d, [hl]
    ld sp, hl
    add h
    rst $30
    add h
    rst $30
    ld d, [hl]
    ld sp, hl
    ld b, $f6
    ld l, c
    ei
    ld [$a9f4], a
    db $fd
    inc a
    db $f4
    nop
    nop
    ret nz

    di
    ld h, e
    ld [bc], a
    db $fd
    di
    or b
    inc b
    xor a
    db $f4
    adc $06
    pop de
    push af
    xor c
    ld [$f757], sp
    cpl
    ld a, [bc]
    ld [hl-], a
    ld sp, hl
    ld d, c
    dec bc
    ld d, b
    ei
    inc bc
    inc c
    sbc l
    db $fd
    ld b, b
    inc c
    nop
    nop
    inc bc
    inc c
    ld h, e
    ld [bc], a
    ld d, c
    dec bc
    or b
    inc b
    cpl
    ld a, [bc]
    adc $06
    xor c
    ld [$08a9], sp
    adc $06
    cpl
    ld a, [bc]
    or b
    inc b
    ld d, c
    dec bc
    ld h, e
    ld [bc], a
    inc bc
    inc c
    nop
    nop
    ld b, b
    inc c
    sbc l
    db $fd
    inc bc
    inc c
    ld d, b
    ei
    ld d, c
    dec bc
    ld [hl-], a
    ld sp, hl
    cpl
    ld a, [bc]
    ld d, a
    rst $30
    xor c
    ld [$f5d1], sp
    adc $06
    xor a
    db $f4
    or b
    inc b
    db $fd
    di
    ld h, e
    ld [bc], a
    ret nz

    di
    nop
    nop
    db $fd
    di
    sbc l
    db $fd
    xor a
    db $f4
    ld d, b
    ei
    pop de
    push af
    ld [hl-], a
    ld sp, hl
    ld d, a
    rst $30
    ld d, a
    rst $30
    ld [hl-], a
    ld sp, hl
    pop de
    push af
    ld d, b
    ei
    xor a
    db $f4
    sbc l
    db $fd
    db $fd
    di
    nop
    nop
    add b
    di
    ld [hl], b
    ld [bc], a
    cp [hl]
    di
    ret z

    inc b
    ld [hl], h
    db $f4
    pop af
    ld b, $9c
    push af
    sub $08
    ld a, [hl+]
    rst $30
    ld h, h
    ld a, [bc]
    rrca

jr_001_590e:
    ld sp, hl
    adc h
    dec bc
    jr c, jr_001_590e

    ld b, d
    inc c
    sub b
    db $fd
    add b
    inc c
    nop
    nop
    ld b, d
    inc c
    ld [hl], b
    ld [bc], a
    adc h
    dec bc
    ret z

    inc b
    ld h, h
    ld a, [bc]
    pop af
    ld b, $d6
    ld [$08d6], sp
    pop af
    ld b, $64
    ld a, [bc]
    ret z

    inc b
    adc h
    dec bc
    ld [hl], b
    ld [bc], a
    ld b, d
    inc c
    nop
    nop
    add b
    inc c
    sub b

jr_001_593c:
    db $fd
    ld b, d
    inc c
    jr c, jr_001_593c

    adc h
    dec bc
    rrca
    ld sp, hl
    ld h, h
    ld a, [bc]
    ld a, [hl+]
    rst $30
    sub $08
    sbc h
    push af
    pop af
    ld b, $74
    db $f4
    ret z

    inc b
    cp [hl]
    di
    ld [hl], b
    ld [bc], a
    add b
    di
    nop
    nop
    cp [hl]
    di
    sub b

jr_001_595e:
    db $fd
    ld [hl], h
    db $f4
    jr c, jr_001_595e

    sbc h
    push af
    rrca
    ld sp, hl
    ld a, [hl+]
    rst $30
    ld a, [hl+]
    rst $30
    rrca

jr_001_596c:
    ld sp, hl
    sbc h
    push af
    jr c, jr_001_596c

    ld [hl], h
    db $f4
    sub b
    db $fd
    cp [hl]
    di
    nop
    nop
    ld b, b
    di
    ld a, h
    ld [bc], a
    ld a, a
    di
    pop hl
    inc b
    add hl, sp
    db $f4
    dec d
    rlca
    ld h, a
    push af
    inc bc
    add hl, bc
    db $fd
    or $99
    ld a, [bc]
    db $eb
    ld hl, sp-$39
    dec bc
    rra
    ei
    add c
    inc c
    add h
    db $fd
    ret nz

    inc c
    nop
    nop
    add c
    inc c
    ld a, h
    ld [bc], a
    rst $00
    dec bc
    pop hl
    inc b
    sbc c
    ld a, [bc]
    dec d
    rlca
    inc bc
    add hl, bc
    inc bc
    add hl, bc
    dec d
    rlca
    sbc c
    ld a, [bc]
    pop hl
    inc b
    rst $00
    dec bc
    ld a, h
    ld [bc], a
    add c
    inc c
    nop
    nop
    ret nz

    inc c
    add h
    db $fd
    add c
    inc c
    rra
    ei
    rst $00
    dec bc
    db $eb
    ld hl, sp-$67
    ld a, [bc]
    db $fd
    or $03
    add hl, bc
    ld h, a
    push af
    dec d
    rlca
    add hl, sp
    db $f4
    pop hl
    inc b
    ld a, a
    di
    ld a, h
    ld [bc], a
    ld b, b
    di
    nop
    nop
    ld a, a
    di
    add h
    db $fd
    add hl, sp
    db $f4
    rra
    ei
    ld h, a
    push af
    db $eb
    ld hl, sp-$03
    or $fd
    or $eb
    ld hl, sp+$67
    push af
    rra
    ei
    add hl, sp
    db $f4
    add h
    db $fd
    ld a, a
    di
    nop
    nop
    nop
    di
    adc c
    ld [bc], a
    ld b, b
    di
    ld sp, hl
    inc b
    cp $f3
    jr c, jr_001_5a0c

    ld sp, $31f5
    add hl, bc
    rst $08
    or $cf

jr_001_5a0c:
    ld a, [bc]
    ret z

    ld hl, sp+$02
    inc c
    rlca
    ei
    ret nz

    inc c
    ld [hl], a
    db $fd
    nop
    dec c
    nop
    nop
    ret nz

    inc c
    adc c
    ld [bc], a
    ld [bc], a
    inc c
    ld sp, hl
    inc b
    rst $08
    ld a, [bc]
    jr c, jr_001_5a2e

    ld sp, $3109
    add hl, bc
    jr c, jr_001_5a34

    rst $08

jr_001_5a2e:
    ld a, [bc]
    ld sp, hl
    inc b
    ld [bc], a
    inc c
    adc c

jr_001_5a34:
    ld [bc], a
    ret nz

    inc c
    nop
    nop
    nop
    dec c
    ld [hl], a
    db $fd
    ret nz

    inc c
    rlca
    ei
    ld [bc], a
    inc c
    ret z

    ld hl, sp-$31
    ld a, [bc]
    rst $08
    or $31
    add hl, bc
    ld sp, $38f5
    rlca
    cp $f3
    ld sp, hl
    inc b
    ld b, b
    di
    adc c
    ld [bc], a
    nop
    di
    nop
    nop
    ld b, b
    di
    ld [hl], a
    db $fd
    cp $f3
    rlca
    ei
    ld sp, $c8f5
    ld hl, sp-$31
    or $cf
    or $c8
    ld hl, sp+$31
    push af
    rlca
    ei
    cp $f3
    ld [hl], a
    db $fd
    ld b, b
    di
    nop
    nop
    ret nz

    ld a, [c]
    sub l
    ld [bc], a
    ld [bc], a
    di
    ld [de], a
    dec b
    jp Jump_001_5cf3


    rlca
    db $fc
    db $f4
    ld e, [hl]
    add hl, bc
    and d
    or $04
    dec bc
    and h
    ld hl, sp+$3d
    inc c
    xor $fa
    cp $0c
    ld l, e
    db $fd
    ld b, b
    dec c
    nop
    nop
    cp $0c
    sub l
    ld [bc], a
    dec a
    inc c
    ld [de], a
    dec b
    inc b
    dec bc
    ld e, h
    rlca
    ld e, [hl]
    add hl, bc
    ld e, [hl]
    add hl, bc
    ld e, h
    rlca
    inc b
    dec bc
    ld [de], a
    dec b
    dec a
    inc c
    sub l
    ld [bc], a
    cp $0c
    nop
    nop
    ld b, b
    dec c
    ld l, e
    db $fd
    cp $0c
    xor $fa
    dec a
    inc c
    and h
    ld hl, sp+$04
    dec bc
    and d
    or $5e
    add hl, bc
    db $fc
    db $f4
    ld e, h
    rlca
    jp Jump_000_12f3


    dec b
    ld [bc], a
    di
    sub l
    ld [bc], a
    ret nz

    ld a, [c]
    nop
    nop
    ld [bc], a
    di
    ld l, e
    db $fd
    jp $eef3


    ld a, [$f4fc]
    and h
    ld hl, sp-$5e
    or $a2
    or $a4
    ld hl, sp-$04
    db $f4
    xor $fa
    jp $6bf3


    db $fd
    ld [bc], a
    di
    nop
    nop
    add b
    ld a, [c]
    and d
    ld [bc], a
    jp Jump_000_2af2


    dec b
    adc b
    di
    add b
    rlca
    rst $00
    db $f4
    adc e
    add hl, bc
    ld [hl], l
    or $39
    dec bc
    add b
    ld hl, sp+$78
    inc c
    sub $fa
    dec a
    dec c
    ld e, [hl]
    db $fd
    add b
    dec c
    nop
    nop
    dec a
    dec c
    and d
    ld [bc], a
    ld a, b
    inc c
    ld a, [hl+]
    dec b
    add hl, sp
    dec bc
    add b
    rlca
    adc e
    add hl, bc
    adc e
    add hl, bc
    add b
    rlca
    add hl, sp
    dec bc
    ld a, [hl+]
    dec b
    ld a, b
    inc c
    and d
    ld [bc], a
    dec a
    dec c
    nop
    nop
    add b
    dec c
    ld e, [hl]
    db $fd
    dec a
    dec c
    sub $fa
    ld a, b
    inc c
    add b
    ld hl, sp+$39
    dec bc
    ld [hl], l
    or $8b
    add hl, bc
    rst $00
    db $f4
    add b
    rlca
    adc b
    di
    ld a, [hl+]
    dec b
    jp $a2f2


    ld [bc], a
    add b
    ld a, [c]
    nop
    nop
    jp $5ef2


    db $fd
    adc b
    di
    sub $fa
    rst $00
    db $f4
    add b
    ld hl, sp+$75
    or $75
    or $80
    ld hl, sp-$39
    db $f4
    sub $fa
    adc b
    di
    ld e, [hl]
    db $fd
    jp Jump_000_00f2


    nop
    ld b, b
    ld a, [c]
    xor [hl]
    ld [bc], a
    add h
    ld a, [c]
    ld b, e
    dec b
    ld c, h
    di
    and e
    rlca
    sub d
    db $f4
    cp c
    add hl, bc
    ld b, a
    or $6e
    dec bc
    ld e, l
    ld hl, sp-$4c
    inc c
    cp l
    ld a, [$0d7c]
    ld d, d
    db $fd
    ret nz

    dec c
    nop
    nop
    ld a, h
    dec c
    xor [hl]
    ld [bc], a
    or h
    inc c
    ld b, e
    dec b
    ld l, [hl]
    dec bc
    and e
    rlca
    cp c
    add hl, bc
    cp c
    add hl, bc
    and e
    rlca
    ld l, [hl]
    dec bc
    ld b, e
    dec b
    or h
    inc c
    xor [hl]
    ld [bc], a
    ld a, h
    dec c
    nop
    nop
    ret nz

    dec c
    ld d, d
    db $fd
    ld a, h
    dec c
    cp l
    ld a, [$0cb4]
    ld e, l
    ld hl, sp+$6e
    dec bc
    ld b, a
    or $b9
    add hl, bc
    sub d
    db $f4
    and e
    rlca
    ld c, h
    di
    ld b, e
    dec b
    add h
    ld a, [c]
    xor [hl]
    ld [bc], a
    ld b, b
    ld a, [c]
    nop
    nop
    add h
    ld a, [c]
    ld d, d
    db $fd
    ld c, h
    di
    cp l
    ld a, [$f492]
    ld e, l
    ld hl, sp+$47
    or $47
    or $5d
    ld hl, sp-$6e
    db $f4
    cp l
    ld a, [$f34c]
    ld d, d
    db $fd
    add h
    ld a, [c]
    nop
    nop
    nop
    ld a, [c]
    cp e
    ld [bc], a
    ld b, l
    ld a, [c]
    ld e, e
    dec b
    ld de, $c7f3
    rlca
    ld e, l
    db $f4
    and $09
    ld a, [de]
    or $a3
    dec bc
    add hl, sp
    ld hl, sp-$11
    inc c
    and l
    ld a, [$0dbb]
    ld b, l
    db $fd
    nop
    ld c, $00
    nop
    cp e
    dec c
    cp e
    ld [bc], a
    rst $28
    inc c
    ld e, e
    dec b
    and e
    dec bc
    rst $00
    rlca
    and $09
    and $09
    rst $00
    rlca
    and e
    dec bc
    ld e, e
    dec b
    rst $28
    inc c
    cp e
    ld [bc], a
    cp e
    dec c
    nop
    nop
    nop
    ld c, $45
    db $fd
    cp e
    dec c
    and l
    ld a, [$0cef]
    add hl, sp
    ld hl, sp-$5d
    dec bc
    ld a, [de]
    or $e6
    add hl, bc
    ld e, l
    db $f4
    rst $00
    rlca
    ld de, $5bf3
    dec b
    ld b, l
    ld a, [c]
    cp e
    ld [bc], a
    nop
    ld a, [c]
    nop
    nop
    ld b, l
    ld a, [c]
    ld b, l
    db $fd
    ld de, $a5f3
    ld a, [$f45d]
    add hl, sp
    ld hl, sp+$1a
    or $1a
    or $39
    ld hl, sp+$5d
    db $f4
    and l
    ld a, [$f311]
    ld b, l
    db $fd
    ld b, l
    ld a, [c]
    nop
    nop
    ret nz

    pop af
    rst $00
    ld [bc], a
    rlca
    ld a, [c]
    ld [hl], h
    dec b
    sub $f2
    ld [$2707], a
    db $f4
    inc de
    ld a, [bc]
    db $ed
    push af
    reti


    dec bc
    ld d, $f8
    ld a, [hl+]
    dec c
    adc h
    ld a, [$0df9]
    add hl, sp
    db $fd
    ld b, b
    ld c, $00
    nop
    ld sp, hl
    dec c
    rst $00
    ld [bc], a
    ld a, [hl+]
    dec c
    ld [hl], h
    dec b
    reti


    dec bc
    ld [$1307], a
    ld a, [bc]
    inc de
    ld a, [bc]
    ld [$d907], a
    dec bc
    ld [hl], h
    dec b
    ld a, [hl+]
    dec c
    rst $00
    ld [bc], a
    ld sp, hl
    dec c
    nop
    nop
    ld b, b
    ld c, $39
    db $fd
    ld sp, hl
    dec c
    adc h
    ld a, [$0d2a]
    ld d, $f8
    reti


    dec bc
    db $ed
    push af
    inc de
    ld a, [bc]
    daa
    db $f4
    ld [$d607], a
    ld a, [c]
    ld [hl], h
    dec b
    rlca
    ld a, [c]
    rst $00
    ld [bc], a
    ret nz

    pop af
    nop
    nop
    rlca
    ld a, [c]
    add hl, sp
    db $fd
    sub $f2
    adc h
    ld a, [$f427]
    ld d, $f8
    db $ed
    push af
    db $ed
    push af
    ld d, $f8
    daa
    db $f4
    adc h
    ld a, [$f2d6]

Jump_001_5cf3:
    add hl, sp
    db $fd
    rlca
    ld a, [c]
    nop
    nop
    add b
    pop af
    call nc, $c802
    pop af
    adc h
    dec b
    sbc e
    ld a, [c]
    ld c, $08
    ld a, [c]
    di
    ld b, b
    ld a, [bc]
    ret nz

    push af
    ld c, $0c
    ld a, [c]
    rst $30
    ld h, l
    dec c
    ld [hl], h
    ld a, [$0e38]
    inc l
    db $fd
    add b
    ld c, $00
    nop
    jr c, jr_001_5d2b

    call nc, $6502
    dec c
    adc h
    dec b
    ld c, $0c
    ld c, $08
    ld b, b
    ld a, [bc]
    ld b, b
    ld a, [bc]

jr_001_5d2b:
    ld c, $08
    ld c, $0c
    adc h
    dec b
    ld h, l
    dec c
    call nc, $3802
    ld c, $00
    nop
    add b
    ld c, $2c
    db $fd
    jr c, jr_001_5d4d

    ld [hl], h
    ld a, [$0d65]
    ld a, [c]
    rst $30
    ld c, $0c
    ret nz

    push af
    ld b, b
    ld a, [bc]
    ld a, [c]
    di

jr_001_5d4d:
    ld c, $08
    sbc e
    ld a, [c]
    adc h
    dec b
    ret z

    pop af
    call nc, $8002
    pop af
    nop
    nop
    ret z

    pop af
    inc l
    db $fd
    sbc e
    ld a, [c]
    ld [hl], h
    ld a, [$f3f2]
    ld a, [c]
    rst $30
    ret nz

    push af
    ret nz

    push af
    ld a, [c]
    rst $30
    ld a, [c]
    di
    ld [hl], h
    ld a, [$f29b]
    inc l
    db $fd
    ret z

    pop af
    nop
    nop
    ld b, b
    pop af
    ldh [rSC], a
    adc c
    pop af
    and l
    dec b
    ld h, b
    ld a, [c]
    ld sp, $bd08
    di
    ld l, [hl]
    ld a, [bc]
    sub d
    push af
    ld b, e
    inc c
    rst $08
    rst $30
    and b
    dec c
    ld e, e
    ld a, [$0e77]
    jr nz, @-$01

    ret nz

    ld c, $00
    nop
    ld [hl], a
    ld c, $e0
    ld [bc], a
    and b
    dec c
    and l
    dec b
    ld b, e
    inc c
    ld sp, $6e08
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld sp, $4308
    inc c
    and l
    dec b
    and b
    dec c
    ldh [rSC], a
    ld [hl], a
    ld c, $00
    nop
    ret nz

    ld c, $20
    db $fd
    ld [hl], a
    ld c, $5b
    ld a, [$0da0]
    rst $08
    rst $30
    ld b, e
    inc c
    sub d
    push af
    ld l, [hl]
    ld a, [bc]
    cp l
    di
    ld sp, $6008
    ld a, [c]
    and l
    dec b
    adc c
    pop af
    ldh [rSC], a
    ld b, b
    pop af
    nop
    nop
    adc c

jr_001_5ddc:
    pop af
    jr nz, jr_001_5ddc

    ld h, b
    ld a, [c]
    ld e, e
    ld a, [$f3bd]
    rst $08
    rst $30
    sub d
    push af
    sub d
    push af
    rst $08
    rst $30
    cp l
    di
    ld e, e
    ld a, [$f260]
    jr nz, @-$01

    adc c
    pop af
    nop
    nop
    nop
    pop af
    db $ed
    ld [bc], a
    ld c, d
    pop af
    cp l
    dec b
    dec h
    ld a, [c]
    ld d, l
    ld [$f388], sp
    sbc e
    ld a, [bc]
    ld h, l
    push af
    ld a, b
    inc c
    xor e
    rst $30
    db $db
    dec c
    ld b, e
    ld a, [$0eb6]
    inc de
    db $fd
    nop
    rrca
    nop
    nop
    or [hl]
    ld c, $ed
    ld [bc], a
    db $db
    dec c
    cp l
    dec b
    ld a, b
    inc c
    ld d, l
    ld [$0a9b], sp
    sbc e
    ld a, [bc]
    ld d, l
    ld [$0c78], sp
    cp l
    dec b
    db $db
    dec c
    db $ed
    ld [bc], a
    or [hl]
    ld c, $00
    nop
    nop
    rrca
    inc de
    db $fd
    or [hl]
    ld c, $43
    ld a, [$0ddb]
    xor e
    rst $30
    ld a, b
    inc c
    ld h, l
    push af
    sbc e
    ld a, [bc]
    adc b
    di
    ld d, l
    ld [$f225], sp
    cp l
    dec b
    ld c, d
    pop af
    db $ed
    ld [bc], a
    nop
    pop af
    nop
    nop
    ld c, d
    pop af
    inc de
    db $fd
    dec h
    ld a, [c]
    ld b, e
    ld a, [$f388]
    xor e
    rst $30
    ld h, l
    push af
    ld h, l
    push af
    xor e
    rst $30
    adc b
    di
    ld b, e
    ld a, [$f225]
    inc de
    db $fd
    ld c, d
    pop af
    nop
    nop
    ret nz

    ldh a, [$f9]
    ld [bc], a
    inc c
    pop af
    push de

jr_001_5e80:
    dec b
    ld [$78f1], a
    ld [$f352], sp
    ret z

    ld a, [bc]
    jr c, jr_001_5e80

    xor [hl]
    inc c
    adc b
    rst $30
    ld d, $0e
    dec hl
    ld a, [$0ef4]
    rlca
    db $fd
    ld b, b
    rrca
    nop
    nop
    db $f4
    ld c, $f9
    ld [bc], a
    ld d, $0e
    push de
    dec b
    xor [hl]
    inc c
    ld a, b
    ld [$0ac8], sp
    ret z

    ld a, [bc]
    ld a, b
    ld [$0cae], sp
    push de
    dec b
    ld d, $0e
    ld sp, hl
    ld [bc], a
    db $f4
    ld c, $00
    nop
    ld b, b
    rrca
    rlca
    db $fd
    db $f4

jr_001_5ebe:
    ld c, $2b
    ld a, [$0e16]
    adc b
    rst $30
    xor [hl]
    inc c
    jr c, jr_001_5ebe

    ret z

    ld a, [bc]
    ld d, d
    di
    ld a, b
    ld [$f1ea], sp
    push de
    dec b
    inc c
    pop af
    ld sp, hl
    ld [bc], a
    ret nz

    ldh a, [rP1]
    nop
    inc c
    pop af
    rlca

jr_001_5ede:
    db $fd
    ld [$2bf1], a
    ld a, [$f352]
    adc b
    rst $30
    jr c, jr_001_5ede

    jr c, @-$09

    adc b
    rst $30
    ld d, d
    di
    dec hl
    ld a, [$f1ea]
    rlca
    db $fd
    inc c
    pop af
    nop
    nop
    add b
    ldh a, [rTMA]
    inc bc
    call $eef0
    dec b
    xor a
    pop af
    sbc h
    ld [$f31d], sp
    push af
    ld a, [bc]
    dec bc
    push af
    db $e3
    inc c
    ld h, h
    rst $30
    ld d, c
    ld c, $12
    ld a, [$0f33]
    ld a, [$80fc]
    rrca
    nop
    nop
    inc sp
    rrca
    ld b, $03
    ld d, c
    ld c, $ee
    dec b
    db $e3
    inc c
    sbc h
    ld [$0af5], sp
    push af
    ld a, [bc]
    sbc h
    ld [$0ce3], sp
    xor $05
    ld d, c
    ld c, $06
    inc bc
    inc sp
    rrca
    nop
    nop
    add b
    rrca
    ld a, [$33fc]
    rrca
    ld [de], a
    ld a, [$0e51]
    ld h, h
    rst $30
    db $e3
    inc c
    dec bc
    push af
    push af
    ld a, [bc]
    dec e
    di
    sbc h
    ld [$f1af], sp
    xor $05
    call Call_000_06f0
    inc bc
    add b
    ldh a, [rP1]
    nop
    call $faf0
    db $fc
    xor a
    pop af
    ld [de], a
    ld a, [$f31d]
    ld h, h
    rst $30
    dec bc
    push af
    dec bc
    push af
    ld h, h
    rst $30
    dec e
    di
    ld [de], a
    ld a, [$f1af]
    ld a, [$cdfc]
    ldh a, [rP1]
    nop
    ld b, b
    ldh a, [rNR12]
    inc bc
    adc [hl]
    ldh a, [rTMA]
    ld b, $73
    pop af
    ret nz

    ld [$f2e8], sp
    inc hl
    dec bc
    db $dd
    db $f4
    jr jr_001_5f9a

    ld b, b
    rst $30
    adc l
    ld c, $fa
    ld sp, hl
    ld [hl], d
    rrca
    xor $fc
    ret nz

    rrca
    nop

jr_001_5f9a:
    nop
    ld [hl], d
    rrca
    ld [de], a
    inc bc
    adc l
    ld c, $06
    ld b, $18
    dec c
    ret nz

    ld [$0b23], sp
    inc hl
    dec bc
    ret nz

    ld [$0d18], sp
    ld b, $06
    adc l
    ld c, $12
    inc bc
    ld [hl], d
    rrca
    nop
    nop
    ret nz

    rrca
    xor $fc
    ld [hl], d
    rrca
    ld a, [$8df9]
    ld c, $40
    rst $30
    jr jr_001_5fd4

    db $dd
    db $f4
    inc hl
    dec bc
    add sp, -$0e
    ret nz

    ld [$f173], sp
    ld b, $06
    adc [hl]

jr_001_5fd4:
    ldh a, [rNR12]
    inc bc
    ld b, b
    ldh a, [rP1]
    nop
    adc [hl]
    ldh a, [$ee]
    db $fc
    ld [hl], e
    pop af
    ld a, [$e8f9]
    ld a, [c]
    ld b, b
    rst $30
    db $dd
    db $f4
    db $dd
    db $f4
    ld b, b
    rst $30
    add sp, -$0e
    ld a, [$73f9]
    pop af
    xor $fc
    adc [hl]
    ldh a, [$d5]
    xor a
    ld [$c822], a
    ld [$c824], a
    ld [$c825], a
    ld a, [$c821]
    ld [$c821], a
    ld a, [$c823]
    ld [$c823], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld d, a
    ld a, [$c821]
    sub d
    ld [$c821], a
    ld a, [$c822]
    sbc $00
    ld [$c822], a
    bit 7, a
    jr z, jr_001_6033

    ld a, [$c821]
    cpl
    inc a
    ld [$c821], a
    ld hl, $c825
    inc [hl]

jr_001_6033:
    ld a, [$c821]
    and $f0
    swap a
    srl a
    ld d, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld e, a
    ld a, [$c823]
    sub e
    ld [$c823], a
    ld a, [$c824]
    sbc $00
    ld [$c824], a
    bit 7, a
    jr z, jr_001_6063

    ld a, [$c823]
    cpl
    inc a
    ld [$c823], a
    ld hl, $c825
    inc [hl]
    inc [hl]

jr_001_6063:
    ld a, [$c823]
    and $f0
    swap a
    srl a
    cp d
    jr nc, jr_001_6070

    ld a, d

jr_001_6070:
    ld [$c827], a
    and a
    jr z, jr_001_608b

    ld h, a
    ld l, a
    ld a, [$c821]

jr_001_607b:
    srl a
    dec h
    jr nz, jr_001_607b

    ld e, a
    ld a, [$c823]

jr_001_6084:
    srl a
    dec l
    jr nz, jr_001_6084

    jr jr_001_6092

jr_001_608b:
    ld a, [$c821]
    ld e, a
    ld a, [$c823]

jr_001_6092:
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, $00
    add hl, de
    push hl
    ld de, $60f8
    add hl, de
    ld a, [$c825]
    and a
    jr z, jr_001_60ce

    cp $01
    jr z, jr_001_60ba

    cp $02
    jr z, jr_001_60c4

    ld a, [hl]
    add $10
    and $1f
    ld [$c81f], a
    jr jr_001_60d2

jr_001_60ba:
    ld a, [hl]
    sub $20
    cpl
    inc a
    ld [$c81f], a
    jr jr_001_60d2

jr_001_60c4:
    ld a, [hl]
    sub $10
    cpl
    inc a
    ld [$c81f], a
    jr jr_001_60d2

jr_001_60ce:
    ld a, [hl]
    ld [$c81f], a

jr_001_60d2:
    pop hl
    ld de, $64f8
    add hl, de
    ld a, [$c827]
    and a
    jr z, jr_001_60f2

    ld d, [hl]

jr_001_60de:
    sla d
    jr c, jr_001_60eb

    dec a
    jr nz, jr_001_60de

    ld a, d
    ld [$c821], a
    jr jr_001_60f6

jr_001_60eb:
    ld a, $ff
    ld [$c821], a
    jr jr_001_60f6

jr_001_60f2:
    ld a, [hl]
    ld [$c821], a

jr_001_60f6:
    pop de
    ret


    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c10], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    db $10
    ld c, $0c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1008], sp
    ld c, $0d
    inc c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0f10], sp
    ld c, $0d
    inc c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    rrca
    ld c, $0d
    dec c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    rrca
    ld c, $0e
    dec c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    rrca
    rrca
    ld c, $0d
    dec c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    rrca
    rrca
    ld c, $0e

Jump_001_61fd:
    dec c
    dec c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    rrca
    rrca
    ld c, $0e
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    db $10
    rrca
    rrca
    rrca
    ld c, $0e
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e

Call_001_6301:
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    db $10
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc b
    inc b
    inc b
    dec b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_001_65cb

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1212

jr_001_65cb:
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_001_65eb

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rlca
    rlca
    rlca
    rlca
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312

jr_001_65eb:
    inc d
    dec d
    ld d, $17
    jr jr_001_660a

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [$0808], sp
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1211

jr_001_660a:
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_001_662a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_6622

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c

jr_001_6622:
    dec c
    ld c, $0f
    rrca
    db $10
    ld de, $1312

jr_001_662a:
    inc d
    dec d
    dec d
    ld d, $17
    jr jr_001_664a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$0c

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1212
    inc de

jr_001_664a:
    inc d
    dec d
    ld d, $17
    jr jr_001_6669

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_6664

    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca

jr_001_6664:
    db $10
    ld de, $1211
    inc de

jr_001_6669:
    inc d
    dec d
    dec d
    ld d, $17
    jr jr_001_6689

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    jr nz, jr_001_6685

    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    ld c, $0f
    rrca
    db $10
    db $10

jr_001_6685:
    ld de, $1312
    inc d

jr_001_6689:
    inc d
    dec d
    ld d, $17
    jr jr_001_66a8

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    db $10
    ld de, $1211
    inc de
    inc de

jr_001_66a8:
    inc d
    dec d
    ld d, $17
    rla
    jr jr_001_66c8

    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    jr nz, jr_001_66d9

    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    db $10
    db $10
    ld de, $1211
    inc de
    inc de
    inc d

jr_001_66c8:
    dec d
    ld d, $16
    rla
    jr jr_001_66e7

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_66f8

    ld [hl+], a
    rrca

jr_001_66d9:
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    db $10
    ld de, $1211
    ld [de], a
    inc de
    inc de
    inc d

jr_001_66e7:
    dec d
    dec d
    ld d, $17
    jr jr_001_6706

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    rra
    jr nz, jr_001_6718

    ld [hl+], a

jr_001_66f8:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld [de], a
    ld [de], a
    inc de
    inc d
    inc d

jr_001_6706:
    dec d
    dec d
    ld d, $17
    jr jr_001_6724

    add hl, de
    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_6737

    ld [hl+], a
    ld [hl+], a

jr_001_6718:
    ld de, $1111
    ld de, $1111
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc d

jr_001_6724:
    inc d
    dec d
    ld d, $16
    rla
    jr jr_001_6743

    add hl, de
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    jr nz, jr_001_6757

    ld [hl+], a

jr_001_6737:
    inc hl
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc d
    inc d

jr_001_6743:
    dec d
    dec d
    ld d, $16
    rla
    jr jr_001_6762

    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    rra
    jr nz, @+$23

    ld [hl+], a
    ld [hl+], a

jr_001_6757:
    inc hl
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc d
    inc d
    dec d

jr_001_6762:
    dec d
    dec d
    ld d, $17
    rla
    jr jr_001_6781

    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld hl, $2322
    inc h
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d

jr_001_6781:
    dec d
    ld d, $16
    rla
    rla
    jr jr_001_67a1

    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    jr nz, jr_001_67b3

    ld hl, $2322
    inc h
    inc h
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $16

jr_001_67a1:
    ld d, $17
    rla
    jr jr_001_67be

    add hl, de
    add hl, de
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    rra
    jr nz, jr_001_67d4

jr_001_67b3:
    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    ld d, $16
    ld d, $16
    ld d, $16

jr_001_67be:
    ld d, $17
    rla
    rla
    jr jr_001_67dc

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    rra
    jr nz, @+$23

    ld [hl+], a
    ld [hl+], a

jr_001_67d4:
    inc hl
    inc h
    dec h
    ld h, $17
    rla
    rla
    rla

jr_001_67dc:
    rla
    rla
    rla
    jr jr_001_67f9

    jr @+$1b

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    dec e
    ld e, $1f
    rra
    jr nz, @+$23

    ld hl, $2322
    inc h
    dec h
    dec h
    ld h, $18

jr_001_67f9:
    jr jr_001_6813

    jr jr_001_6815

    jr @+$1a

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    dec de
    inc e
    inc e
    dec e
    ld e, $1e
    rra
    rra
    jr nz, jr_001_6831

    ld hl, $2322

jr_001_6813:
    inc h
    inc h

jr_001_6815:
    dec h
    ld h, $27
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    dec de
    inc e
    inc e
    dec e
    dec e
    ld e, $1e
    rra
    jr nz, @+$22

    ld hl, $2221

jr_001_6831:
    inc hl
    inc h
    inc h
    dec h
    ld h, $27
    daa
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    dec de
    dec de
    inc e
    inc e
    dec e
    dec e
    ld e, $1e
    rra
    rra
    jr nz, @+$22

    ld hl, $2222
    inc hl
    inc h
    inc h
    dec h
    ld h, $26
    daa
    jr z, @+$1d

    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    inc e
    inc e
    inc e
    dec e
    dec e
    dec e
    ld e, $1e
    rra
    rra
    jr nz, jr_001_688d

    ld hl, $2222
    inc hl
    inc h
    inc h
    dec h
    ld h, $26
    daa
    jr z, @+$2b

    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec e
    dec e
    dec e
    ld e, $1e
    ld e, $1f
    rra
    jr nz, @+$22

    ld hl, $2221

jr_001_688d:
    inc hl
    inc hl
    inc h
    inc h
    dec h
    ld h, $26
    daa
    jr z, jr_001_68c0

    add hl, hl
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $1e
    ld e, $1f
    rra
    rra
    jr nz, @+$22

    ld hl, $2221
    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    dec h
    ld h, $26
    daa
    jr z, jr_001_68df

    add hl, hl
    ld a, [hl+]
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e

jr_001_68c0:
    rra
    rra
    rra
    rra
    jr nz, @+$22

    ld hl, $2221
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    inc h
    dec h
    dec h
    ld h, $27
    daa
    jr z, jr_001_68fe

    add hl, hl
    ld a, [hl+]
    dec hl
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_001_68df:
    rra
    jr nz, @+$22

    jr nz, jr_001_6904

    ld hl, $2221
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    inc h
    inc h
    dec h
    ld h, $26
    daa
    daa
    jr z, @+$2b

    add hl, hl
    ld a, [hl+]
    dec hl
    dec hl
    ld bc, $c120
    ld hl, $0004

jr_001_68fe:
    add hl, bc
    ld a, [hl]
    ld hl, $c81b
    sub [hl]

jr_001_6904:
    jr nz, jr_001_690b

    ld d, $00
    jp Jump_001_69f6


Call_001_690b:
jr_001_690b:
    add a
    ld [$c823], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    xor a
    ld [$c822], a
    ld a, [$c823]
    bit 7, a
    jr nz, jr_001_698e

    ld a, [$c821]
    sub $44
    ld [$c821], a
    ld a, [$c822]
    sbc $00
    ld [$c822], a
    ld [$c820], a
    ld a, [$c821]
    ld [$c81f], a
    ld hl, $c803
    ld a, [$c81f]
    add [hl]
    ld [$c81f], a
    ld a, [$c820]
    adc $00
    ld [$c820], a
    bit 7, a
    jr z, jr_001_6955

    xor a
    sub [hl]
    jr jr_001_6971

jr_001_6955:
    ld a, [$c81f]
    sub $60
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jr nz, jr_001_696e

    ld a, $60
    sub [hl]
    jr jr_001_6971

jr_001_696e:
    ld a, [$c821]

jr_001_6971:
    ld hl, $c823
    bit 7, a
    jr nz, jr_001_6984

    cp [hl]
    jp c, Jump_001_6980

    ld d, [hl]
    jp Jump_001_69f6


Jump_001_6980:
    ld d, a
    jp Jump_001_69f6


jr_001_6984:
    cp [hl]
    jp nc, Jump_001_698b

    ld d, [hl]
    jr jr_001_69f6

Jump_001_698b:
    ld d, a
    jr jr_001_69f6

jr_001_698e:
    ld a, [$c821]
    sub $6c
    ld [$c821], a
    ld a, [$c822]
    sbc $00
    ld [$c822], a
    ld [$c820], a
    ld a, [$c821]
    ld [$c81f], a
    ld hl, $c803
    ld a, [$c81f]
    add [hl]
    ld [$c81f], a
    ld a, [$c820]
    adc $00
    ld [$c820], a
    bit 7, a
    jr z, jr_001_69c1

    xor a
    sub [hl]
    jr jr_001_69dd

jr_001_69c1:
    ld a, [$c81f]
    sub $60
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jr nz, jr_001_69da

    ld a, $60
    sub [hl]
    jr jr_001_69dd

jr_001_69da:
    ld a, [$c821]

jr_001_69dd:
    ld hl, $c823
    bit 7, a
    jr nz, jr_001_69ee

    cp [hl]
    jp c, Jump_001_69eb

    ld d, [hl]
    jr jr_001_69f6

Jump_001_69eb:
    ld d, a
    jr jr_001_69f6

jr_001_69ee:
    cp [hl]
    jp nc, Jump_001_69f5

    ld d, [hl]
    jr jr_001_69f6

Jump_001_69f5:
    ld d, a

Jump_001_69f6:
jr_001_69f6:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld hl, $c81c
    sub [hl]
    jr nz, jr_001_6a06

    ld e, $00
    jp Jump_001_6af1


jr_001_6a06:
    add a
    ld [$c823], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c821], a
    xor a
    ld [$c822], a
    ld a, [$c823]
    bit 7, a
    jr nz, jr_001_6a89

    ld a, [$c821]
    sub $64
    ld [$c821], a
    ld a, [$c822]
    sbc $00
    ld [$c822], a
    ld [$c820], a
    ld a, [$c821]
    ld [$c81f], a
    ld hl, $c804
    ld a, [$c81f]
    add [hl]
    ld [$c81f], a
    ld a, [$c820]
    adc $00
    ld [$c820], a
    bit 7, a
    jr z, jr_001_6a50

    xor a
    sub [hl]
    jr jr_001_6a6c

jr_001_6a50:
    ld a, [$c81f]
    sub $70
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jr nz, jr_001_6a69

    ld a, $70
    sub [hl]
    jr jr_001_6a6c

jr_001_6a69:
    ld a, [$c821]

jr_001_6a6c:
    ld hl, $c823
    bit 7, a
    jr nz, jr_001_6a7f

    cp [hl]
    jp c, Jump_001_6a7b

    ld e, [hl]
    jp Jump_001_6af1


Jump_001_6a7b:
    ld e, a
    jp Jump_001_6af1


jr_001_6a7f:
    cp [hl]
    jp nc, Jump_001_6a86

    ld e, [hl]
    jr jr_001_6af1

Jump_001_6a86:
    ld e, a
    jr jr_001_6af1

jr_001_6a89:
    ld a, [$c821]
    sub $64
    ld [$c821], a
    ld a, [$c822]
    sbc $00
    ld [$c822], a
    ld [$c820], a
    ld a, [$c821]
    ld [$c81f], a
    ld hl, $c804
    ld a, [$c81f]
    add [hl]
    ld [$c81f], a
    ld a, [$c820]
    adc $00
    ld [$c820], a
    bit 7, a
    jr z, jr_001_6abc

    xor a
    sub [hl]
    jr jr_001_6ad8

jr_001_6abc:
    ld a, [$c81f]
    sub $70
    ld [$c81f], a
    ld a, [$c820]
    sbc $00
    ld [$c820], a
    bit 7, a
    jr nz, jr_001_6ad5

    ld a, $70
    sub [hl]
    jr jr_001_6ad8

jr_001_6ad5:
    ld a, [$c821]

jr_001_6ad8:
    ld hl, $c823
    bit 7, a
    jr nz, jr_001_6ae9

    cp [hl]
    jp c, Jump_001_6ae6

    ld e, [hl]
    jr jr_001_6af1

Jump_001_6ae6:
    ld e, a
    jr jr_001_6af1

jr_001_6ae9:
    cp [hl]
    jp nc, Jump_001_6af0

    ld e, [hl]
    jr jr_001_6af1

Jump_001_6af0:
    ld e, a

Jump_001_6af1:
jr_001_6af1:
    ld a, $1c
    ld [$c82d], a
    ld bc, $c100

jr_001_6af9:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_001_6b0f

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

jr_001_6b0f:
    ld hl, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $c82d
    dec [hl]
    jr nz, jr_001_6af9

    ld a, [$c803]
    add d
    ld [$c803], a
    ld a, [$c804]
    add e
    ld [$c804], a
    ld bc, $c120
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c81b], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c81c], a
    ret


    ld de, $9800
    ld hl, $6d0d
    call Call_000_0756
    ld a, $17
    call Call_000_0903
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, $d3
    ldh [rLCDC], a

jr_001_6b56:
    call Call_001_6ca6
    ld a, c
    or a
    jr z, jr_001_6b56

    xor a
    ld [passwordLetter], a
    call Call_001_6c29

Jump_001_6b64:
jr_001_6b64:
    call Call_001_6cac
    ldh [$9c], a
    and a
    jr z, jr_001_6b73

    xor a
    ld [$cb24], a
    ld [$cb25], a

jr_001_6b73:
    ld a, [$cb24]
    add $01
    ld [$cb24], a
    ld a, [$cb25]
    adc $00
    ld [$cb25], a
    ld a, [$cb25]
    ld h, a
    ld a, [$cb24]
    ld l, a
    ld de, $0708
    ld a, d
    cpl
    ld d, a
    ld a, e
    cpl
    ld e, a
    inc de
    add hl, de
    bit 7, h
    jr nz, jr_001_6bad

    xor a
    ld [$cb24], a
    ld [$cb25], a
    ld a, $01
    ld [demoing], a
    ld a, $20
    call Call_000_0a84
    jr jr_001_6c24

jr_001_6bad:
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_001_6c05

    bit 3, a
    jr nz, jr_001_6c05

    bit 6, a
    jr nz, jr_001_6bc5

    bit 7, a
    jr nz, jr_001_6be0

    bit 2, a
    jr nz, jr_001_6bfd

    jr jr_001_6b64

jr_001_6bc5:
    ld a, [passwordLetter]
    or a
    jr z, jr_001_6b64

    xor a
    ld [passwordLetter], a
    push hl
    push af
    ld hl, $2195
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_001_6c29
    jr jr_001_6b64

jr_001_6be0:
    ld a, [passwordLetter]
    or a
    jp nz, Jump_001_6b64

    inc a
    ld [passwordLetter], a
    push hl
    push af
    ld hl, $2195
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_001_6c59
    jp Jump_001_6b64


jr_001_6bfd:
    ld a, [passwordLetter]
    or a
    jr z, jr_001_6be0

    jr jr_001_6bc5

jr_001_6c05:
    push hl
    push af
    ld hl, $21b0
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    ld a, $10
    call Call_000_0a84
    ld a, $00
    ld d, $07
    call Call_000_2df8

jr_001_6c1d:
    call Call_001_6ca6
    ld a, c
    or a
    jr z, jr_001_6c1d

jr_001_6c24:
    ld a, [passwordLetter]
    ld c, a
    ret


Call_001_6c29:
    ld de, $99a5
    ld a, [$6ea7]
    call Call_000_240e
    ld hl, $6e77
    ld a, [hl+]
    inc hl
    inc de
    ld c, a

jr_001_6c39:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jr nz, jr_001_6c39

    ld de, $99c5
    ld a, $ff
    call Call_000_240e
    inc de
    ld hl, $6e9a
    ld a, [hl+]
    inc hl
    ld c, a

jr_001_6c50:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jr nz, jr_001_6c50

    ret


Call_001_6c59:
    ld de, $99a5
    ld a, $ff
    call Call_000_240e
    inc de
    ld hl, $6e8e
    ld a, [hl+]
    inc hl
    ld c, a

jr_001_6c68:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jr nz, jr_001_6c68

    ld de, $99c5
    ld a, [$6ea7]
    call Call_000_240e
    inc de
    ld hl, $6e83
    ld a, [hl+]
    inc hl
    ld c, a

jr_001_6c80:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jr nz, jr_001_6c80

    ret


jr_001_6c89:
    ldh a, [rLY]
    cp $91
    jr nc, jr_001_6c92

    nop
    jr jr_001_6c89

jr_001_6c92:
    xor a
    ldh [rLCDC], a
    ld a, $ff
    ld hl, $9800
    ld bc, $0400

jr_001_6c9d:
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_6c9d

    ret


Call_001_6ca6:
    ld a, $08
    call Call_000_2e61
    ld c, a

Call_001_6cac:
    push bc
    call Call_000_02c4
    pop bc
    ld a, [$c803]
    ld [$c805], a
    ld [$c807], a
    ld a, [$c804]
    ld [$c806], a
    ld [$c808], a
    ld hl, $ffa1
    set 0, [hl]
    db $76

jr_001_6cc9:
    call Call_000_0c2e
    ld hl, $ffa1
    bit 1, [hl]
    jr z, jr_001_6cc9

    res 1, [hl]
    ld a, [$ca06]
    ld hl, $ff9b
    cp [hl]
    jr z, jr_001_6ce8

    ld a, [hl]
    ld [$ca06], a
    xor a
    ld [$ca07], a
    jr jr_001_6d0a

jr_001_6ce8:
    ld a, [$ca07]
    cp $1e
    jr z, jr_001_6cf5

    inc a
    ld [$ca07], a
    jr jr_001_6d0a

jr_001_6cf5:
    ld a, [$ca08]
    cp $04
    jr z, jr_001_6d02

    inc a
    ld [$ca08], a
    jr jr_001_6d0a

jr_001_6d02:
    xor a
    ld [$ca08], a
    ldh a, [$9b]
    ldh [$9c], a

jr_001_6d0a:
    ldh a, [$9c]
    ret


    inc d
    ld [de], a

titleScreenTiles::
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $01, $02, $03, $04, $05, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $20, $21, $22, $23, $24, $25, $26, $27, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $4a, $4b, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $ff
    db $ff, $f2, $f3, $ff, $ff, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $70, $71, $ff, $ff, $80, $81, $82, $83, $84, $85, $86
    db $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $ff, $ff, $a0, $a1, $a2
    db $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $ff
    db $ff, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $cf, $d0, $d1, $ff, $ff, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea
    db $eb, $ec, $ed, $ee, $ef, $f0, $f1, $ff, $ff, $ff, $08, $09, $0a, $0b, $0c, $0d
    db $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $ff, $ff, $ff, $28, $29
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $39, $3a, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $92, $93
    db $94, $1d, $1e, $1f, $39, $3a, $3b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $9c, $b2, $b3, $b4, $b5, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $76, $58, $7c, $58, $7a, $ff, $7f, $9a, $7f, $95, $5c
    db $79, $ff, $7f, $96, $7c, $7c, $78, $9a

    ld a, [bc]
    ld bc, $4f4e
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    add hl, bc
    ld bc, $7372
    ld [hl], h
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [bc]
    ld bc, $1a19
    dec de
    inc e
    dec e
    ld e, $1f
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, bc
    ld bc, $9392
    sub h
    dec e
    ld e, $1f
    add hl, sp
    ld a, [hl-]
    dec sp
    ld bc, $4d01
    dec c
    ld l, l
    ld [hl], a
    ld l, [hl]
    add e
    ld l, [hl]
    adc [hl]
    ld l, [hl]
    sbc d
    ld l, [hl]
    and l
    ld l, [hl]
    ld de, $9800
    ld hl, passwordEntryScreenTiles
    call Call_000_0756
    ld a, $13
    call Call_000_0903
    ld a, $01
    ld d, $07
    call Call_000_2df8
    ld a, $d3
    ldh [rLCDC], a

jr_001_6ecd:
    call Call_001_6ca6
    ld a, c
    or a
    jr z, jr_001_6ecd

    call Call_001_70c0
    call Call_001_7184

Jump_001_6eda:
jr_001_6eda:
    call Call_001_6cac
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_001_6f5f

    bit 1, a
    jp nz, Jump_001_6f8d

    bit 3, a
    jr nz, jr_001_6f4f

    bit 4, a
    jr nz, jr_001_6f0e

    bit 5, a
    jr nz, jr_001_6f2e

    jr jr_001_6eda

Jump_001_6ef6:
jr_001_6ef6:
    ld c, a
    ld a, $10
    call Call_000_0a84
    ld a, $00
    ld d, $07
    push bc
    call Call_000_2df8

jr_001_6f04:
    call Call_001_6ca6
    ld a, c
    or a
    jr z, jr_001_6f04

    pop bc
    ld a, c
    ret


jr_001_6f0e:
    call Call_001_7189
    ld a, [passwordLetter]
    inc a
    cp $11
    jr nz, jr_001_6f1a

    xor a

jr_001_6f1a:
    ld [passwordLetter], a
    push hl
    push af
    ld hl, $2195
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_001_7184
    jr jr_001_6eda

jr_001_6f2e:
    call Call_001_7189
    ld a, [passwordLetter]
    dec a
    cp $ff
    jr nz, jr_001_6f3b

    ld a, $10

jr_001_6f3b:
    ld [passwordLetter], a
    push hl
    push af
    ld hl, $2195
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_001_7184
    jr jr_001_6eda

jr_001_6f4f:
    or $01
    push hl
    push af
    ld hl, $21b0
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    jr jr_001_6ef6

jr_001_6f5f:
    ld a, [passwordLetter]
    cp $10
    jr z, jr_001_6f8d

    ld c, a
    ld hl, currentPassword1
    ld a, [passwordI]
    ld d, $00
    ld e, a
    add hl, de
    ld [hl], c
    inc a
    ld [passwordI], a
    cp $06
    jp z, Jump_001_7108

    push hl
    push af
    ld hl, $21b0
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_001_6fb8
    jp Jump_001_6eda


Jump_001_6f8d:
jr_001_6f8d:
    ld a, [passwordI]
    or a
    jr nz, jr_001_6fa2

    push hl
    push af
    ld hl, $221b
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    jp Jump_001_6eda


jr_001_6fa2:
    dec a
    ld [passwordI], a
    push hl
    push af
    ld hl, $221b
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    call Call_001_7072
    jp Jump_001_6eda


Call_001_6fb8:
    ld c, $ff
    ld hl, currentPassword1
    ld a, [passwordI]
    ld d, $00
    ld e, a
    add hl, de
    ld [hl], c
    ld a, [passwordI]
    dec a
    rlca
    rlca
    ld c, a
    ld b, $00
    ld hl, $716c
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    push de
    ld a, [passwordLetter]
    add $12
    rlca
    ld c, a
    ld hl, passwordSpritePointers
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop bc
    inc bc
    inc bc
    pop de
    pop hl
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld a, [$750a]
    call Call_000_240e
    inc de
    ld a, [$750b]
    call Call_000_240e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld a, [$750c]
    call Call_000_240e
    inc de
    ld a, [$750d]
    call Call_000_240e
    ret


Call_001_7022:
    ld c, $ff
    ld hl, currentPassword1
    ld a, [passwordI]
    ld d, $00
    ld e, a
    add hl, de
    ld [hl], c
    ld a, [passwordI]
    dec a
    rlca
    rlca
    ld c, a
    ld b, $00
    ld hl, $716c
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    push de
    ld a, [passwordLetter]
    add $12
    rlca
    ld c, a
    ld hl, passwordSpritePointers
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop bc
    inc bc
    inc bc
    pop de
    pop hl
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ld a, [bc]
    inc bc
    call Call_000_240e
    inc de
    ret


Call_001_7072:
    ld a, [passwordI]
    rlca
    rlca
    ld c, a
    ld b, $00
    ld hl, $716c
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$750a]
    inc bc
    call Call_000_240e
    inc de
    ld a, [$750b]
    inc bc
    call Call_000_240e
    inc de
    ld a, [$7570]
    call Call_000_240e
    inc de
    ld a, [$7571]
    call Call_000_240e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$750c]
    inc bc
    call Call_000_240e
    inc de
    ld a, [$750d]
    inc bc
    call Call_000_240e
    inc de
    ld a, [$7572]
    call Call_000_240e
    inc de
    ld a, [$7573]
    call Call_000_240e
    ret


Call_001_70c0:
    xor a
    ld [passwordLetter], a
    ld [passwordI], a
    dec a
    ld b, $07
    ld hl, currentPassword1

jr_001_70cd:
    ld [hl+], a
    dec b
    jr nz, jr_001_70cd

    ld hl, $98e6
    ld c, $05

jr_001_70d6:
    ld a, [$7570]
    ld [hl+], a
    ld a, [$7571]
    ld [hl+], a
    dec c
    jr nz, jr_001_70d6

    ld hl, $9906
    ld c, $05

jr_001_70e6:
    ld a, [$7572]
    ld [hl+], a
    ld a, [$7573]
    ld [hl+], a
    dec c
    jr nz, jr_001_70e6

    ld hl, $98e4
    ld a, [$750a]
    ld [hl+], a
    ld a, [$750b]
    ld [hl+], a
    ld hl, $9904
    ld a, [$750c]
    ld [hl+], a
    ld a, [$750d]
    ld [hl+], a
    ret


Jump_001_7108:
    call Call_001_7022
    call Call_001_6cac
    ld hl, currentPassword1
    call Call_001_71fb
    or a
    jr z, jr_001_712b

    call Call_001_7189
    ld a, [passwordLetter]
    push af
    call Call_001_70c0
    pop af
    ld [passwordLetter], a
    call Call_001_7184
    jp Jump_001_6eda


jr_001_712b:
    ld c, $06
    ld de, $98e4
    ld hl, currentPassword1

jr_001_7133:
    push bc
    ld a, [hl+]
    inc a
    rlca
    push hl
    ld hl, passwordSpritePointers
    ld b, $00
    ld c, a
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    call Call_000_240e
    inc de
    ld a, [hl+]
    call Call_000_240e
    inc de
    push de
    push hl
    ld hl, $001e
    add hl, de
    push hl
    pop de
    pop hl
    ld a, [hl+]
    call Call_000_240e
    inc de
    ld a, [hl]
    call Call_000_240e
    pop de
    pop hl
    pop bc
    dec c
    jr nz, jr_001_7133

    xor a
    jp Jump_001_6ef6


    db $e4
    sbc b
    inc b
    sbc c
    and $98
    ld b, $99
    add sp, -$68
    ld [$ea99], sp
    sbc b
    ld a, [bc]
    sbc c
    db $ec
    sbc b
    inc c
    sbc c
    xor $98
    ld c, $99

Call_001_7184:
    ld a, [$7576]
    jr jr_001_718b

Call_001_7189:
    ld a, $ff

jr_001_718b:
    push af
    ld de, $99a2
    ld a, [passwordLetter]
    ld h, $00
    ld l, a
    add hl, de
    push hl
    pop de
    pop af
    call Call_000_240e
    ret


    ld de, $9800
    ld hl, passwordGetTiles
    call Call_000_0756
    ld hl, currentPassword1
    call Call_001_728b
    ld c, $06
    ld hl, currentPassword1
    ld de, $0408

jr_001_71b4:
    push bc
    ld a, [hl+]
    push hl
    ld hl, $76e3
    add a
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    push bc
    pop hl
    call Call_001_72ce
    inc d
    inc d
    pop hl
    pop bc
    dec c
    jr nz, jr_001_71b4

    ld a, $01
    ld d, $01
    call Call_000_2df8
    ld a, $93
    ldh [rLCDC], a

jr_001_71da:
    call Call_001_6ca6
    ld a, c
    or a
    jr z, jr_001_71da

jr_001_71e1:
    call Call_001_6cac
    ldh a, [$9c]
    and $09
    jr nz, jr_001_71ec

    jr jr_001_71e1

jr_001_71ec:
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_001_71f3:
    call Call_001_6ca6
    ld a, c
    or a
    jr z, jr_001_71f3

    ret


Call_001_71fb:
    push bc
    push de
    push hl
    ld b, $06

Call_001_7200:
    ld de, passwordStore

LoadCheckPassword_SPCLST::
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, LoadCheckPassword_SPCLST

    ld hl, passwordStore
    ld de, PASSWORD_SPCLST
    ld b, $06

CheckPassword_SPCLST::
    ld a, [de]
    cp [hl]
    jr nz, LoadCheckPassword_JSSJSS

    inc de
    inc hl
    dec b
    jr nz, CheckPassword_SPCLST

    ld a, $32
    ld [playerLives], a
    ld a, $08
    ld [currentStage], a
    xor a
    jr jr_001_7283

LoadCheckPassword_JSSJSS::
    ld hl, passwordStore
    ld de, PASSWORD_JSSJSS
    ld b, $06

CheckPassword_JSSJSS::
    ld a, [de]
    cp [hl]
    jr nz, CheckPassword_ValidStage

    inc de
    inc hl
    dec b
    jr nz, CheckPassword_JSSJSS

    ld a, $32
    ld [playerLives], a
    ld a, $00
    ld [currentStage], a
    xor a
    jr jr_001_7283

CheckPassword_ValidStage::
    ld hl, passwordStore
    ld a, [hl+]
    add [hl]
    inc hl
    add [hl]
    inc hl
    add [hl]
    inc hl
    ld b, a
    swap a
    and $0f
    cp [hl]
    jr nz, jr_001_7287

    inc hl
    ld a, b
    and $0f
    cp [hl]
    jr nz, jr_001_7287

    ld hl, passwordStore
    ld a, [hl+]
    ld c, a
    xor [hl]
    inc hl
    cp $08
    jr nc, jr_001_7287

    cp $00
    jr z, jr_001_7287

    ld [currentStage], a
    ld a, c
    xor [hl]
    inc hl
    swap a
    ld b, a
    ld a, c
    xor [hl]
    or b
    cp $64
    jr nc, jr_001_7287

    ld a, $05
    ld [playerLives], a
    xor a

jr_001_7283:
    pop hl
    pop de
    pop bc
    ret


jr_001_7287:
    ld a, $01
    jr jr_001_7283

Call_001_728b:
    push af
    push bc
    push de
    push hl
    call Call_000_24cd
    push hl
    push hl
    ld b, a
    and $0f
    ld [hl+], a
    ld d, a
    ld c, a
    ld a, [currentStage]
    xor c
    and $0f
    ld [hl+], a
    ld a, [playerLives]
    swap a
    and $0f
    xor d
    and $0f
    ld [hl+], a
    ld a, [playerLives]
    and $0f
    xor d
    and $0f
    ld [hl+], a
    pop hl
    xor a
    ld a, [hl+]
    add [hl]
    inc hl
    add [hl]
    inc hl
    add [hl]
    inc hl
    ld b, a
    swap a
    and $0f
    ld [hl+], a
    ld a, b
    and $0f
    ld [hl], a
    pop hl
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_001_72ce:
    push af
    push bc
    push de
    push hl
    call Call_000_087e
    ld a, [hl+]
    ld [passwordStore], a
    ld a, [hl+]
    ld b, a

Jump_001_72db:
    ld a, [passwordStore]
    ld c, a

Jump_001_72df:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jp nz, Jump_001_72df

    push hl
    ld a, [passwordStore]
    ld l, a
    ld a, $20
    sub l
    ld l, a
    ld h, $00
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jp nz, Jump_001_72db

    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    call Call_000_0896
    ld a, [hl+]
    ld [passwordStore], a
    ld a, [hl+]
    ld b, a

Jump_001_730d:
    ld a, [passwordStore]
    ld c, a

Jump_001_7311:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jp nz, Jump_001_7311

    push hl
    ld a, [passwordStore]
    ld l, a
    ld a, $20
    sub l
    ld l, a
    ld h, $00
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jp nz, Jump_001_730d

    pop hl
    pop de
    pop bc
    pop af
    ret


PASSWORD_SPCLST::
    db $0e, $0b, $01, $08, $0e, $0f

PASSWORD_JSSJSS::
    db $06, $0e, $0e, $06, $0e, $0e

passwordEntryScreenTiles::
    db $14, $12
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ad, $ae, $af, $b0, $b1, $b2
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $cc, $cd, $ce, $cf, $d0, $d1, $d2
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e5, $e6, $e7, $e8, $e9, $ea
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e0, $e1, $e2, $e3, $e4, $ff
    db $ff, $ff, $ff, $ff, $ff, $a7, $a0, $a1, $a2, $a2, $a3, $a4, $a5, $a6, $a7, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $c7, $c0, $c1, $c2, $c2, $c3, $c4, $c5, $c6, $c7, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $a8, $a9, $a8, $a9, $a8, $a9, $a8, $a9, $a8, $a9, $a8, $a9, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $c8, $c9, $c8, $c9, $c8, $c9, $c8, $c9, $c8, $c9, $c8, $c9, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $81, $82, $83, $85, $86, $87, $89, $8a, $8b, $8c, $8d, $8f, $90, $91, $92, $93, $9a, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff


passwordEntryTiles::
    db $02, $02
    db $02, $03, $22, $23

    db $02, $02
    db $06, $07, $26, $27
    
    db $02, $02
    db $0a, $0b, $2a, $2b

    db $02, $02
    db $0e, $0f, $2e, $2f
    
    db $02, $02
    db $12, $13, $32, $33
    
    db $02, $02
    db $16, $17, $36, $37
    
    db $02, $02
    db $1a, $1b, $3a, $3b

    db $02, $02
    db $1e, $1f, $3e, $3f

    db $02, $02
    db $42, $43, $62, $63

    db $02, $02
    db $46, $47, $66, $67
    
    db $02, $02
    db $4a, $4b, $6a, $6b

    db $02, $02
    db $4e, $4f, $6e, $6f

    db $02, $02
    db $52, $53, $72, $73

    db $02, $02
    db $56, $57, $76, $77
    
    db $02, $02
    db $5a, $5b, $7a, $7b

    db $02, $02
    db $5e, $5f, $7e, $7f

    db $02, $02
    db $aa, $ab, $ca, $cb

    ;password B
    db $02, $02
    db $00, $01, $20, $21

    ;password C
    db $02, $02
    db $04, $05, $24, $25

    ;password D
    db $02, $02
    db $08, $09, $28, $29

    ;password F
    db $02, $02
    db $0c, $0d, $2c, $2d

    ;password G
    db $02, $02
    db $10, $11, $30, $31

    ;password H
    db $02, $02
    db $14, $15, $34, $35

    ;password J
    db $02, $02
    db $18, $19, $38, $39

    ;password K
    db $02, $02
    db $1c, $1d, $3c, $3d

    ;password L
    db $02, $02
    db $40, $41, $60, $61

    ;password M
    db $02, $02
    db $44, $45, $64, $65

    ;password N
    db $02, $02
    db $48, $49, $68, $69

    ;password P
    db $02, $02
    db $4c, $4d, $6c, $6d

    ;password Q
    db $02, $02
    db $50, $51, $70, $71

    ;password R
    db $02, $02
    db $54, $55, $74, $75
    
    ;password S
    db $02, $02
    db $58, $59, $78, $79
    
    ;password T
    db $02, $02
    db $5c, $5d, $7c, $7d
    
    ;password Empty
    db $02, $02
    db $a8, $a9, $c8, $c9
    
    ;password Cursor
    db $01, $01
    db $ac


passwordGetTiles::
    db $14, $12
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $a7, $a0, $a1, $a2, $a2, $a3, $a4, $a5, $a6, $a7, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $c7, $c0, $c1, $c2, $c2, $c3, $c4, $c5, $c6, $c7, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $aa, $ab, $aa, $ab, $aa, $ab, $aa, $ab, $aa, $ab, $aa, $ab, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ca, $cb, $ca, $cb, $ca, $cb, $ca, $cb, $ca, $cb, $ca, $cb, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $eb, $ec, $ed, $ee, $ef, $f2, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

def passwordB EQU passwordEntryTiles+$66
def passwordC EQU passwordEntryTiles+$6C
def passwordD EQU passwordEntryTiles+$72
def passwordF EQU passwordEntryTiles+$78
def passwordG EQU passwordEntryTiles+$7E
def passwordH EQU passwordEntryTiles+$84
def passwordJ EQU passwordEntryTiles+$8A
def passwordK EQU passwordEntryTiles+$90
def passwordL EQU passwordEntryTiles+$96
def passwordM EQU passwordEntryTiles+$9C
def passwordN EQU passwordEntryTiles+$A2
def passwordP EQU passwordEntryTiles+$A8
def passwordQ EQU passwordEntryTiles+$AE
def passwordR EQU passwordEntryTiles+$B4
def passwordS EQU passwordEntryTiles+$BA
def passwordT EQU passwordEntryTiles+$C0
passwordSpritePointers::
    dw $733e
    dw $74a8
    dw $74ae
    dw $74b4
    dw $74ba
    dw $74c0
    dw $74c6
    dw $74cc
    dw $74d2
    dw $74d8
    dw $74de
    dw $74e4
    dw $74ea
    dw $74f0
    dw $74f6
    dw $74fc
    dw $7502
    dw $7508
    dw passwordB
    dw passwordC
    dw passwordD
    dw passwordF
    dw passwordG
    dw passwordH
    dw passwordJ
    dw passwordK
    dw passwordL
    dw passwordM
    dw passwordN
    dw passwordP
    dw passwordQ
    dw passwordR
    dw passwordS
    dw passwordT
    dw $756e
    dw $7574
    dw $7577

bank1pad:: ds 2261