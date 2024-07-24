; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_0377


    nop
    nop
    nop
    nop
    nop

RST_08::
    jp $f080


Call_000_000b:
    nop
    nop
    nop
    nop
    nop

RST_10::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_18::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_20::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_28::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_30::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_0238


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_2f43


    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_0c10


    nop
    nop
    nop
    nop
    nop

SerialTransferCompleteInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00f2:
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00f8:
    nop
    nop

Call_000_00fa:
    nop
    nop
    nop

Call_000_00fd:
    nop

Jump_000_00fe:
    nop

Jump_000_00ff:
    nop

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "CHALVO55", $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $38, $4b

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $04

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $05

HeaderGlobalChecksum::
    db $a7, $aa

Jump_000_0150:
    call Call_000_0383
    ld sp, $cfff
    call Call_000_02f5
    call Call_000_03a3
    ld hl, $c000
    ld bc, $2000

jr_000_0162:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0162

    ld a, $cc

Call_000_016b:
    ld [$cbc1], a
    ld [$cbc3], a
    ld a, $00
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld bc, $0400
    ld hl, $9c00

jr_000_0188:
    ld a, $80
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0188

    ld a, $32
    ldh [rWX], a
    ldh [rWY], a
    xor a
    ld [$ca0e], a
    ld [$ca0f], a
    ld a, $c0
    ld [$c802], a
    ld a, $1e
    ldh [rBGP], a
    ld [$c80d], a
    ldh [rOBP0], a
    ld [$c80e], a
    ld a, $04
    ldh [rOBP1], a
    ld [$c80f], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    ld a, $01
    ldh [$a3], a
    ld a, $d3
    ldh [rLCDC], a
    ld bc, $2000
    ld hl, $2000
    ld a, $0a
    ld [hl], a
    ld a, $01
    ld [hl], a
    call Call_000_08df
    ei

jr_000_01d4:
    call Call_000_0c2e
    ld a, [$c80b]
    cp $0a
    jr nz, jr_000_01eb

    ld a, [$c80c]
    cp $03
    jr z, jr_000_01eb

    cp $09
    jr z, jr_000_01eb

    jr jr_000_01ee

jr_000_01eb:
    call Call_000_02c4

jr_000_01ee:
    ;mainloop??
    call Call_000_3594
    call Call_000_0c2e
    ld a, $03
    ld hl, $4000
    call Call_000_08ae
    call Call_000_0c2e
    call Call_000_04e7
    ld hl, $cb2c
    bit 5, [hl]
    jr nz, jr_000_0232

    ld a, [$c80b]
    cp $0a
    jr nz, jr_000_0220

    ld a, [$c80c]
    cp $03
    jr nz, jr_000_0220

    ld hl, $ffa1
    bit 1, [hl]
    jr z, jr_000_0225

    jr jr_000_0230

jr_000_0220:
    ld hl, $ffa1
    set 0, [hl]

jr_000_0225:
    db $76

jr_000_0226:
    call Call_000_0c2e
    ld hl, $ffa1
    bit 1, [hl]
    jr z, jr_000_0226

jr_000_0230:
    res 1, [hl]

jr_000_0232:
    ld hl, $c81d
    inc [hl]
    jr jr_000_01d4

Jump_000_0238:
    di
    push af
    push bc
    push de
    push hl
    ld hl, $cb2c
    bit 5, [hl]
    jr nz, jr_000_0252

    ld a, [$c80b]
    cp $0a
    jr nz, jr_000_0257

Call_000_024b:
    ld a, [$c80c]
    cp $03
    jr nz, jr_000_0257

jr_000_0252:
    ld hl, $ffa1
    jr jr_000_025e

jr_000_0257:
    ld hl, $ffa1
    bit 0, [hl]
    jr z, jr_000_02be

jr_000_025e:
    res 0, [hl]
    ld a, [$c802]
    cp $c0
    jr z, jr_000_0276

    call $ff80
    ld a, [$c805]
    ldh [rSCX], a
    ld a, [$c806]
    ldh [rSCY], a
    jr jr_000_0283

jr_000_0276:
    call $ff90
    ld a, [$c807]
    ldh [rSCX], a
    ld a, [$c808]
    ldh [rSCY], a

jr_000_0283:
    ld a, [$cbbf]
    and a
    jr z, jr_000_02b6

    cp $25
    jr c, jr_000_0291

    ld d, $24
    jr jr_000_0292

jr_000_0291:
    ld d, a

jr_000_0292:
    ld e, d
    ld a, [$cbc0]
    ld l, a
    ld a, [$cbc1]
    ld h, a

jr_000_029b:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [bc], a
    inc hl
    res 1, h
    dec d
    jr nz, jr_000_029b

    ld a, [$cbbf]
    sub e
    ld [$cbbf], a
    ld a, l
    ld [$cbc0], a
    ld a, h
    ld [$cbc1], a

jr_000_02b6:
    xor a
    ldh [rLYC], a
    ld hl, $ffa1
    set 1, [hl]

jr_000_02be:
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti


Call_000_02c4:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

Call_000_02de:
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [$9b]
    xor c
    and c
    ldh [$9c], a
    ld a, c
    ldh [$9b], a
    ld a, $30

Call_000_02f2:
    ldh [rP1], a
    ret


Call_000_02f5:
    ld c, $80
    ld b, $0a
    ld hl, $0310

jr_000_02fc:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_02fc

    ld c, $90
    ld b, $0a
    ld hl, $031a

jr_000_0309:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0309

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_0316:
    dec a
    jr nz, jr_000_0316

    ret


    ld a, $ce
    ldh [rDMA], a
    ld a, $28

jr_000_0320:
    dec a
    jr nz, jr_000_0320

    ret


    ldh a, [$9d]
    sub $10
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    ld hl, $9800
    ld b, $20

jr_000_0337:
    add hl, de
    dec b
    jr nz, jr_000_0337

    ldh a, [$9e]
    sub $08
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    add hl, de
    ld a, h
    ldh [$9f], a
    ld a, l
    ldh [$a0], a
    ret


    ldh a, [$9f]
    ld d, a
    ldh a, [$a0]
    ld e, a
    ld b, $04

jr_000_0359:
    rr d
    rr e
    dec b
    jr nz, jr_000_0359

    ld a, e
    sub $84
    and $fe
    rlca
    rlca
    add $08
    ldh [$9d], a
    ldh a, [$a0]
    and $1f
    rla
    rla
    rla
    add $08
    ldh [$9e], a
    ret


Jump_000_0377:
    add a
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    jp hl


Call_000_0383:
    ldh a, [rIE]
    ldh [$a2], a
    res 0, a

jr_000_0389:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_0389

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ldh a, [$a2]
    ldh [rIE], a
    ret


jr_000_039a:
    ld a, $00
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_039a

    ret


Call_000_03a3:
    ld hl, $9bff
    ld bc, $0400

jr_000_03a9:
    ld a, $ff
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_03a9

    ret


Call_000_03b2:
jr_000_03b2:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_03b2

    ret


jr_000_03bb:
    inc de
    ld h, a
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    call Call_000_03cb
    ld a, [de]
    cp $00
    jr nz, jr_000_03bb

    ret


Call_000_03cb:
    push af
    and $3f
    ld b, a
    pop af
    rlca
    rlca
    and $03
    jr z, jr_000_03de

    dec a
    jr z, jr_000_03e5

    dec a
    jr z, jr_000_03ec

    jr jr_000_03f9

jr_000_03de:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_03de

    ret


jr_000_03e5:
    ld a, [de]
    inc de

jr_000_03e7:
    ld [hl+], a
    dec b
    jr nz, jr_000_03e7

    ret


jr_000_03ec:
    ld a, [de]
    ld [hl], a
    inc de
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_03ec

    ret


jr_000_03f9:
    ld a, [de]
    ld [hl], a
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_03f9

    inc de
    ret


Call_000_0406:
    push bc
    push de
    push hl
    ld b, a
    ld a, [$c9ff]
    push af
    ld a, [$ca02]
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, [currentPassword]
    ld l, a
    ld h, $00
    ld a, $08
    call Call_000_04a5
    ld a, [$ca00]
    ld e, a
    ld a, [$ca01]
    ld d, a
    push de
    add hl, de
    xor a
    cp b
    jr z, jr_000_0445

jr_000_0439:
    dec b
    jr z, jr_000_043f

    inc hl
    jr jr_000_0439

jr_000_043f:
    ld a, [hl]
    ld [currentPassword], a
    jr jr_000_045d

jr_000_0445:
    ld bc, $0004
    add hl, bc
    ld a, [hl+]
    ld [currentPassword], a
    ld b, a
    ld a, [hl+]
    swap a
    ld [cursorIndex], a
    ld a, [hl]
    swap a
    ld [passwordLetter], a
    ld a, b
    jr jr_000_045d

jr_000_045d:
    push af
    ld hl, $0100
    call Call_000_04a5
    ld de, $4000
    add hl, de
    ld a, l
    ld [$c9f5], a
    ld a, h
    ld [$c9f6], a
    pop af
    ld hl, $0008
    call Call_000_04a5
    pop de
    add hl, de
    ld de, $0007
    add hl, de
    ld d, [hl]
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, d
    pop hl
    pop de
    pop bc
    ret


Call_000_0493:
    push af
    ld [currentPassword], a
    ld a, l
    ld [$ca00], a
    ld a, h
    ld [$ca01], a
    ld a, d
    ld [$ca02], a
    pop af
    ret


Call_000_04a5:
    push bc
    push de
    push af
    push hl
    pop de
    ld hl, $0000
    ld b, $08

jr_000_04af:
    add hl, hl
    add a
    jr nc, jr_000_04b4

    add hl, de

jr_000_04b4:
    dec b
    jr nz, jr_000_04af

    pop af
    pop de
    pop bc
    ret


    push bc
    push af
    ld a, $10
    ld c, e
    ld b, d
    push hl
    pop de
    ld hl, $0000

jr_000_04c6:
    sla e
    rl d
    rl l
    rl h
    push de
    ld d, a
    ld a, l
    sbc c
    ld h, a
    ld a, h
    sbc b
    ld l, a
    ld a, d
    pop de
    inc e
    jr nc, jr_000_04dd

    dec e
    add hl, bc

jr_000_04dd:
    dec a
    jr nz, jr_000_04c6

    push hl
    push de
    pop hl
    pop de
    pop af
    pop bc
    ret


Call_000_04e7:
    push af
    push bc
    push de
    push hl
    ld a, [$c9fe]
    or a
    jp z, Jump_000_050c

    ld hl, $ca10
    ld c, $08

Jump_000_04f7:
    push bc
    ld a, [hl+]
    bit 2, a
    jp nz, Jump_000_0557

    bit 0, a
    jp nz, Jump_000_0511

    ld de, $001f
    add hl, de

Jump_000_0507:
    pop bc
    dec c
    jp nz, Jump_000_04f7

Jump_000_050c:
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_0511:
    bit 7, a
    jp nz, Jump_000_0635

    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld bc, $0005

Jump_000_051e:
    ld a, [hl+]
    cp b
    jp nz, Jump_000_0532

    dec c
    jp nz, Jump_000_051e

    pop hl
    dec hl
    xor a
    ld [hl], a
    ld de, $0020
    add hl, de
    jp Jump_000_0507


Jump_000_0532:
    push bc
    dec hl
    dec a
    ld [hl], a
    jp nz, Jump_000_054e

    pop bc
    ld hl, $058d
    add hl, bc
    ld a, [hl]
    pop hl
    push hl
    ld c, a
    add hl, bc
    call Call_000_0570
    pop hl
    ld de, $001f
    add hl, de
    jp Jump_000_0507


Jump_000_054e:
    pop bc
    pop hl
    ld de, $001f
    add hl, de
    jp Jump_000_0507


Jump_000_0557:
    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld bc, $0005
    add hl, bc
    call Call_000_0570
    pop hl
    dec hl
    ld a, [hl]
    and $83
    ld [hl], a
    ld bc, $0020
    add hl, bc
    jp Jump_000_0507


Call_000_0570:
    ld a, [hl+]
    call Call_000_240e
    inc de
    ld a, [hl+]
    call Call_000_240e
    ld bc, $001f
    push hl
    push de
    pop hl
    add hl, bc
    push hl
    pop de
    pop hl
    ld a, [hl+]
    call Call_000_240e
    inc de
    ld a, [hl+]
    call Call_000_240e
    ret


    nop
    dec de
    rla
    inc de
    rrca
    dec bc

Call_000_0593:
    push bc
    push de
    push hl
    push af
    push hl
    push de
    ld hl, $ca10
    ld de, $0020
    ld b, $08
    ld c, $00

jr_000_05a3:
    ld a, [hl]
    or a
    jr z, jr_000_05b3

    add hl, de
    inc c
    dec b
    jr nz, jr_000_05a3

    pop de
    pop hl
    pop af
    ld a, $ff
    jr jr_000_0615

jr_000_05b3:
    ld a, c
    ld [$c990], a
    push hl
    pop bc
    pop de
    ld a, e
    ld [passwordStore], a
    ld a, d
    ld [$c98f], a
    pop hl
    pop af
    ld e, a
    ld a, [$c9ff]
    push af
    ld a, e
    push af
    and $7f
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    push bc
    ld e, $20

jr_000_05df:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_05df

    pop hl
    push hl
    inc hl
    ld a, [passwordStore]
    ld [hl+], a
    ld a, [$c98f]
    ld [hl+], a
    pop hl
    pop af
    bit 7, a
    jp z, Jump_000_05fc

    ld a, $85
    jp Jump_000_05fe


Jump_000_05fc:
    ld a, $05

Jump_000_05fe:
    ld [hl], a
    ld [$c9fe], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, [$c990]

jr_000_0615:
    pop hl
    pop de
    pop bc
    ret


Call_000_0619:
    ld hl, $ca10
    ld de, $0100

jr_000_061f:
    xor a
    ld [hl+], a
    dec de
    ld a, d
    or e
    jr nz, jr_000_061f

    xor a
    ld [$c9fe], a
    ret


    push af

jr_000_062c:
    nop
    ldh a, [rSTAT]
    cp $03
    jr z, jr_000_062c

    pop af
    ret


Jump_000_0635:
    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld bc, $0005

Jump_000_063d:
    ld a, [hl+]
    cp b
    jp nz, Jump_000_0532

    dec c
    ld a, c
    cp $01
    jp nz, Jump_000_063d

    pop hl
    dec hl
    push hl
    push hl
    pop de
    ld bc, $001c
    add hl, bc
    inc de
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ld de, $0020
    add hl, de
    jp Jump_000_0507


    push af
    push de
    push hl
    ld hl, $0020
    call Call_000_04a5
    ld de, $ca10
    add hl, de
    ld a, [hl]
    or $02
    ld [hl], a
    pop hl
    pop de
    pop af
    ret


    push af
    push de
    push hl
    ld hl, $0020
    call Call_000_04a5
    ld de, $ca10
    add hl, de
    ld a, [hl]
    and $fd
    ld [hl], a
    pop hl
    pop de
    pop af
    ret


Call_000_0693:
    push af
    push de
    push hl
    ld hl, $0020
    call Call_000_04a5
    ld de, $ca10
    add hl, de
    xor a
    ld [hl], a
    pop hl
    pop de
    pop af
    ret


    push de
    push hl
    ld hl, $0020
    call Call_000_04a5
    ld de, $ca10
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    ld a, e
    rra
    ccf
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    ld a, d
    ld a, e
    rra
    ccf
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    ld a, d
    ld a, e
    rra
    ccf
    ld a, [hl]
    ld a, a
    sbc [hl]
    sbc a
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    sub d
    sub e
    ld [hl], b
    ld [hl], c
    sub b
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_06f0:
    rst $38
    rst $38
    rst $38

Call_000_06f3:
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [$0808], sp
    ld [$7600], sp
    ld [hl], a
    ld a, b
    ld a, c
    ld a, h
    ld a, l
    sbc h
    sbc l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, h
    ld a, l
    sbc h
    sbc l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld [$0808], sp
    ld [$0000], sp
    nop
    inc d
    inc b
    ld [$0004], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld l, [hl]
    ld l, a
    adc [hl]
    adc a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld l, [hl]
    ld l, a
    adc [hl]
    adc a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    inc d
    inc b
    ld [$0004], sp
    nop
    nop
    dec b
    ld [bc], a
    inc b
    nop
    nop
    ldh [$e1], a
    ld [c], a
    rst $38
    or [hl]
    or a
    sub $d7
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0756:
    push af
    push bc
    push de
    push hl
    inc hl
    inc hl
    ld b, $12

jr_000_075e:
    ld c, $14

jr_000_0760:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0760

    push hl
    ld hl, $000c
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jr nz, jr_000_075e

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_0776:
    push af
    push bc
    push de
    push hl
    inc hl
    inc hl
    ld b, $20

jr_000_077e:
    ld c, $20

jr_000_0780:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0780

    dec b
    jr nz, jr_000_077e

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_078e:
    push af
    push bc
    push de
    push hl
    call Call_000_087e
    ld a, [hl+]
    ld [passwordStore], a
    ld a, [hl+]
    ld b, a

Jump_000_079b:
    ld a, [passwordStore]
    ld c, a

Jump_000_079f:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jp nz, Jump_000_079f

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
    jp nz, Jump_000_079b

    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    call Call_000_0862
    ld a, [hl+]
    ld [passwordStore], a
    ld a, [hl+]
    ld b, a

Jump_000_07cd:
    ld a, [passwordStore]
    ld c, a

Jump_000_07d1:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jp nz, Jump_000_07d1

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
    jp nz, Jump_000_07cd

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_07f0:
    push af
    push bc
    push de
    push hl
    call Call_000_0896
    ld a, [hl+]
    ld [passwordStore], a
    ld a, [hl+]
    ld b, a

Jump_000_07fd:
    ld a, [passwordStore]
    ld c, a

Jump_000_0801:
    ld a, [hl+]
    call Call_000_240e
    inc de
    dec c
    jp nz, Jump_000_0801

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
    jp nz, Jump_000_07fd

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_0822:
    push af
    push bc
    push de
    push hl
    ld a, d
    ldh [$9e], a
    ld a, e
    ldh [$9d], a
    push de
    push hl
    call Call_000_0862
    pop hl
    pop de
    ldh a, [$9f]
    ld d, a
    ldh a, [$a0]
    ld e, a
    ld a, [hl+]
    ld [passwordStore], a
    ld a, [hl+]
    ld b, a

Jump_000_083f:
    ld a, [passwordStore]
    ld c, a

Jump_000_0843:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jp nz, Jump_000_0843

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
    jp nz, Jump_000_083f

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_0862:
    ldh a, [$9d]
    ld hl, $9c00
    ld de, $0020
    and a
    jp z, Jump_000_0873

Jump_000_086e:
    add hl, de
    dec a
    jp nz, Jump_000_086e

Jump_000_0873:
    ldh a, [$9e]
    ld e, a
    add hl, de
    ld a, h
    ldh [$9f], a
    ld a, l
    ldh [$a0], a
    ret


Call_000_087e:
    push af
    push bc
    push hl
    ld a, e
    ld hl, $0020
    call Call_000_04a5
    ld c, d
    ld b, $00
    add hl, bc
    ld bc, $9800
    add hl, bc
    push hl
    pop de
    pop hl
    pop bc
    pop af
    ret


Call_000_0896:
    push af
    push bc
    push hl
    ld a, e
    ld hl, $0020
    call Call_000_04a5
    ld c, d
    ld b, $00
    add hl, bc
    ld bc, $9c00
    add hl, bc
    push hl
    pop de
    pop hl
    pop bc
    pop af
    ret


Call_000_08ae:
    push af
    push de
    push hl
    
    ld d, a
    ld a, [$c9ff]
    push af
    ld a, d
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld de, $08cb
    push de
    jp hl


    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    pop hl
    pop de
    pop af
    ret


Call_000_08df:
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [rNR51], a
    xor a
    ldh [rNR50], a
    call Call_000_0a8c
    call Call_000_0ad7
    ld a, $00
    ld hl, $ff06
    ld [hl], a
    ld a, $00
    ld hl, $ff07
    ld [hl], a
    set 2, [hl]
    ld hl, $ffff
    set 2, [hl]
    ret


Call_000_0903:
    push hl
    push de
    push af
    call Call_000_0a8c
    pop af
    ld h, $00
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $094e
    add hl, de
    ld a, [hl+]
    ld [$cb2d], a
    ld a, [hl+]
    ld [$cb32], a
    ld a, [hl+]
    ld [$cb33], a
    ld a, [hl+]
    ld [$cb4b], a
    ld a, [hl+]
    ld [$cb4c], a
    ld a, [hl+]
    ld [$cb63], a
    ld a, [hl+]
    ld [$cb64], a
    ld a, [hl+]
    ld [$cb79], a
    ld a, [hl+]
    ld [$cb7a], a
    call Call_000_0ad7
    ld a, $ff
    ldh [rNR51], a
    ld a, $77
    ldh [rNR50], a
    ld a, $0f
    ld [$cb2e], a
    pop de
    pop hl
    ret


    ld a, [de]
    nop
    ld b, b
    dec sp
    ld b, c
    adc b
    ld b, d
    sub $43
    ld a, [de]
    jr nz, jr_000_09ae

    ld l, c
    ld d, [hl]
    db $e4
    ld e, b
    ld l, l
    ld e, e
    dec de
    ld [hl], d
    ld e, b
    ld l, a
    ld e, e
    and $5e
    pop af
    ld h, b
    dec de
    rst $20
    ld c, b
    cp [hl]
    ld c, d
    ld [hl+], a
    ld c, l
    inc bc
    ld c, a
    dec de
    ret z

    ld d, b
    ld h, [hl]
    ld d, d
    ld [hl], $54
    inc hl
    ld d, [hl]
    inc e
    ld l, h
    ld d, a
    jr jr_000_09da

    ldh a, [$5c]
    ld [hl], c
    ld e, [hl]
    dec de
    jr nz, @+$66

    xor c
    ld h, l
    ld h, [hl]
    ld h, a
    cp a
    ld l, b
    dec de
    adc b
    ld b, c
    ld a, [de]
    ld b, e
    rst $38
    ld b, h
    add [hl]
    ld b, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c
    ld c, l
    ld e, e
    ld c, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c
    ld c, l
    ld e, e
    ld c, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c

jr_000_09ae:
    ld c, l
    ld e, e
    ld c, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c
    ld c, l
    ld e, e
    ld c, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c
    ld c, l
    ld e, e
    ld c, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c
    ld c, l
    ld e, e
    ld c, [hl]
    ld a, [de]
    ld d, l
    ld b, l
    sub e
    ld c, h
    ld a, c
    ld c, l
    ld e, e
    ld c, [hl]
    dec de
    cp l
    ld l, e
    ld d, c
    ld l, [hl]

jr_000_09da:
    ld a, a
    ld l, a
    call nz, $1a70
    rst $28
    ld c, a
    dec h
    ld d, b
    ld d, a
    ld d, b
    adc b
    ld d, b
    ld a, [de]
    adc c
    ld d, b
    bit 2, b
    add hl, bc
    ld d, c
    ld b, e
    ld d, c
    ld a, [de]
    ld b, a
    ld d, c
    add b
    ld d, c
    call $3151
    ld d, d
    ld a, [de]
    ld a, e
    ld d, d
    db $fc
    ld d, d
    db $76
    ld d, e

Jump_000_0a00:
    inc e
    ld d, h
    ld a, [de]
    cp [hl]
    ld e, l
    ld h, a
    ld h, b
    call c, $e462
    ld h, h
    dec de
    ld e, c
    ld l, d
    xor l
    ld l, d
    db $fd
    ld l, d
    ld c, h
    ld l, e
    dec de
    nop
    ld b, b
    ld c, [hl]
    ld b, b
    sbc b
    ld b, b
    add hl, hl
    ld b, c
    inc e
    and $60
    ld [hl+], a
    ld h, e
    ld e, [hl]
    ld h, h
    add sp, $65
    inc e
    ld a, c
    ld c, h
    and [hl]
    ld c, h
    jp nc, $e84c

    ld c, h
    inc e
    db $fc
    ld c, h
    add hl, hl
    ld c, l
    ld d, l
    ld c, l
    ld l, e
    ld c, l
    inc e
    ld a, a
    ld c, l
    reti


    ld c, l
    db $10
    ld c, a
    ld b, c
    ld c, a
    inc e
    nop
    ld b, b
    jp Jump_000_2141


    ld b, e
    inc sp
    ld b, h
    inc e
    cp a
    ld b, a
    or e
    ld c, b
    add h
    ld c, c
    dec e
    ld c, e
    inc e
    sub a
    ld c, a
    ccf
    ld d, c
    add hl, sp
    ld d, e
    add h
    ld d, h
    inc e
    ld c, d
    ld l, d
    ld a, d
    ld l, d
    xor c
    ld l, d
    cp a
    ld l, d

Call_000_0a65:
    ld a, [$cb2e]
    and $f0
    set 6, a
    ld [$cb2e], a
    xor a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ret


Call_000_0a79:
    ld a, [$cb2e]
    or $0f
    res 6, a
    ld [$cb2e], a
    ret


Call_000_0a84:
    ld [$cb2f], a
    xor a
    ld [$cb30], a
    ret


Call_000_0a8c:
    xor a
    ld [$cb2e], a
    ld a, $08
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR42], a
    ld a, $80
    ldh [rNR14], a
    ldh [rNR24], a
    ldh [rNR44], a
    ldh [rNR30], a
    xor a
    ldh [rNR32], a
    ret


Call_000_0aa6:
    cp $04
    jr z, jr_000_0ac1

    ld a, h
    ld [$cb92], a
    ld a, l
    ld [$cb91], a
    ld a, $01
    ld [$cb93], a
    ld [$cb94], a
    ld hl, $cb2e
    set 4, [hl]
    jr jr_000_0ad6

jr_000_0ac1:
    ld a, h
    ld [$cbab], a
    ld a, l
    ld [$cbaa], a
    ld a, $01
    ld [$cbac], a
    ld [$cbad], a
    ld hl, $cb2e
    set 5, [hl]

jr_000_0ad6:
    ret


Call_000_0ad7:
    ld a, $01
    ld [$cb34], a
    ld [$cb35], a
    ld a, $0f
    ld [$cb41], a
    ld a, $11
    ld [$cb45], a
    xor a
    ld [$cb42], a
    ld [$cb43], a
    ld [$cb39], a
    ld [$cb3b], a
    ld [$cb3d], a
    ld [$cb3e], a
    ld [$cb44], a
    ld [$cb46], a
    ld [$cb47], a
    ld [$cb48], a
    ld [$cb49], a
    ld [$cb4a], a
    ld a, $01
    ld [$cb4d], a
    ld [$cb4e], a
    ld a, $0f
    ld [$cb5a], a
    ld a, $22
    ld [$cb5e], a
    xor a
    ld [$cb5b], a
    ld [$cb5c], a
    ld [$cb52], a
    ld [$cb54], a
    ld [$cb56], a
    ld [$cb57], a
    ld [$cb5d], a
    ld [$cb5f], a
    ld [$cb60], a
    ld [$cb61], a
    ld [$cb62], a
    ld a, $01
    ld [$cb65], a
    ld [$cb66], a
    ld a, $20
    ld [$cb72], a
    ld a, $44
    ld [$cb75], a
    xor a
    ld [$cb73], a
    ld [$cb6a], a
    ld [$cb6c], a
    ld [$cb6e], a
    ld [$cb6f], a
    ld [$cb74], a
    ld [$cb76], a
    ld [$cb77], a
    ld [$cb78], a
    ld a, $01
    ld [$cb7b], a
    ld [$cb7c], a
    ld a, $0f
    ld [$cb88], a
    ld a, $88
    ld [$cb8c], a
    xor a
    ld [$cb89], a
    ld [$cb8a], a
    ld [$cb80], a
    ld [$cb82], a
    ld [$cb84], a
    ld [$cb85], a
    ld [$cb8b], a
    ld [$cb8d], a
    ld [$cb8e], a
    ld [$cb8f], a
    ld [$cb90], a
    ld a, $01
    ld [$cb93], a
    ld [$cb94], a
    ld a, $0f
    ld [$cba0], a
    ld a, $11
    ld [$cba4], a
    xor a
    ld [$cba1], a
    ld [$cba2], a
    ld [$cb98], a
    ld [$cb9a], a
    ld [$cb9c], a
    ld [$cb9d], a
    ld [$cba3], a
    ld [$cba5], a
    ld [$cba6], a
    ld [$cba7], a
    ld [$cba8], a
    ld [$cba9], a
    ld a, $01
    ld [$cbac], a
    ld [$cbad], a
    ld a, $0f
    ld [$cbb9], a
    ld a, $88
    ld [$cbbd], a
    xor a
    ld [$cbba], a
    ld [$cbbb], a
    ld [$cbb1], a
    ld [$cbb3], a
    ld [$cbb5], a
    ld [$cbb6], a
    ld [$cbbc], a
    ld [$cbbe], a
    ld [$cb2e], a
    ld [$cb2f], a
    ld [$cb31], a
    ret


Jump_000_0c10:
    push af
    push de
    push hl
    ldh a, [rIE]
    bit 1, a
    jr nz, jr_000_0c27

    ldh a, [rLY]
    cp $70
    jr c, jr_000_0c43

    ld hl, $cb2e
    bit 6, [hl]
    jp nz, Jump_000_1bf1

jr_000_0c27:
    ld hl, $cb31
    inc [hl]
    jp Jump_000_1bf1


Call_000_0c2e:
    ld a, [$cb31]
    and a
    ret z

    ld hl, $cb31
    dec [hl]
    ld hl, $ffff
    res 2, [hl]
    ld hl, $cb2e
    set 7, [hl]
    jr jr_000_0c43

jr_000_0c43:
    ld a, [$c9ff]
    push af
    ld a, [$cb2d]
    ld [$2000], a
    ld [$c9ff], a
    ld a, [$cb2f]
    and a
    jr z, jr_000_0c88

    ld hl, $cb2e
    bit 6, [hl]
    jr nz, jr_000_0c88

    ld d, a
    ld a, [$cb30]
    inc a
    ld [$cb30], a
    cp d
    jr nz, jr_000_0c88

    xor a
    ld [$cb30], a
    ldh a, [rNR50]
    and a
    jr z, jr_000_0c81

    ld d, a
    and $70
    sub $10
    ld e, a
    ld a, d
    and $07
    sub $01
    or e
    ldh [rNR50], a
    jr jr_000_0c88

jr_000_0c81:
    xor a
    ld [$cb2f], a
    call Call_000_0a65

jr_000_0c88:
    ld hl, $cb2e
    bit 0, [hl]
    jp z, Jump_000_0f5e

    ld a, [$cb44]
    res 1, a
    ld [$cb44], a
    ld hl, $cb35
    dec [hl]
    jr nz, jr_000_0ca8

    ld hl, $cb2e
    bit 4, [hl]
    jr nz, jr_000_0ca8

    xor a
    ldh [rNR12], a

jr_000_0ca8:
    ld hl, $cb34
    dec [hl]
    jp nz, Jump_000_0e97

    ld a, [$cb33]
    ld h, a
    ld a, [$cb32]
    ld l, a

Jump_000_0cb7:
    ld a, [hl+]
    bit 7, a
    jp nz, Jump_000_0d97

    push hl
    ld hl, $1bf5
    add a
    adc l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$cb44]
    bit 0, a
    jr nz, jr_000_0ce4

    ld a, [$cb2e]
    bit 4, a
    jr nz, jr_000_0ce4

    ld a, [$cb43]
    bit 3, a
    jr nz, jr_000_0ce2

    ld d, a
    ld a, [$cb41]
    or d

jr_000_0ce2:
    ldh [rNR12], a

jr_000_0ce4:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cb44]
    bit 0, a
    jr z, jr_000_0d02

    ld a, [$cb42]
    ld d, a
    ld a, [$cb3e]
    add d
    ld d, $00
    bit 7, a
    jr z, jr_000_0cfe

    ld d, $ff

jr_000_0cfe:
    ld e, a

Jump_000_0cff:
    add hl, de
    jr jr_000_0d13

jr_000_0d02:
    ld a, [$cb44]
    set 1, a
    ld [$cb44], a
    ld a, [$cb42]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_0d13:
    ld a, l
    ld [$cb36], a
    push hl
    ld hl, $cb2e
    bit 4, [hl]
    pop hl
    jr nz, jr_000_0d22

    ldh [rNR13], a

jr_000_0d22:
    ld a, h
    ld [$cb37], a
    ld d, a
    ld a, [$cb44]
    ld e, a
    ld a, d
    bit 0, e
    jr nz, jr_000_0d32

    or $80

jr_000_0d32:
    ld hl, $cb2e
    bit 4, [hl]
    jr nz, jr_000_0d3b

    ldh [rNR14], a

jr_000_0d3b:
    pop hl
    ld a, [$cb44]
    res 0, a
    ld [$cb44], a
    ld a, [hl+]
    and a
    jr nz, jr_000_0d4b

    inc hl
    inc hl
    ld a, [hl+]

jr_000_0d4b:
    ld [$cb34], a
    ld a, [hl+]
    ld [$cb35], a
    cp $ff
    jr nz, jr_000_0d5e

    ld a, [$cb44]
    set 0, a
    ld [$cb44], a

jr_000_0d5e:
    ld a, h
    ld [$cb33], a
    ld a, l
    ld [$cb32], a
    ld a, [$cb39]
    and a
    jp z, Jump_000_0d89

    ld a, [$cb44]
    ld d, a
    bit 1, d
    jp z, Jump_000_0f5e

    ld a, [$cb3b]
    ld [$cb3c], a
    xor a
    ld [$cb3f], a
    ld [$cb3e], a
    ld a, [$cb39]
    ld [$cb38], a

Jump_000_0d89:
    bit 1, d
    jp z, Jump_000_0f5e

    ld a, [$cb49]
    ld [$cb48], a
    jp Jump_000_0f5e


Jump_000_0d97:
    cp $80
    jr z, jr_000_0ddb

    cp $ff
    jr z, jr_000_0df3

    cp $fc
    jr z, jr_000_0e00

    cp $f6
    jr z, jr_000_0e13

    cp $fd
    jr z, jr_000_0e1c

    cp $f8
    jp z, Jump_000_0e31

    cp $f1
    jp z, Jump_000_0e38

    cp $f3
    jp z, Jump_000_0e43

    cp $f2
    jp z, Jump_000_0e50

    cp $fb
    jp z, Jump_000_0e67

    cp $fa
    jp z, Jump_000_0e7b

    cp $f9
    jp z, Jump_000_0e82

    cp $fe
    jp z, Jump_000_0e89

    cp $81
    jp z, Jump_000_0e8f

    jp Jump_000_0cb7


jr_000_0ddb:
    ld a, [hl+]
    ld [$cb34], a
    ld a, [hl+]
    ld [$cb35], a
    ld a, h
    ld [$cb33], a
    ld a, l
    ld [$cb32], a
    ld hl, $cb44
    res 0, [hl]
    jp Jump_000_0f5e


jr_000_0df3:
    ld a, [hl+]
    ld [$cb32], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$cb33], a
    jp Jump_000_0cb7


jr_000_0e00:
    ld a, [hl+]
    ld [$cb46], a
    ld d, a
    ld a, [$cb2e]
    bit 4, a
    jp nz, Jump_000_0cb7

    ld a, d
    ldh [rNR11], a
    jp Jump_000_0cb7


jr_000_0e13:
    ld a, [hl+]
    swap a
    ld [$cb41], a
    jp Jump_000_0cb7


jr_000_0e1c:
    ld a, [hl+]
    swap a
    ld [$cb47], a
    ld d, a
    ld a, [$cb2e]
    bit 4, a
    jp nz, Jump_000_0cb7

    ld a, d
    ldh [rNR10], a
    jp Jump_000_0cb7


Jump_000_0e31:
    ld a, [hl+]
    ld [$cb42], a
    jp Jump_000_0cb7


Jump_000_0e38:
    ld a, [hl+]
    ld [$cb4a], a
    ld a, [hl+]
    ld [$cb49], a
    jp Jump_000_0cb7


Jump_000_0e43:
    ld a, [hl+]
    bit 3, a
    jr nz, jr_000_0e4a

    and $0f

jr_000_0e4a:
    ld [$cb43], a
    jp Jump_000_0cb7


Jump_000_0e50:
    ld a, [hl+]
    ld [$cb45], a
    ld d, a
    ld a, [$cb2e]
    bit 4, a
    jp nz, Jump_000_0cb7

    ldh a, [rNR51]
    and $ee
    or d
    ldh [rNR51], a
    jp Jump_000_0cb7


Jump_000_0e67:
    ld a, [hl+]
    ld [$cb39], a
    bit 7, a
    jr z, jr_000_0e71

    cpl
    inc a

jr_000_0e71:
    ld [$cb3a], a
    xor a
    ld [$cb3e], a
    jp Jump_000_0cb7


Jump_000_0e7b:
    ld a, [hl+]
    ld [$cb3b], a
    jp Jump_000_0cb7


Jump_000_0e82:
    ld a, [hl+]
    ld [$cb3d], a
    jp Jump_000_0cb7


Jump_000_0e89:
    ld a, [hl+]
    ldh [rTMA], a
    jp Jump_000_0cb7


Jump_000_0e8f:
    ld hl, $cb2e
    res 0, [hl]
    jp Jump_000_0f5e


Jump_000_0e97:
    ld a, [$cb2e]
    bit 4, a
    jp nz, Jump_000_0f5e

    ld a, [$cb48]
    and a
    jr z, jr_000_0ecb

    dec a
    ld [$cb48], a
    jr nz, jr_000_0ecb

    ld a, [$cb4a]
    ld d, a
    ld a, [$cb41]
    swap a
    sub d
    bit 7, a
    jr z, jr_000_0eba

    xor a

jr_000_0eba:
    swap a
    ld d, a
    ldh a, [rNR12]
    and $0f
    or d
    ldh [rNR12], a
    ld a, [$cb37]
    set 7, a
    ldh [rNR14], a

jr_000_0ecb:
    ld a, [$cb39]
    and a
    jp z, Jump_000_0f5e

    ld a, [$cb3c]
    and a
    jr z, jr_000_0edf

    dec a
    ld [$cb3c], a
    jp Jump_000_0f5e


jr_000_0edf:
    ld a, [$cb3d]
    swap a
    ld d, a
    and $0f
    ld [$cb40], a
    ld a, d
    and $f0
    ld d, a
    ld a, [$cb3f]
    add d
    ld [$cb3f], a
    ld a, [$cb40]
    adc $00
    ld [$cb40], a
    ld a, [$cb40]
    ld d, a
    ld a, [$cb38]
    bit 7, a
    jr nz, jr_000_0f2e

    ld a, [$cb36]
    add d
    ld [$cb36], a
    ld a, [$cb37]
    adc $00
    ld [$cb37], a
    ld a, [$cb3e]
    add d
    ld [$cb3e], a
    ld d, a
    ld a, [$cb3a]
    sub d
    bit 7, a
    jr z, jr_000_0f54

    ld a, $ff
    ld [$cb38], a
    jr jr_000_0f54

jr_000_0f2e:
    ld a, [$cb36]
    sub d
    ld [$cb36], a
    ld a, [$cb37]
    sbc $00
    ld [$cb37], a
    ld a, [$cb3e]
    sub d
    ld [$cb3e], a
    ld d, a
    ld a, [$cb3a]
    cpl
    inc a
    sub d
    bit 7, a
    jr nz, jr_000_0f54

    ld a, $01
    ld [$cb38], a

jr_000_0f54:
    ld a, [$cb36]
    ldh [rNR13], a
    ld a, [$cb37]
    ldh [rNR14], a

Jump_000_0f5e:
    ld hl, $cb2e
    bit 1, [hl]
    jp z, Jump_000_11de

    ld a, [$cb5d]
    res 1, a
    ld [$cb5d], a
    ld hl, $cb4e
    dec [hl]
    jr nz, jr_000_0f77

    xor a
    ldh [rNR22], a

jr_000_0f77:
    ld hl, $cb4d
    dec [hl]
    jp nz, Jump_000_111f

    ld a, [$cb4c]
    ld h, a
    ld a, [$cb4b]
    ld l, a

Jump_000_0f86:
    ld a, [hl+]
    bit 7, a
    jp nz, Jump_000_104f

    push hl
    ld hl, $1bf5
    add a
    adc l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$cb5d]
    bit 0, a
    jr nz, jr_000_0fac

    ld a, [$cb5c]
    bit 3, a
    jr nz, jr_000_0faa

    ld d, a
    ld a, [$cb5a]
    or d

jr_000_0faa:
    ldh [rNR22], a

jr_000_0fac:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cb5d]
    bit 0, a
    jr z, jr_000_0fca

    ld a, [$cb5b]
    ld d, a
    ld a, [$cb57]
    add d
    ld d, $00
    bit 7, a
    jr z, jr_000_0fc6

    ld d, $ff

jr_000_0fc6:
    ld e, a
    add hl, de
    jr jr_000_0fdb

jr_000_0fca:
    ld a, [$cb5d]
    set 1, a
    ld [$cb5d], a
    ld a, [$cb5b]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_0fdb:
    ld a, l
    ld [$cb4f], a
    ldh [rNR23], a
    ld a, h
    ld [$cb50], a
    ld d, a
    ld a, [$cb5d]
    ld e, a
    ld a, d
    bit 0, e
    jr nz, jr_000_0ff1

    or $80

jr_000_0ff1:
    ldh [rNR24], a
    pop hl
    ld a, [$cb5d]
    res 0, a
    ld [$cb5d], a
    ld a, [hl+]
    and a
    jr nz, jr_000_1003

    inc hl
    inc hl
    ld a, [hl+]

jr_000_1003:
    ld [$cb4d], a
    ld a, [hl+]
    ld [$cb4e], a
    cp $ff
    jr nz, jr_000_1016

    ld a, [$cb5d]
    set 0, a
    ld [$cb5d], a

jr_000_1016:
    ld a, h
    ld [$cb4c], a
    ld a, l
    ld [$cb4b], a
    ld a, [$cb52]
    and a
    jp z, Jump_000_1041

    ld a, [$cb5d]
    ld d, a
    bit 1, d
    jp z, Jump_000_11de

    ld a, [$cb54]
    ld [$cb55], a
    xor a
    ld [$cb58], a
    ld [$cb57], a
    ld a, [$cb52]
    ld [$cb51], a

Jump_000_1041:
    bit 1, d
    jp z, Jump_000_11de

    ld a, [$cb61]
    ld [$cb60], a
    jp Jump_000_11de


Jump_000_104f:
    cp $80
    jr z, jr_000_108a

    cp $ff
    jr z, jr_000_10a2

    cp $fc
    jr z, jr_000_10af

    cp $f6
    jr z, jr_000_10b8

    cp $f1
    jr z, jr_000_10c1

    cp $f8
    jr z, jr_000_10cc

    cp $f3
    jr z, jr_000_10d3

    cp $f2
    jr z, jr_000_10e0

    cp $fb
    jr z, jr_000_10ef

    cp $fa
    jp z, Jump_000_1103

    cp $f9
    jp z, Jump_000_110a

    cp $fe
    jp z, Jump_000_1111

    cp $81
    jp z, Jump_000_1117

    jp Jump_000_0f86


jr_000_108a:
    ld a, [hl+]
    ld [$cb4d], a
    ld a, [hl+]
    ld [$cb4e], a
    ld a, h
    ld [$cb4c], a
    ld a, l
    ld [$cb4b], a
    ld hl, $cb5d
    res 0, [hl]
    jp Jump_000_11de


jr_000_10a2:
    ld a, [hl+]
    ld [$cb4b], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$cb4c], a
    jp Jump_000_0f86


jr_000_10af:
    ld a, [hl+]
    ld [$cb5f], a
    ldh [rNR21], a
    jp Jump_000_0f86


jr_000_10b8:
    ld a, [hl+]
    swap a
    ld [$cb5a], a
    jp Jump_000_0f86


jr_000_10c1:
    ld a, [hl+]
    ld [$cb62], a
    ld a, [hl+]
    ld [$cb61], a
    jp Jump_000_0f86


jr_000_10cc:
    ld a, [hl+]
    ld [$cb5b], a
    jp Jump_000_0f86


jr_000_10d3:
    ld a, [hl+]
    bit 3, a
    jr nz, jr_000_10da

    and $0f

jr_000_10da:
    ld [$cb5c], a
    jp Jump_000_0f86


jr_000_10e0:
    ld a, [hl+]
    ld [$cb5e], a
    ld d, a
    ldh a, [rNR51]
    and $dd
    or d
    ldh [rNR51], a
    jp Jump_000_0f86


jr_000_10ef:
    ld a, [hl+]
    ld [$cb52], a
    bit 7, a
    jr z, jr_000_10f9

    cpl
    inc a

jr_000_10f9:
    ld [$cb53], a
    xor a
    ld [$cb57], a
    jp Jump_000_0f86


Jump_000_1103:
    ld a, [hl+]
    ld [$cb54], a
    jp Jump_000_0f86


Jump_000_110a:
    ld a, [hl+]
    ld [$cb56], a
    jp Jump_000_0f86


Jump_000_1111:
    ld a, [hl+]
    ldh [rTMA], a
    jp Jump_000_0f86


Jump_000_1117:
    ld hl, $cb2e
    res 1, [hl]
    jp Jump_000_11de


Jump_000_111f:
    ld a, [$cb60]
    and a
    jr z, jr_000_114b

    dec a
    ld [$cb60], a
    jr nz, jr_000_114b

    ld a, [$cb62]
    ld d, a
    ld a, [$cb5a]
    swap a
    sub d
    bit 7, a
    jr z, jr_000_113a

    xor a

jr_000_113a:
    swap a
    ld d, a
    ldh a, [rNR22]
    and $0f
    or d
    ldh [rNR22], a
    ld a, [$cb50]
    set 7, a
    ldh [rNR24], a

jr_000_114b:
    ld a, [$cb52]
    and a
    jp z, Jump_000_11de

    ld a, [$cb55]
    and a
    jr z, jr_000_115f

    dec a
    ld [$cb55], a
    jp Jump_000_11de


jr_000_115f:
    ld a, [$cb56]
    swap a
    ld d, a
    and $0f
    ld [$cb59], a
    ld a, d
    and $f0
    ld d, a
    ld a, [$cb58]
    add d
    ld [$cb58], a
    ld a, [$cb59]
    adc $00
    ld [$cb59], a
    ld a, [$cb59]
    ld d, a
    ld a, [$cb51]
    bit 7, a
    jr nz, jr_000_11ae

    ld a, [$cb4f]
    add d
    ld [$cb4f], a
    ld a, [$cb50]
    adc $00
    ld [$cb50], a
    ld a, [$cb57]
    add d
    ld [$cb57], a
    ld d, a
    ld a, [$cb53]
    sub d
    bit 7, a
    jr z, jr_000_11d4

    ld a, $ff
    ld [$cb51], a
    jr jr_000_11d4

jr_000_11ae:
    ld a, [$cb4f]
    sub d
    ld [$cb4f], a
    ld a, [$cb50]
    sbc $00
    ld [$cb50], a
    ld a, [$cb57]
    sub d
    ld [$cb57], a
    ld d, a
    ld a, [$cb53]
    cpl
    inc a
    sub d
    bit 7, a
    jr nz, jr_000_11d4

    ld a, $01
    ld [$cb51], a

jr_000_11d4:
    ld a, [$cb4f]
    ldh [rNR23], a
    ld a, [$cb50]
    ldh [rNR24], a

Jump_000_11de:
    ld hl, $cb2e
    bit 2, [hl]
    jp z, Jump_000_1451

    ld a, [$cb74]
    res 1, a
    ld [$cb74], a
    ld hl, $cb66
    dec [hl]
    jr nz, jr_000_11f7

    xor a
    ldh [rNR32], a

jr_000_11f7:
    ld hl, $cb65
    dec [hl]
    jp nz, Jump_000_13a4

    ld a, [$cb64]
    ld h, a
    ld a, [$cb63]
    ld l, a

Jump_000_1206:
    ld a, [hl+]
    bit 7, a
    jp nz, Jump_000_12d2

    push hl
    ld hl, $1bf5
    add a
    adc l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$cb74]
    bit 0, a
    jr nz, jr_000_1226

    ld a, [$cb72]
    ldh [rNR32], a
    xor a
    ldh [rNR30], a

jr_000_1226:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cb74]
    bit 0, a
    jr z, jr_000_1244

    ld a, [$cb73]
    ld d, a
    ld a, [$cb6f]
    add d
    ld d, $00
    bit 7, a
    jr z, jr_000_1240

    ld d, $ff

jr_000_1240:
    ld e, a
    add hl, de
    jr jr_000_1255

jr_000_1244:
    ld a, [$cb74]
    set 1, a
    ld [$cb74], a
    ld a, [$cb73]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_1255:
    ld a, l
    ld [$cb67], a
    ldh [rNR33], a
    ld a, h
    ld [$cb68], a
    ld d, a
    ld a, [$cb74]
    ld e, a
    ld a, d
    bit 0, e
    jr nz, jr_000_1274

    ld hl, $ff1a
    set 7, [hl]
    or $80
    ldh [rNR34], a
    jr jr_000_1276

jr_000_1274:
    ldh [rNR34], a

jr_000_1276:
    pop hl
    ld a, [$cb74]
    res 0, a
    ld [$cb74], a
    ld a, [hl+]
    and a
    jr nz, jr_000_1286

    inc hl
    inc hl
    ld a, [hl+]

jr_000_1286:
    ld [$cb65], a
    ld a, [hl+]
    ld [$cb66], a
    cp $ff
    jr nz, jr_000_1299

    ld a, [$cb74]
    set 0, a
    ld [$cb74], a

jr_000_1299:
    ld a, h
    ld [$cb64], a
    ld a, l
    ld [$cb63], a
    ld a, [$cb6a]
    and a
    jp z, Jump_000_1451

    ld a, [$cb74]
    ld d, a
    bit 1, d
    jp z, Jump_000_12c4

    ld a, [$cb6c]
    ld [$cb6d], a
    xor a
    ld [$cb70], a
    ld [$cb6f], a
    ld a, [$cb6a]
    ld [$cb69], a

Jump_000_12c4:
    bit 1, d
    jp z, Jump_000_1451

    ld a, [$cb77]
    ld [$cb76], a
    jp Jump_000_1451


Jump_000_12d2:
    cp $80
    jr z, jr_000_130a

    cp $ff
    jr z, jr_000_1322

    cp $f5
    jr z, jr_000_132f

    cp $f7
    jr z, jr_000_134c

    cp $f1
    jr z, jr_000_1353

    cp $f8
    jr z, jr_000_135e

    cp $f2
    jr z, jr_000_1365

    cp $fb
    jp z, Jump_000_1374

Jump_000_12f3:
    cp $fa
    jp z, Jump_000_1388

    cp $f9
    jp z, Jump_000_138f

    cp $fe
    jp z, Jump_000_1396

    cp $81
    jp z, Jump_000_139c

    jp Jump_000_1206


jr_000_130a:
    ld a, [hl+]
    ld [$cb65], a
    ld a, [hl+]
    ld [$cb66], a
    ld a, h
    ld [$cb64], a
    ld a, l
    ld [$cb63], a
    ld hl, $cb74
    res 0, [hl]
    jp Jump_000_1451


jr_000_1322:
    ld a, [hl+]
    ld [$cb63], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$cb64], a
    jp Jump_000_1206


jr_000_132f:
    xor a
    ldh [rNR30], a
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld hl, $ff30
    ld b, $10

jr_000_133d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_133d

    pop hl
    pop bc
    ld a, $80
    ldh [rNR30], a
    jp Jump_000_1206


jr_000_134c:
    ld a, [hl+]
    ld [$cb72], a
    jp Jump_000_1206


jr_000_1353:
    ld a, [hl+]
    ld [$cb78], a
    ld a, [hl+]
    ld [$cb77], a
    jp Jump_000_1206


jr_000_135e:
    ld a, [hl+]
    ld [$cb73], a
    jp Jump_000_1206


jr_000_1365:
    ld a, [hl+]
    ld [$cb75], a
    ld d, a
    ldh a, [rNR51]
    and $bb
    or d
    ldh [rNR51], a
    jp Jump_000_1206


Jump_000_1374:
    ld a, [hl+]
    ld [$cb6a], a
    bit 7, a
    jr z, jr_000_137e

    cpl
    inc a

jr_000_137e:
    ld [$cb6b], a
    xor a
    ld [$cb6f], a
    jp Jump_000_1206


Jump_000_1388:
    ld a, [hl+]
    ld [$cb6c], a
    jp Jump_000_1206


Jump_000_138f:
    ld a, [hl+]
    ld [$cb6e], a
    jp Jump_000_1206


Jump_000_1396:
    ld a, [hl+]
    ldh [rTMA], a
    jp Jump_000_1206


Jump_000_139c:
    ld hl, $cb2e
    res 2, [hl]
    jp Jump_000_1451


Jump_000_13a4:
    ld a, [$cb76]
    and a
    jr z, jr_000_13be

    dec a
    ld [$cb76], a
    jr nz, jr_000_13be

    ld a, [$cb78]
    swap a
    add a
    ld d, a
    ldh a, [rNR32]
    add d
    and $60
    ldh [rNR32], a

jr_000_13be:
    ld a, [$cb6a]
    and a
    jp z, Jump_000_1451

    ld a, [$cb6d]
    and a
    jr z, jr_000_13d2

    dec a
    ld [$cb6d], a
    jp Jump_000_1451


jr_000_13d2:
    ld a, [$cb6e]
    swap a
    ld d, a
    and $0f
    ld [$cb71], a
    ld a, d
    and $f0
    ld d, a
    ld a, [$cb70]
    add d
    ld [$cb70], a
    ld a, [$cb71]
    adc $00
    ld [$cb71], a
    ld a, [$cb71]
    ld d, a
    ld a, [$cb69]
    bit 7, a
    jr nz, jr_000_1421

    ld a, [$cb67]
    add d
    ld [$cb67], a
    ld a, [$cb68]
    adc $00
    ld [$cb68], a
    ld a, [$cb6f]
    add d
    ld [$cb6f], a
    ld d, a
    ld a, [$cb6b]
    sub d
    bit 7, a
    jr z, jr_000_1447

    ld a, $ff
    ld [$cb69], a
    jr jr_000_1447

jr_000_1421:
    ld a, [$cb67]
    sub d
    ld [$cb67], a
    ld a, [$cb68]
    sbc $00
    ld [$cb68], a
    ld a, [$cb6f]
    sub d
    ld [$cb6f], a
    ld d, a
    ld a, [$cb6b]
    cpl
    inc a
    sub d
    bit 7, a
    jr nz, jr_000_1447

    ld a, $01
    ld [$cb69], a

jr_000_1447:
    ld a, [$cb67]
    ldh [rNR33], a
    ld a, [$cb68]
    ldh [rNR34], a

Jump_000_1451:
    ld hl, $cb2e
    bit 3, [hl]
    jp z, Jump_000_170b

    ld a, [$cb8b]
    res 1, a
    ld [$cb8b], a
    ld hl, $cb7c
    dec [hl]
    jr nz, jr_000_1471

    ld hl, $cb2e
    bit 5, [hl]
    jr nz, jr_000_1471

    xor a
    ldh [rNR42], a

jr_000_1471:
    ld hl, $cb7b
    dec [hl]
    jp nz, Jump_000_1644

    ld a, [$cb7a]
    ld h, a
    ld a, [$cb79]
    ld l, a

Jump_000_1480:
    ld a, [hl+]
    bit 7, a
    jp nz, Jump_000_1560

    push hl
    ld hl, $1bf5
    add a
    adc l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$cb8b]
    bit 0, a
    jr nz, jr_000_14ad

    ld a, [$cb2e]
    bit 5, a
    jr nz, jr_000_14ad

    ld a, [$cb8a]
    bit 3, a
    jr nz, jr_000_14ab

    ld d, a
    ld a, [$cb88]
    or d

jr_000_14ab:
    ldh [rNR42], a

jr_000_14ad:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cb8b]
    bit 0, a
    jr z, jr_000_14cb

    ld a, [$cb89]
    ld d, a
    ld a, [$cb85]
    add d
    ld d, $00
    bit 7, a
    jr z, jr_000_14c7

    ld d, $ff

jr_000_14c7:
    ld e, a
    add hl, de
    jr jr_000_14dc

jr_000_14cb:
    ld a, [$cb8b]
    set 1, a
    ld [$cb8b], a
    ld a, [$cb89]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_14dc:
    ld a, l
    ld [$cb7d], a
    push hl
    ld hl, $cb2e
    bit 5, [hl]
    pop hl
    jr nz, jr_000_14eb

    ldh [rNR43], a

jr_000_14eb:
    ld a, h
    ld [$cb7e], a
    ld d, a
    ld a, [$cb8b]
    ld e, a
    ld a, d
    bit 0, e
    jr nz, jr_000_14fb

    or $80

jr_000_14fb:
    ld hl, $cb2e
    bit 5, [hl]
    jr nz, jr_000_1504

    ldh [rNR44], a

jr_000_1504:
    pop hl
    ld a, [$cb8b]
    res 0, a
    ld [$cb8b], a
    ld a, [hl+]
    and a
    jr nz, jr_000_1514

    inc hl
    inc hl
    ld a, [hl+]

jr_000_1514:
    ld [$cb7b], a
    ld a, [hl+]
    ld [$cb7c], a
    cp $ff
    jr nz, jr_000_1527

    ld a, [$cb8b]
    set 0, a
    ld [$cb8b], a

jr_000_1527:
    ld a, h
    ld [$cb7a], a
    ld a, l
    ld [$cb79], a
    ld a, [$cb80]
    and a
    jp z, Jump_000_1552

    ld a, [$cb8b]
    ld d, a
    bit 1, d
    jp z, Jump_000_1552

    ld a, [$cb82]
    ld [$cb83], a
    xor a
    ld [$cb86], a
    ld [$cb85], a
    ld a, [$cb80]
    ld [$cb7f], a

Jump_000_1552:
    bit 1, d
    jp z, Jump_000_170b

    ld a, [$cb8f]
    ld [$cb8e], a
    jp Jump_000_170b


Jump_000_1560:
    cp $80
    jr z, jr_000_159d

    cp $ff
    jr z, jr_000_15b5

    cp $f4
    jr z, jr_000_15c2

    cp $f6
    jr z, jr_000_15d5

    cp $f8
    jr z, jr_000_15de

    cp $f1
    jp z, Jump_000_15e5

    cp $f3
    jr z, jr_000_15f0

    cp $f2
    jr z, jr_000_15fd

    cp $fb
    jp z, Jump_000_1614

    cp $fa
    jp z, Jump_000_1628

    cp $f9
    jp z, Jump_000_162f

    cp $fe
    jp z, Jump_000_1636

    cp $81
    jp z, Jump_000_163c

    jp Jump_000_1480


jr_000_159d:
    ld a, [hl+]
    ld [$cb7b], a
    ld a, [hl+]
    ld [$cb7c], a
    ld a, h
    ld [$cb7a], a
    ld a, l
    ld [$cb79], a
    ld hl, $cb8b
    res 0, [hl]
    jp Jump_000_170b


jr_000_15b5:
    ld a, [hl+]
    ld [$cb79], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$cb7a], a
    jp Jump_000_1480


jr_000_15c2:
    ld a, [hl+]
    ld [$cb8d], a
    ld d, a
    ld a, [$cb2e]
    bit 5, a
    jp nz, Jump_000_1480

    ld a, d
    ldh [rNR43], a
    jp Jump_000_1480


jr_000_15d5:
    ld a, [hl+]
    swap a
    ld [$cb88], a
    jp Jump_000_1480


jr_000_15de:
    ld a, [hl+]
    ld [$cb89], a
    jp Jump_000_1480


Jump_000_15e5:
    ld a, [hl+]
    ld [$cb90], a
    ld a, [hl+]
    ld [$cb8f], a
    jp Jump_000_1480


jr_000_15f0:
    ld a, [hl+]
    bit 3, a
    jr nz, jr_000_15f7

    and $0f

jr_000_15f7:
    ld [$cb8a], a
    jp Jump_000_1480


jr_000_15fd:
    ld a, [hl+]
    ld [$cb8c], a
    ld d, a
    ld a, [$cb2e]
    bit 5, a
    jp nz, Jump_000_1480

    ldh a, [rNR51]
    and $77
    or d
    ldh [rNR51], a
    jp Jump_000_1480


Jump_000_1614:
    ld a, [hl+]
    ld [$cb80], a
    bit 7, a
    jr z, jr_000_161e

    cpl
    inc a

jr_000_161e:
    ld [$cb81], a
    xor a
    ld [$cb85], a
    jp Jump_000_1480


Jump_000_1628:
    ld a, [hl+]
    ld [$cb82], a
    jp Jump_000_1480


Jump_000_162f:
    ld a, [hl+]
    ld [$cb84], a
    jp Jump_000_1480


Jump_000_1636:
    ld a, [hl+]
    ldh [rTMA], a
    jp Jump_000_1480


Jump_000_163c:
    ld hl, $cb2e
    res 3, [hl]
    jp Jump_000_170b


Jump_000_1644:
    ld a, [$cb2e]
    bit 5, a
    jp nz, Jump_000_170b

    ld a, [$cb8e]
    and a
    jr z, jr_000_1678

    dec a
    ld [$cb8e], a
    jr nz, jr_000_1678

    ld a, [$cb90]
    ld d, a
    ld a, [$cb88]
    swap a
    sub d
    bit 7, a
    jr z, jr_000_1667

    xor a

jr_000_1667:
    swap a
    ld d, a
    ldh a, [rNR42]
    and $0f
    or d
    ldh [rNR42], a
    ld a, [$cb7e]
    set 7, a
    ldh [rNR44], a

jr_000_1678:
    ld a, [$cb80]
    and a
    jp z, Jump_000_170b

    ld a, [$cb83]
    and a
    jr z, jr_000_168c

    dec a
    ld [$cb83], a
    jp Jump_000_170b


jr_000_168c:
    ld a, [$cb84]
    swap a
    ld d, a
    and $0f
    ld [$cb87], a
    ld a, d
    and $f0
    ld d, a
    ld a, [$cb86]
    add d
    ld [$cb86], a
    ld a, [$cb87]
    adc $00
    ld [$cb87], a
    ld a, [$cb87]
    ld d, a
    ld a, [$cb7f]
    bit 7, a
    jr nz, jr_000_16db

    ld a, [$cb7d]
    add d
    ld [$cb7d], a
    ld a, [$cb7e]
    adc $00
    ld [$cb7e], a
    ld a, [$cb85]
    add d
    ld [$cb85], a
    ld d, a
    ld a, [$cb81]
    sub d
    bit 7, a
    jr z, jr_000_1701

    ld a, $ff
    ld [$cb7f], a
    jr jr_000_1701

jr_000_16db:
    ld a, [$cb7d]
    sub d
    ld [$cb7d], a
    ld a, [$cb7e]
    sbc $00
    ld [$cb7e], a
    ld a, [$cb85]
    sub d
    ld [$cb85], a
    ld d, a
    ld a, [$cb81]
    cpl
    inc a
    sub d
    bit 7, a
    jr nz, jr_000_1701

    ld a, $01
    ld [$cb7f], a

jr_000_1701:
    ld a, [$cb7d]
    ldh [rNR43], a
    ld a, [$cb7e]
    ldh [rNR44], a

Jump_000_170b:
    ld hl, $cb2e
    bit 4, [hl]
    jp z, Jump_000_199f

    ld a, [$cba3]
    res 1, a
    ld [$cba3], a
    ld hl, $cb94
    dec [hl]
    jr nz, jr_000_1724

    xor a
    ldh [rNR12], a

jr_000_1724:
    ld hl, $cb93
    dec [hl]
    jp nz, Jump_000_18e0

    ld a, [$cb92]
    ld h, a
    ld a, [$cb91]
    ld l, a

Jump_000_1733:
    ld a, [hl+]
    bit 7, a
    jp nz, Jump_000_17fc

    push hl
    ld hl, $1bf5
    add a
    adc l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$cba3]
    bit 0, a
    jr nz, jr_000_1759

    ld a, [$cba2]
    bit 3, a
    jr nz, jr_000_1757

    ld d, a
    ld a, [$cba0]
    or d

jr_000_1757:
    ldh [rNR12], a

jr_000_1759:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cba3]
    bit 0, a
    jr z, jr_000_1777

    ld a, [$cba1]
    ld d, a
    ld a, [$cb9d]
    add d
    ld d, $00
    bit 7, a
    jr z, jr_000_1773

    ld d, $ff

jr_000_1773:
    ld e, a
    add hl, de
    jr jr_000_1788

jr_000_1777:
    ld a, [$cba3]
    set 1, a
    ld [$cba3], a
    ld a, [$cba1]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_1788:
    ld a, l
    ld [$cb95], a
    ldh [rNR13], a
    ld a, h
    ld [$cb96], a
    ld d, a
    ld a, [$cba3]
    ld e, a
    ld a, d
    bit 0, e
    jr nz, jr_000_179e

    or $80

jr_000_179e:
    ldh [rNR14], a
    pop hl
    ld a, [$cba3]
    res 0, a
    ld [$cba3], a
    ld a, [hl+]
    and a
    jr nz, jr_000_17b0

    inc hl
    inc hl
    ld a, [hl+]

jr_000_17b0:
    ld [$cb93], a
    ld a, [hl+]
    ld [$cb94], a
    cp $ff
    jr nz, jr_000_17c3

    ld a, [$cba3]
    set 0, a
    ld [$cba3], a

jr_000_17c3:
    ld a, h
    ld [$cb92], a
    ld a, l
    ld [$cb91], a
    ld a, [$cb98]
    and a
    jp z, Jump_000_17ee

    ld a, [$cba3]
    ld d, a
    bit 1, d
    jp z, Jump_000_199f

    ld a, [$cb9a]
    ld [$cb9b], a
    xor a
    ld [$cb9e], a
    ld [$cb9d], a
    ld a, [$cb98]
    ld [$cb97], a

Jump_000_17ee:
    bit 1, d
    jp z, Jump_000_199f

    ld a, [$cba8]
    ld [$cba7], a
    jp Jump_000_199f


Jump_000_17fc:
    cp $80
    jr z, jr_000_1838

    cp $ff
    jr z, jr_000_1850

    cp $fc
    jr z, jr_000_185d

    cp $f6
    jr z, jr_000_1866

    cp $fd
    jr z, jr_000_186f

    cp $f8
    jr z, jr_000_187a

    cp $f3
    jr z, jr_000_188c

    cp $f2
    jr z, jr_000_1899

    cp $fb
    jp z, Jump_000_189d

    cp $fa
    jp z, Jump_000_18b1

    cp $f9
    jp z, Jump_000_18b8

    cp $fe
    jp z, Jump_000_18bf

    cp $81
    jp z, Jump_000_18c3

    jp Jump_000_1733


jr_000_1838:
    ld a, [hl+]
    ld [$cb93], a
    ld a, [hl+]
    ld [$cb94], a
    ld a, h
    ld [$cb92], a
    ld a, l
    ld [$cb91], a
    ld hl, $cba3
    res 0, [hl]
    jp Jump_000_199f


jr_000_1850:
    ld a, [hl+]
    ld [$cb91], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$cb92], a
    jp Jump_000_1733


jr_000_185d:
    ld a, [hl+]
    ld [$cba5], a
    ldh [rNR11], a
    jp Jump_000_1733


jr_000_1866:
    ld a, [hl+]
    swap a
    ld [$cba0], a
    jp Jump_000_1733


jr_000_186f:
    ld a, [hl+]
    swap a
    ld [$cba6], a
    ldh [rNR10], a
    jp Jump_000_1733


jr_000_187a:
    ld a, [hl+]
    ld [$cba1], a
    jp Jump_000_1733


    ld a, [hl+]
    ld [$cba9], a
    ld a, [hl+]
    ld [$cba8], a
    jp Jump_000_1733


jr_000_188c:
    ld a, [hl+]
    bit 3, a
    jr nz, jr_000_1893

    and $0f

jr_000_1893:
    ld [$cba2], a
    jp Jump_000_1733


jr_000_1899:
    ld a, [hl+]
    jp Jump_000_1733


Jump_000_189d:
    ld a, [hl+]
    ld [$cb98], a
    bit 7, a
    jr z, jr_000_18a7

    cpl
    inc a

jr_000_18a7:
    ld [$cb99], a
    xor a
    ld [$cb9d], a
    jp Jump_000_1733


Jump_000_18b1:
    ld a, [hl+]
    ld [$cb9a], a
    jp Jump_000_1733


Jump_000_18b8:
    ld a, [hl+]
    ld [$cb9c], a
    jp Jump_000_1733


Jump_000_18bf:
    inc hl
    jp Jump_000_1733


Jump_000_18c3:
    ld hl, $cb2e
    res 4, [hl]
    ld a, [$cb47]
    ldh [rNR10], a
    ld a, [$cb45]
    ld d, a
    ldh a, [rNR51]
    and $ee
    or d
    ldh [rNR51], a
    ld a, [$cb46]
    ldh [rNR11], a
    jp Jump_000_199f


Jump_000_18e0:
    ld a, [$cba7]
    and a
    jr z, jr_000_190c

    dec a
    ld [$cba7], a
    jr nz, jr_000_190c

    ld a, [$cba9]
    ld d, a
    ld a, [$cba0]
    swap a
    sub d
    bit 7, a
    jr z, jr_000_18fb

    xor a

jr_000_18fb:
    swap a
    ld d, a
    ldh a, [rNR12]
    and $0f
    or d
    ldh [rNR12], a
    ld a, [$cb96]
    set 7, a
    ldh [rNR14], a

jr_000_190c:
    ld a, [$cb98]
    and a
    jp z, Jump_000_199f

    ld a, [$cb9b]
    and a
    jr z, jr_000_1920

    dec a
    ld [$cb9b], a
    jp Jump_000_199f


jr_000_1920:
    ld a, [$cb9c]
    swap a
    ld d, a
    and $0f
    ld [$cb9f], a
    ld a, d
    and $f0
    ld d, a
    ld a, [$cb9e]
    add d
    ld [$cb9e], a
    ld a, [$cb9f]
    adc $00
    ld [$cb9f], a
    ld a, [$cb9f]
    ld d, a
    ld a, [$cb97]
    bit 7, a
    jr nz, jr_000_196f

    ld a, [$cb95]
    add d
    ld [$cb95], a
    ld a, [$cb96]
    adc $00
    ld [$cb96], a
    ld a, [$cb9d]
    add d
    ld [$cb9d], a
    ld d, a
    ld a, [$cb99]
    sub d
    bit 7, a
    jr z, jr_000_1995

    ld a, $ff
    ld [$cb97], a
    jr jr_000_1995

jr_000_196f:
    ld a, [$cb95]
    sub d
    ld [$cb95], a
    ld a, [$cb96]
    sbc $00
    ld [$cb96], a
    ld a, [$cb9d]
    sub d
    ld [$cb9d], a
    ld d, a
    ld a, [$cb99]
    cpl
    inc a
    sub d
    bit 7, a
    jr nz, jr_000_1995

    ld a, $01
    ld [$cb97], a

jr_000_1995:
    ld a, [$cb95]
    ldh [rNR13], a
    ld a, [$cb96]
    ldh [rNR14], a

Jump_000_199f:
    ld hl, $cb2e
    bit 5, [hl]
    jp z, Jump_000_1bdb

    ld a, [$cbbc]
    res 1, a
    ld [$cbbc], a
    ld hl, $cbad
    dec [hl]
    jr nz, jr_000_19b8

    xor a
    ldh [rNR42], a

jr_000_19b8:
    ld hl, $cbac
    dec [hl]
    jp nz, Jump_000_1b48

    ld a, [$cbab]
    ld h, a
    ld a, [$cbaa]
    ld l, a

Jump_000_19c7:
    ld a, [hl+]
    bit 7, a
    jp nz, Jump_000_1a84

    push hl
    ld hl, $1bf5
    add a
    adc l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$cbbc]
    bit 0, a
    jr nz, jr_000_19ed

    ld a, [$cbbb]
    bit 3, a
    jr nz, jr_000_19eb

    ld d, a
    ld a, [$cbb9]
    or d

jr_000_19eb:
    ldh [rNR42], a

jr_000_19ed:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cbbc]
    bit 0, a
    jr z, jr_000_1a0b

    ld a, [$cbba]
    ld d, a
    ld a, [$cbb6]
    add d
    ld d, $00
    bit 7, a
    jr z, jr_000_1a07

    ld d, $ff

jr_000_1a07:
    ld e, a
    add hl, de
    jr jr_000_1a1c

jr_000_1a0b:
    ld a, [$cbbc]
    set 1, a
    ld [$cbbc], a
    ld a, [$cbba]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a

jr_000_1a1c:
    ld a, l
    ld [$cbae], a
    ldh [rNR43], a
    ld a, h
    ld [$cbaf], a
    ld d, a
    ld a, [$cbbc]
    ld e, a
    ld a, d
    bit 0, e
    jr nz, jr_000_1a32

    or $80

jr_000_1a32:
    ldh [rNR44], a
    pop hl
    ld a, [$cbbc]
    res 0, a
    ld [$cbbc], a
    ld a, [hl+]
    and a
    jr nz, jr_000_1a44

    inc hl
    inc hl
    ld a, [hl+]

jr_000_1a44:
    ld [$cbac], a
    ld a, [hl+]
    ld [$cbad], a
    cp $ff
    jr nz, jr_000_1a57

    ld a, [$cbbc]
    set 0, a
    ld [$cbbc], a

jr_000_1a57:
    ld a, h
    ld [$cbab], a
    ld a, l
    ld [$cbaa], a
    ld a, [$cbb1]
    and a
    jp z, Jump_000_1bdb

    ld hl, $cbbc
    bit 1, [hl]
    jp z, Jump_000_1bdb

    ld a, [$cbb3]
    ld [$cbb4], a
    xor a
    ld [$cbb7], a
    ld [$cbb6], a
    ld a, [$cbb1]
    ld [$cbb0], a
    jp Jump_000_1bdb


Jump_000_1a84:
    cp $80
    jr z, jr_000_1abb

    cp $ff
    jr z, jr_000_1ad3

    cp $f4
    jr z, jr_000_1ae0

    cp $f6
    jr z, jr_000_1ae9

    cp $f8
    jr z, jr_000_1af2

    cp $f3
    jr z, jr_000_1af9

    cp $f2
    jr z, jr_000_1b06

    cp $fb
    jr z, jr_000_1b0a

    cp $fa
    jp z, Jump_000_1b1e

    cp $f9
    jp z, Jump_000_1b25

    cp $fe
    jp z, Jump_000_1b2c

    cp $81
    jp z, Jump_000_1b30

    jp Jump_000_19c7


jr_000_1abb:
    ld a, [hl+]
    ld [$cbac], a
    ld a, [hl+]
    ld [$cbad], a
    ld a, h
    ld [$cbab], a
    ld a, l
    ld [$cbaa], a
    ld hl, $cbbc
    res 0, [hl]
    jp Jump_000_1bdb


jr_000_1ad3:
    ld a, [hl+]
    ld [$cbaa], a
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$cbab], a
    jp Jump_000_19c7


jr_000_1ae0:
    ld a, [hl+]
    ld [$cbbe], a
    ldh [rNR43], a
    jp Jump_000_19c7


jr_000_1ae9:
    ld a, [hl+]
    swap a
    ld [$cbb9], a
    jp Jump_000_19c7


jr_000_1af2:
    ld a, [hl+]
    ld [$cbba], a
    jp Jump_000_19c7


jr_000_1af9:
    ld a, [hl+]
    bit 3, a
    jr nz, jr_000_1b00

    and $0f

jr_000_1b00:
    ld [$cbbb], a
    jp Jump_000_19c7


jr_000_1b06:
    ld a, [hl+]
    jp Jump_000_19c7


jr_000_1b0a:
    ld a, [hl+]
    ld [$cbb1], a
    bit 7, a
    jr z, jr_000_1b14

    cpl
    inc a

jr_000_1b14:
    ld [$cbb2], a
    xor a
    ld [$cbb6], a
    jp Jump_000_19c7


Jump_000_1b1e:
    ld a, [hl+]
    ld [$cbb3], a
    jp Jump_000_19c7


Jump_000_1b25:
    ld a, [hl+]
    ld [$cbb5], a
    jp Jump_000_19c7


Jump_000_1b2c:
    inc hl
    jp Jump_000_19c7


Jump_000_1b30:
    ld hl, $cb2e
    res 5, [hl]
    ld a, [$cb8d]
    ldh [rNR43], a
    ld a, [$cb8c]
    ld d, a
    ldh a, [rNR51]
    and $77
    or d
    ldh [rNR51], a
    jp Jump_000_1bdb


Jump_000_1b48:
    ld a, [$cbb1]
    and a
    jp z, Jump_000_1bdb

    ld a, [$cbb4]
    and a
    jr z, jr_000_1b5c

    dec a
    ld [$cbb4], a
    jp Jump_000_1bdb


jr_000_1b5c:
    ld a, [$cbb5]
    swap a
    ld d, a
    and $0f
    ld [$cbb8], a
    ld a, d
    and $f0
    ld d, a
    ld a, [$cbb7]
    add d
    ld [$cbb7], a
    ld a, [$cbb8]
    adc $00
    ld [$cbb8], a
    ld a, [$cbb8]
    ld d, a
    ld a, [$cbb0]
    bit 7, a
    jr nz, jr_000_1bab

    ld a, [$cbae]
    add d
    ld [$cbae], a
    ld a, [$cbaf]
    adc $00
    ld [$cbaf], a
    ld a, [$cbb6]
    add d
    ld [$cbb6], a
    ld d, a
    ld a, [$cbb2]
    sub d
    bit 7, a
    jr z, jr_000_1bd1

    ld a, $ff
    ld [$cbb0], a
    jr jr_000_1bd1

jr_000_1bab:
    ld a, [$cbae]
    sub d
    ld [$cbae], a
    ld a, [$cbaf]
    sbc $00
    ld [$cbaf], a
    ld a, [$cbb6]
    sub d
    ld [$cbb6], a
    ld d, a
    ld a, [$cbb2]
    cpl
    inc a
    sub d
    bit 7, a
    jr nz, jr_000_1bd1

    ld a, $01
    ld [$cbb0], a

jr_000_1bd1:
    ld a, [$cbae]
    ldh [rNR43], a
    ld a, [$cbaf]
    ldh [rNR44], a

Jump_000_1bdb:
    pop af
    ld [$2000], a
    ld [$c9ff], a
    ld hl, $cb2e
    bit 7, [hl]
    jr z, jr_000_1bf1

    res 7, [hl]
    ld hl, $ffff
    set 2, [hl]
    ret


Jump_000_1bf1:
jr_000_1bf1:
    pop hl
    pop de
    pop af
    reti


    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    adc e
    nop
    or $00
    ld e, e
    ld bc, $01bb
    dec d
    ld [bc], a
    ld l, d
    ld [bc], a
    cp d
    ld [bc], a
    ld b, $03
    ld c, l
    inc bc
    sub c
    inc bc
    ret nc

    inc bc
    inc c
    inc b
    ld b, l
    inc b
    ld a, e
    inc b
    xor l
    inc b
    db $dd
    inc b
    ld a, [bc]
    dec b
    dec [hl]
    dec b
    ld e, l
    dec b
    add e
    dec b
    and [hl]
    dec b
    ret z

    dec b
    add sp, $05
    ld b, $06
    ld [hl+], a
    ld b, $3d
    ld b, $56
    ld b, $6e
    ld b, $85
    ld b, $9a
    ld b, $ae
    ld b, $c1
    ld b, $d3
    ld b, $e4
    ld b, $f4
    ld b, $03
    rlca
    ld de, $1e07
    rlca
    dec hl
    rlca
    scf
    rlca
    ld b, d
    rlca
    ld c, l
    rlca
    ld d, a
    rlca
    ld h, b
    rlca
    ld l, c
    rlca
    ld [hl], d
    rlca
    ld a, d
    rlca
    add c
    rlca
    adc b
    rlca
    adc a
    rlca
    sub l
    rlca
    sbc e
    rlca
    and c
    rlca
    and [hl]
    rlca
    xor e
    rlca
    or b
    rlca
    or h
    rlca
    cp c
    rlca
    cp l
    rlca
    ret nz

    rlca
    call nz, $c707
    rlca
    jp z, $cd07

    rlca
    ret nc

    rlca
    db $d3
    rlca
    push de
    rlca
    ret c

    rlca
    jp c, $dc07

    rlca
    sbc $07
    ldh [rTAC], a
    ld [c], a
    rlca
    db $e3
    rlca
    push hl
    rlca
    and $07
    add sp, $07
    jp hl


    rlca
    ld [$ec07], a
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    pop af
    rlca
    ld a, [c]
    rlca
    di
    rlca
    db $f4
    rlca
    db $f4
    rlca
    push af
    rlca
    or $07
    or $07
    rst $30
    rlca
    rst $30
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    cp $dc
    db $fd
    ld [hl], a
    db $fc
    nop
    di
    ld b, $fb
    nop
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    inc h
    jr nc, jr_000_1d5e

    ld a, [c]

jr_000_1d2f:
    db $10
    or $0c
    dec h
    jr nc, @+$32

    ld a, [c]
    ld bc, $0af6
    ld h, $30
    jr nc, jr_000_1d2f

jr_000_1d3d:
    ld de, $08f6
    daa
    jr nc, jr_000_1d73

    ld a, [c]
    db $10
    or $06
    jr z, @+$32

    jr nc, jr_000_1d3d

    ld bc, $04f6
    add hl, hl
    jr nc, jr_000_1d81

    ld a, [c]
    ld de, $02f6
    ld a, [hl+]
    jr nc, jr_000_1d88

    add c
    cp $dc
    db $fd
    nop
    db $fc

jr_000_1d5e:
    nop
    di
    ld [bc], a
    ei
    ld a, a
    ld a, [$f900]
    ld b, b
    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    ld [hl-], a
    ld b, $06
    or $0d
    ld [hl-], a

jr_000_1d73:
    jr nc, jr_000_1da5

    or $08
    ld [hl-], a
    jr nc, jr_000_1daa

    add c
    cp $dc
    db $fd
    nop
    db $fc
    nop

jr_000_1d81:
    di
    inc b
    ei
    ld [hl-], a
    ld a, [$f900]

jr_000_1d88:
    call c, Call_000_00f8
    ld a, [c]
    ld de, $0ef6
    inc hl
    ld [$f608], sp
    add hl, bc
    inc hl
    db $10
    db $10
    add c
    cp $dc
    db $fd
    nop
    db $fc
    add b
    di
    dec b
    ei
    ld a, a
    ld a, [$f900]

jr_000_1da5:
    ld a, b
    ld hl, sp+$00
    or $0e

jr_000_1daa:
    jr nc, jr_000_1db8

    inc c
    or $0b
    jr nc, jr_000_1dbd

    inc c
    or $05
    jr nc, jr_000_1dc2

    inc c
    add c

jr_000_1db8:
    cp $dc
    db $fd
    nop
    db $fc

jr_000_1dbd:
    add b
    di
    dec b
    ei
    ld a, a

jr_000_1dc2:
    ld a, [$f900]
    ld a, b
    ld hl, sp+$00
    or $0d
    jr nc, jr_000_1dd8

    inc c
    or $09
    jr nc, jr_000_1ddd

    inc c
    or $04
    jr nc, jr_000_1de2

    inc c
    add c

jr_000_1dd8:
    cp $dc
    db $fd
    nop
    db $fc

jr_000_1ddd:
    ld [bc], a
    di
    ld bc, $00fb

jr_000_1de2:
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $11f2
    or $0e
    inc a
    ld b, $06
    or $09
    ld a, [c]
    db $10
    inc a
    ld b, $06
    ld a, [c]
    ld de, $0ef6
    ld b, e
    ld b, $06
    ld a, [c]
    ld bc, $09f6
    ld b, e
    ld b, $06
    add c
    db $fc
    add b
    inc a
    inc c
    inc c
    ld a, $0c
    inc c
    ld b, b
    inc c
    inc c
    ld b, c
    inc c
    inc c
    ld a, $0c
    inc c
    inc a
    inc c
    inc c
    add b
    inc bc
    inc bc
    add c
    cp $dc
    di
    ld bc, $dcfb
    ld a, [$f900]
    call c, Call_000_00f8
    or $0e
    rra
    inc c
    inc c
    or $06
    rra
    inc c
    inc c
    add c
    cp $dc
    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    or $0d
    rra
    ld [$f604], sp
    dec bc
    rra
    ld [$8104], sp
    cp $dc
    db $fd
    nop
    db $fc
    add b
    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]

jr_000_1e5e:
    ld de, $0ef6
    ld b, c
    ld [$4808], sp
    ld [$f608], sp
    dec c
    ld c, l
    jr nc, @+$32

    add c
    cp $dc
    db $fd
    nop
    db $fc
    nop
    di
    nop
    ei
    ld d, b
    ld a, [$f900]
    ld a, b
    ld hl, sp+$00
    ld a, [c]
    ld de, $04f6
    jr jr_000_1e8b

    ld [$0ef6], sp
    rra
    jr jr_000_1ea1

    or $03

jr_000_1e8b:
    jr jr_000_1e95

    ld [$0bf6], sp
    jr nz, @+$1a

    jr @-$08

    ld [bc], a

jr_000_1e95:
    jr jr_000_1e9f

    ld [$09f6], sp
    ld hl, $0c0c
    or $05

jr_000_1e9f:
    jr jr_000_1ea9

jr_000_1ea1:
    ld [$0c22], sp
    inc c
    or $03
    jr jr_000_1eb1

jr_000_1ea9:
    ld [$0c23], sp
    inc c
    or $01
    jr jr_000_1eb9

jr_000_1eb1:
    ld [$0c24], sp
    inc c
    add c
    cp $dc
    db $fd

jr_000_1eb9:
    nop
    db $fc
    ret nz

    di
    ld [bc], a
    ei
    call c, Call_000_00fa
    ld sp, hl
    call c, Call_000_00f8
    ld a, [c]
    ld de, $0ef6
    jr z, @+$08

    ld b, $f6
    ld a, [bc]
    jr z, @+$08

    ld b, $f6
    dec bc
    jr z, @+$08

    ld b, $f6
    rlca
    jr z, @+$1a

    jr jr_000_1e5e

    db $fc
    nop
    inc c
    ld b, $06
    ld c, $03
    inc bc
    ld de, $0606
    db $10
    ld b, $06
    inc c
    ld b, $06
    ld c, $03
    inc bc
    ld de, $0606
    db $10
    ld b, $06
    add b
    inc c
    inc c
    inc c
    ld b, $06
    ld c, $03
    inc bc
    ld de, $0606
    inc c
    ld b, $06
    inc c
    ld b, $06
    ld c, $03
    inc bc
    ld de, $0606
    inc c
    ld b, $06
    add b
    jr jr_000_1f2d

    add c
    db $fc
    add b
    db $fc
    add b
    inc c
    inc c
    inc c
    di
    xor a
    inc c
    ld h, b
    ld h, b
    add b
    inc bc
    inc bc
    add c
    cp $dc
    db $fd
    nop
    db $fc
    nop
    di

jr_000_1f2d:
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $10f2
    or $0e
    inc a
    ld [$4008], sp
    ld [$f208], sp
    ld de, $0843
    ld [$0843], sp
    ld [$01f2], sp
    ld c, b
    ld [$4c08], sp
    ld [$f208], sp
    ld de, $0df6
    ld c, a
    ld [$f208], sp
    db $10
    or $0a
    ld c, a
    ld [$f208], sp
    ld de, $08f6
    ld c, a
    ld [$f208], sp
    ld bc, $04f6
    ld c, a
    ld [$8108], sp
    cp $dc
    db $fd
    nop
    db $fc
    nop
    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    ld d, h
    inc bc
    inc bc
    ld h, b
    inc bc
    inc bc
    or $0c
    ld d, h
    inc bc
    inc bc
    ld h, b
    inc bc
    inc bc
    add c
    cp $dc
    db $fd
    nop
    db $fc
    nop
    di
    nop
    or $0d
    ei
    nop
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0218
    ld [bc], a
    add hl, de
    ld [bc], a
    ld [bc], a
    add c
    cp $dc
    di
    ld [bc], a
    ei
    ld a, [$00fa]
    ld sp, hl
    ld a, [$00f8]
    or $0e
    rra
    ld b, $03
    or $0a
    rra
    ld b, $03
    or $08
    rra
    ld b, $02
    or $04
    rra
    ld b, $02
    or $02
    rra
    ld b, $01
    add c
    cp $dc
    di
    ld bc, $f0fb
    ld a, [$f900]
    ret z

    ld hl, sp+$00
    or $0e
    rra
    ld b, $06
    or $0b
    rra
    ld b, $06
    or $06
    rra
    ld b, $06
    or $04
    rra
    ld b, $06
    add c
    cp $dc
    db $fd
    nop
    db $fc
    ret nz

    di
    inc b
    ei
    nop
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0c80
    inc c
    ld a, [c]
    ld de, $0ef6
    ld b, e
    ld b, $06
    or $07
    ld b, e
    ld b, $06
    or $0e
    ld c, b
    ld b, $06
    or $07
    ld c, b
    ld b, $06
    or $0e
    ld c, d
    ld b, $06
    or $07
    ld c, d
    ld b, $06
    or $0e
    ld c, a
    ld b, $06
    or $07
    ld c, a
    ld b, $06
    or $0e
    ld c, d
    ld b, $06
    or $07
    ld c, d
    ld b, $06
    or $0e
    ld c, b
    ld b, $06
    or $07
    ld c, b
    ld b, $06
    ld a, [c]
    db $10
    or $0a
    ld b, e
    ld b, $06
    or $05
    ld b, e
    ld b, $06
    or $0a
    ld c, b
    ld b, $06
    or $05
    ld c, b
    ld b, $06
    or $0a
    ld c, d
    ld b, $06
    or $05
    ld c, d
    ld b, $06
    or $0a
    ld c, a
    ld b, $06
    or $05
    ld c, a
    ld b, $06
    or $0a
    ld c, d
    ld b, $06
    or $05
    ld c, d
    ld b, $06
    or $0a
    ld c, b
    ld b, $06
    or $05
    ld c, b
    ld b, $06
    ld a, [c]
    ld bc, $07f6
    ld b, e
    ld b, $06
    or $03
    ld b, e
    ld b, $06
    or $07
    ld c, b
    ld b, $06
    or $03
    ld c, b
    ld b, $06
    or $07
    ld c, d
    ld b, $06
    or $03
    ld c, d
    ld b, $06
    or $07
    ld c, a
    ld b, $06
    or $03
    ld c, a
    ld b, $06
    or $07
    ld c, d
    ld b, $06
    or $03
    ld c, d
    ld b, $06
    or $07
    ld c, b
    ld b, $06
    or $03
    ld c, b
    ld b, $06
    ld a, [c]
    ld de, $05f6
    ld b, e
    ld b, $06
    or $02
    ld b, e
    ld b, $06
    or $05
    ld c, b
    ld b, $06
    or $02
    ld c, b
    ld b, $06
    or $04
    ld c, d
    ld b, $06
    or $02
    ld c, d
    ld b, $06
    or $04
    ld c, a
    ld b, $06
    or $02
    ld c, a
    ld b, $06
    or $03
    ld c, d
    ld b, $06
    or $01
    ld c, d
    ld b, $06
    or $02
    ld c, b
    ld b, $06
    or $01
    ld c, b
    ld b, $06
    add c
    cp $dc
    di
    ld [bc], a
    ei
    nop
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    adc b
    or $0c
    inc h
    ld b, $03
    or $08
    inc h
    ld b, $04
    or $02
    inc h
    ld b, $04
    add c
    cp $dc
    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    or $0f
    inc h
    inc c
    ld bc, $fe81
    call c, Call_000_06f3
    ei
    nop
    ld a, [$f900]
    nop
    ld hl, sp+$00
    or $0e
    add hl, sp

Jump_000_2141:
    inc bc
    inc bc
    or $0b
    add hl, sp
    inc bc
    inc bc
    or $08
    add hl, sp
    inc bc
    inc bc
    or $0e

Call_000_214f:
    add hl, sp
    ld b, $06
    or $0c
    add hl, sp
    ld b, $06
    or $0a
    add hl, sp
    ld b, $06
    or $08
    add hl, sp
    inc c
    inc c
    or $06
    add hl, sp
    inc c
    inc c
    or $03
    add hl, sp
    ld b, $06
    or $01
    add hl, sp
    ld b, $06
    add c
    cp $dc
    db $fd
    nop
    db $fc
    nop
    di
    ld bc, $0bf6
    ei
    ret z

    ld a, [$f900]
    ret z

    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    inc h
    ld [$f608], sp
    inc c
    jr nc, @+$0a

    ld [$0af6], sp
    inc a
    ld [$8108], sp
    cp $dc
    db $fd
    nop
    db $fc
    ld b, b
    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    ld b, e
    inc bc
    inc bc
    ld c, b
    inc bc
    inc bc
    add c
    cp $dc
    db $fd
    nop
    db $fc
    ret nz

    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    inc a
    inc bc
    inc bc
    or $08
    inc a
    inc bc
    inc bc
    or $0e
    ld a, $03
    inc bc
    or $08
    ld a, $03
    inc bc
    or $0c
    ld b, b
    inc bc
    inc bc
    or $06
    ld b, b
    inc bc
    inc bc
    or $0a
    ld b, e
    inc bc
    inc bc
    or $04
    ld b, e
    inc bc
    inc bc
    ld a, [c]
    db $10
    or $08
    inc a
    inc bc
    inc bc
    or $04
    inc a
    inc bc
    inc bc
    or $06
    ld a, [c]
    ld de, $033e
    inc bc
    or $03
    ld a, $03
    inc bc
    or $04
    ld a, [c]
    ld bc, $0340
    inc bc
    or $02
    ld b, b
    inc bc
    inc bc
    ld a, [c]
    ld de, $03f6
    ld b, e
    inc bc
    inc bc
    or $01
    ld b, e
    inc bc
    inc bc
    add c
    cp $dc
    db $fd
    nop
    db $fc
    ld b, b
    di
    ld bc, $00fb
    ld a, [$f900]
    nop
    ld hl, sp+$00
    ld a, [c]
    ld de, $0ef6
    inc a
    inc bc
    inc bc
    scf
    inc bc
    inc bc
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $dd
    call z, $aabb
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $0100
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    call $feef
    call c, $98ba
    db $76
    ld d, h
    ld [hl-], a
    db $10
    rst $38
    xor $dd
    call z, $aabb
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $0200
    ld b, [hl]
    adc d
    adc $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ec
    xor b
    ld h, h
    jr nz, jr_000_22a9

    ld [hl+], a
    db $dd
    db $dd
    ld [hl+], a
    ld [hl+], a
    db $dd
    db $dd
    ld [hl+], a
    ld [hl+], a
    db $dd
    db $dd
    ld [hl+], a
    ld [hl+], a
    db $dd
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [bc], a
    dec [hl]
    ld l, b

jr_000_22a9:
    sbc e
    nop
    nop
    ld b, h
    ld b, h
    nop
    nop
    ld b, h
    ld b, h
    nop
    nop
    ld b, h
    ld b, h
    ld b, $66
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    and b
    ld [$bc9a], sp
    sbc $fe
    db $ed
    res 5, c
    add a
    ld h, l
    ld b, e
    ld hl, $2301
    ld b, l
    ld h, a
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $eeff
    db $dd
    call z, $aabb
    sbc c
    adc b

Call_000_22e6:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_000_22ff

    cpl
    inc a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jr jr_000_230b

jr_000_22ff:
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_000_230b:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ld hl, $000f
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, h
    ld d, l
    ld hl, $000f
    add hl, bc
    ld [hl], d
    inc hl
    ld [hl], a
    bit 7, a
    jr nz, jr_000_233e

    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $10
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jr jr_000_234c

jr_000_233e:
    cpl
    inc a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_000_234c:
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_000_235c

    ld a, $1f
    ld hl, $0006
    add hl, bc
    ld [hl], a

jr_000_235c:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ret


Call_000_2365:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr z, jr_000_237e

    cpl
    inc a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $18
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jr jr_000_238a

jr_000_237e:
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_000_238a:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ret


Call_000_2393:
    ld hl, $000f
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, h
    ld d, l
    ld hl, $000f
    add hl, bc
    ld [hl], d
    inc hl
    ld [hl], a
    bit 7, a
    jr nz, jr_000_23c5

    cp $20
    jr c, jr_000_23b7

    ld a, $1f
    ld [hl], a

jr_000_23b7:
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $10
    ld hl, $0007
    add hl, bc
    ld [hl], a
    jr jr_000_23d3

jr_000_23c5:
    cpl
    inc a
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_000_23d3:
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_000_23e3

    ld a, $1f
    ld hl, $0006
    add hl, bc
    ld [hl], a

jr_000_23e3:
    ld a, $01
    ld hl, $4000
    call Call_000_08ae
    ret


Call_000_23ec:
    ld bc, $0380
    ld hl, $c100

jr_000_23f2:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_23f2

    ret


Call_000_23fa:
    ld hl, $c100
    call Call_000_26e3
    ld bc, $0340
    ld hl, $c140

jr_000_2406:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2406

    ret


Call_000_240e:
    push hl
    push af
    ld a, [$cbbf]
    cp $80
    jr z, jr_000_2438

    ld a, [$cbc2]
    ld l, a
    ld a, [$cbc3]
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl+], a
    inc hl
    push af
    res 1, h
    ld a, l
    ld [$cbc2], a
    ld a, h
    ld [$cbc3], a
    ld hl, $cbbf
    inc [hl]
    pop af
    jr jr_000_2439

jr_000_2438:
    pop af

jr_000_2439:
    pop hl
    ret


jr_000_243b:
    jr jr_000_243b

    xor a
    ld [$cbbf], a
    ld a, $cc
    ld [$cbc1], a
    ld [$cbc3], a
    ret


Call_000_244a:
    ld a, [de]
    ld [$c821], a
    ld [$c822], a
    inc de
    ld a, [de]
    ld [$c823], a
    inc de

jr_000_2457:
    ld a, h
    ld [$c820], a
    ld a, l
    ld [$c81f], a

jr_000_245f:
    ld a, [de]
    inc de
    push de
    ld d, h
    ld e, l
    call Call_000_240e
    pop de
    inc hl
    ld a, [$c821]
    dec a
    ld [$c821], a
    jr nz, jr_000_245f

    ld a, [$c823]
    dec a
    jr z, jr_000_2493

    ld [$c823], a
    ld a, [$c822]
    ld [$c821], a
    ld a, [$c820]
    ld h, a
    ld a, [$c81f]
    ld l, a
    ld a, $20
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_000_2457

jr_000_2493:
    ret


Call_000_2494:
    push hl
    push af
    ld a, [$c873]
    cp $10
    jr z, jr_000_24b8

    inc a
    ld [$c873], a
    dec a
    and $0f
    ld h, a
    add a
    add h
    ld hl, $c843
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl], a
    jr jr_000_24b9

jr_000_24b8:
    pop af

jr_000_24b9:
    pop hl
    ret


    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ret


    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ret


Call_000_24cd:
    push de
    ld a, [$c985]
    inc a
    ld [$c985], a
    ld de, $24e1
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    pop de
    ret


    ld a, $f2
    ld b, b
    inc b
    jp c, $4467

    rrca
    cp [hl]
    db $eb
    ld h, c
    db $fc
    ld l, b
    inc d
    xor c
    ld c, a
    sbc d
    or [hl]
    ld e, c
    cp e
    inc hl
    db $f4
    ld d, a
    reti


    add b
    db $dd
    inc c

jr_000_24fc:
    ld b, $33
    adc l
    ld c, e
    ld h, d
    dec de
    dec h
    push de
    db $10
    ld l, l
    ld e, h
    jp hl


    db $e3
    rst $38
    pop bc
    xor [hl]
    ld a, [$7dc7]
    ld [hl], l
    pop af
    inc l
    ccf
    ld d, h
    add hl, de
    ld a, a
    or d
    ld hl, $e5ce
    jp z, $0b50

    ld h, l
    ld l, h
    ret nc

    db $ed
    xor h
    sbc l
    ret z

    dec sp
    and [hl]
    ld a, [hl]
    adc d
    add hl, hl
    ld l, c
    ld a, [hl-]
    add $f8
    ld [hl], e
    sbc h
    add e
    ld d, $36
    rla
    ld h, $e6
    call z, $6fe4
    ld e, b
    ld d, c
    jp nc, $4a1f

    ld c, $a4
    ld l, $dc
    sub $4e
    sub [hl]
    rst $20
    ld sp, hl
    ld h, b
    ld b, e
    add h
    daa
    add sp, -$49
    adc b
    and l
    ld b, a
    sub b
    add a
    di
    db $ec

jr_000_2553:
    sbc $af
    ret nz

    inc h
    cp c
    add l
    cpl
    ld e, [hl]
    cp $86
    ld e, d
    or $1e
    rst $18
    ld b, c
    ld e, l
    adc a
    inc e
    sub h
    rst $30
    dec hl
    ld e, a
    ld l, [hl]
    ld l, e
    ld b, [hl]
    ld a, d
    ld d, l
    add hl, bc
    and c
    ld [hl-], a
    jr jr_000_24fc

    xor l
    dec d
    jp nz, $c493

    inc bc
    ld c, h
    ld h, e
    ld l, d
    sbc b
    sub c
    ld de, $4500
    ld a, [de]
    ld [hl+], a
    or h
    ld [hl], a
    inc [hl]
    call $e1fb
    and d
    dec c
    ld c, b
    jp $2a01


    rst $28
    ld [hl], d
    ret


    bit 6, b
    ld sp, $07d3
    ld h, [hl]
    ld a, [bc]
    xor $38
    dec b
    db $fd
    ld [$37e0], a
    ld c, c
    ld a, b
    ld a, h
    ld [bc], a
    ld d, e
    add hl, sp
    ld b, d
    jr z, jr_000_2553

    adc [hl]
    or c
    xor e
    ld [hl], c
    ld d, [hl]
    inc de
    cp d
    xor b
    push af
    pop de
    dec l
    rst $08
    ld [$8cbf], sp
    push bc
    inc a
    db $db
    adc e
    or e
    jr nc, jr_000_260c

    ld a, e
    ld e, e
    and e
    sub l
    cp b
    dec a
    sub a
    ld [hl], h
    dec e
    dec [hl]
    ld [c], a
    or l
    add c
    sbc a
    ld h, h
    and b
    sbc [hl]
    ld a, c
    and a
    or b
    db $76
    sbc e
    ret c

    call nc, $2052
    cp h
    sbc c
    ldh a, [$92]
    ld [de], a
    cp l
    add d
    rst $10

Call_000_25e1:
    ld a, [$cb2a]
    and a
    jr nz, jr_000_2624

    ld a, [$c9ff]
    push af
    ld a, $06
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, [$cb28]
    ld h, a
    ld a, [$cb27]
    ld l, a
    ld a, [hl+]
    ld [$cb2b], a
    ld a, [hl+]
    ld [$cb2a], a

jr_000_260c:
    ld a, h
    ld [$cb28], a
    ld a, l
    ld [$cb27], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl

jr_000_2624:
    ld a, [$cb2b]
    ldh [$9b], a
    ld d, a
    ld a, [$cb29]
    cpl
    and d
    ldh [$9c], a
    ld a, d
    ld [$cb29], a
    ld hl, $cb2a
    dec [hl]
    ret


Call_000_263a:
    ld hl, $cb2c
    bit 1, [hl]
    jr nz, jr_000_2691

    ldh a, [$9b]
    ld hl, $cb2c
    bit 0, [hl]
    jr nz, jr_000_264f

    ld [$cb2b], a
    set 0, [hl]

jr_000_264f:
    ld d, a
    ld a, [$cb2b]
    ld e, a
    cp d
    jr nz, jr_000_2666

    ld a, [$cb2a]
    inc a
    ld [$cb2a], a
    jr nz, jr_000_2691

    dec a
    ld [$cb2a], a
    res 0, [hl]

jr_000_2666:
    ld a, [$cb28]
    ld h, a
    ld a, [$cb27]
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, [$cb2a]
    ld [hl+], a
    ld a, h
    cp $e0
    jr nz, jr_000_2680

    ld hl, $cb2c
    set 1, [hl]
    jr jr_000_2691

jr_000_2680:
    ld a, h
    ld [$cb28], a
    ld a, l
    ld [$cb27], a
    ld a, d
    ld [$cb2b], a
    ld a, $01
    ld [$cb2a], a

jr_000_2691:
    ret


Call_000_2692:
    ld a, [$c804]
    ld d, a
    ld a, [$c823]
    add d
    sub $10
    ld d, a
    and $0f
    ld [$c827], a
    ld a, d
    and $f0
    ld h, $00
    ld l, a
    ld a, [$c803]
    ld d, a
    ld a, [$c821]
    add d
    sub $08
    ld d, a
    and $0f
    ld [$c825], a
    ld a, d
    and $f0
    swap a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $c874
    add hl, de
    ld a, [hl]
    ret


Call_000_26c7:
    push bc
    push hl
    ld b, a

jr_000_26ca:
    ld hl, $0001
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_000_26e0

    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c82b
    dec b
    jr nz, jr_000_26ca

    or $01

jr_000_26e0:
    pop hl
    pop bc
    ret


Call_000_26e3:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_000_2705:
    push af
    push de
    push hl
    ld a, [currentStage]
    ld hl, $c982
    bit 1, [hl]
    jr z, jr_000_2714

    add $09

jr_000_2714:
    add a
    add a
    add a
    ld hl, $273c
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c819], a
    ld a, [hl+]
    ld [$c81a], a
    ld a, [hl+]
    ld [$c9f5], a
    ld a, [hl+]
    ld [$c9f6], a
    ld a, [hl+]
    ld d, a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    call Call_000_0493
    pop hl
    pop de
    pop af
    ret


    nop
    ld c, h
    nop
    ld b, b
    ld b, $00
    jr @+$51

    nop
    ld c, a
    nop
    ld b, b
    rlca
    nop
    jr jr_000_279e

    nop
    ld c, [hl]
    nop
    ld b, b
    ld [$1800], sp
    ld d, c
    nop
    ld c, [hl]
    nop
    ld b, b
    add hl, bc
    nop
    jr jr_000_27ad

    nop
    ld c, a
    nop
    ld b, b
    ld a, [bc]
    nop
    jr jr_000_27b6

    nop
    ld c, a
    nop
    ld b, b
    dec bc
    nop
    jr jr_000_27be

    nop
    ld c, a
    nop
    ld b, b
    inc c
    nop
    jr jr_000_27c6

    nop
    ld c, [hl]
    nop
    ld b, b
    dec c
    nop
    jr @+$53

    nop
    ld a, e
    nop
    ld b, b
    ld e, $00
    jr @+$80

    nop
    ld c, h
    nop
    ld c, c
    ld b, $00
    jr @+$51

    nop
    ld c, a
    nop
    ld c, d
    rlca
    nop
    jr jr_000_27e6

    nop
    ld c, [hl]
    nop
    ld c, c
    ld [$1800], sp
    ld d, c
    nop
    ld c, [hl]

jr_000_279e:
    nop
    ld c, e
    add hl, bc
    nop
    jr jr_000_27f5

    nop
    ld c, a
    nop
    ld c, e
    ld a, [bc]
    nop
    jr jr_000_27fe

    nop

jr_000_27ad:
    ld c, a
    nop
    ld b, e
    dec bc
    nop
    jr @+$54

    nop
    ld c, a

jr_000_27b6:
    nop
    ld c, c
    inc c
    nop
    jr jr_000_280e

    nop
    ld c, [hl]

jr_000_27be:
    nop
    ld c, e
    dec c
    nop
    jr jr_000_2815

    nop
    ld a, e

jr_000_27c6:
    nop
    ld e, l
    ld e, $00
    jr jr_000_284a

Call_000_27cc:
    ld hl, $c982
    bit 0, [hl]
    jr nz, jr_000_27e1

    ld a, [currentStage]
    cp $08
    jr nz, jr_000_27dc

    ld a, $1b

jr_000_27dc:
    call Call_000_0903
    jr jr_000_27e6

jr_000_27e1:
    ld a, $1d
    call Call_000_0903

jr_000_27e6:
    ret


Call_000_27e7:
    ld a, [currentStage]
    cp $08
    jr nz, jr_000_27f0

    ld a, $07

jr_000_27f0:
    add $08
    call Call_000_0903

jr_000_27f5:
    ret


Call_000_27f6:
    push af
    push bc
    push de
    push hl
    call Call_000_0619
    xor a

jr_000_27fe:
    ld [$c980], a
    ld [$c981], a
    ld a, [currentStage]
    cp $08
    jr z, jr_000_2817

    ld a, [currentPassword]

jr_000_280e:
    ld h, $00
    ld l, a
    ld de, $cb13
    add hl, de

jr_000_2815:
    ld [hl], $01

jr_000_2817:
    ld a, [$c9ff]
    push af
    ld a, [$ca02]
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, $10
    ld [$c82d], a
    ld a, $10
    ld [$c82b], a
    ld a, [$c9f6]
    ld b, a
    ld a, [$c9f5]
    ld c, a
    ld de, $9800

jr_000_2842:
    ld a, [bc]
    inc bc
    call Call_000_294b
    jr z, jr_000_2879

    push de

jr_000_284a:
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld a, [$c81a]
    ld d, a
    ld a, [$c819]
    ld e, a
    add hl, de
    pop de
    ld a, [hl+]
    cp $ff
    jr z, jr_000_2879

    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    push de
    ld a, e
    add $1e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    pop de
    jr jr_000_288e

jr_000_2879:
    ld a, $ff
    ld [de], a
    inc de
    ld [de], a
    inc de
    push de
    ld a, e
    add $1e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    inc de
    ld [de], a
    pop de

jr_000_288e:
    ld hl, $c82b
    dec [hl]
    jr nz, jr_000_2842

    ld hl, $c82d
    dec [hl]
    jr z, jr_000_28a9

    ld a, $10
    ld [$c82b], a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jr jr_000_2842

jr_000_28a9:
    ld a, $10
    ld [$c82d], a
    ld a, $10
    ld [$c82b], a
    ld a, [$c9f6]
    ld b, a
    ld a, [$c9f5]
    ld c, a
    ld de, $c874

jr_000_28be:
    ld a, [bc]
    call Call_000_2a0c
    ld [de], a
    push de
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld a, [$c81a]
    ld d, a
    ld a, [$c819]
    ld e, a
    add hl, de
    pop de
    ld a, [hl]
    cp $ff
    jr nz, jr_000_28e2

    call Call_000_2ab3
    jr z, jr_000_28e2

    xor a
    ld [de], a

jr_000_28e2:
    inc bc
    inc de
    ld hl, $c82b
    dec [hl]
    jr nz, jr_000_28be

    ld a, $10
    ld [$c82b], a
    ld hl, $c82d
    dec [hl]
    jr nz, jr_000_28be

    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $c983
    bit 2, [hl]
    jr z, jr_000_2946

    ld a, [$c9ff]
    push af
    ld a, $1f
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, [currentStage]
    add a
    add a
    ld d, a
    ld e, $00
    ld hl, $5000
    add hl, de
    ld de, $9800
    ld bc, $0400
    call Call_000_03b2
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl

jr_000_2946:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_294b:
    push af
    push hl
    cp $20
    jp z, Jump_000_29e1

    cp $0c
    jp z, Jump_000_29ea

    ld hl, levelDiamondsBitFlag
    cp $13
    jr z, jr_000_2993

    cp $14
    jr z, jr_000_2999

    cp $15
    jr z, jr_000_299f

    cp $16
    jr z, jr_000_29a5

    cp $17
    jr z, jr_000_29ab

    ld hl, levelLivesBitFlag
    cp $27
    jr z, jr_000_29b1

    cp $47
    jr z, jr_000_29b7

    cp $48
    jr z, jr_000_29bd

    cp $49
    jr z, jr_000_29c3

    cp $4a
    jr z, jr_000_29c9

    cp $4b
    jr z, jr_000_29cf

    cp $4c
    jr z, jr_000_29d5

    cp $4d
    jr z, jr_000_29db

    jr jr_000_2a03

jr_000_2993:
    bit 0, [hl]
    jr nz, jr_000_29f4

    jr jr_000_29f8

jr_000_2999:
    bit 1, [hl]
    jr nz, jr_000_29f4

    jr jr_000_29f8

jr_000_299f:
    bit 2, [hl]
    jr nz, jr_000_29f4

    jr jr_000_29f8

jr_000_29a5:
    bit 3, [hl]
    jr nz, jr_000_29f4

    jr jr_000_29f8

jr_000_29ab:
    bit 4, [hl]
    jr nz, jr_000_29f4

    jr jr_000_29f8

jr_000_29b1:
    bit 0, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29b7:
    bit 1, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29bd:
    bit 2, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29c3:
    bit 3, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29c9:
    bit 4, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29cf:
    bit 5, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29d5:
    bit 6, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

jr_000_29db:
    bit 7, [hl]
    jr nz, jr_000_29f4

    jr jr_000_2a03

Jump_000_29e1:
    ld a, [diamonds]
    cp $05
    jr z, jr_000_29f4

    jr jr_000_2a03

Jump_000_29ea:
    ld a, $80
    ld hl, $06f6
    call Call_000_0593
    jr jr_000_2a03

jr_000_29f4:
    pop hl
    pop af
    xor a
    ret


jr_000_29f8:
    ld a, $80
    ld hl, $0716
    call Call_000_0593
    ld [$c976], a

jr_000_2a03:
    pop hl
    pop af
    push de
    ld d, a
    or $01
    ld a, d
    pop de
    ret


Call_000_2a0c:
    push af
    push hl
    cp $20
    jp z, Jump_000_2a9d

    ld hl, levelDiamondsBitFlag
    cp $13
    jr z, jr_000_2a4f

    cp $14
    jr z, jr_000_2a55

    cp $15
    jr z, jr_000_2a5b

    cp $16
    jr z, jr_000_2a61

    cp $17
    jr z, jr_000_2a67

    ld hl, levelLivesBitFlag
    cp $27
    jr z, jr_000_2a6d

    cp $47
    jr z, jr_000_2a73

    cp $48
    jr z, jr_000_2a79

    cp $49
    jr z, jr_000_2a7f

    cp $4a
    jr z, jr_000_2a85

    cp $4b
    jr z, jr_000_2a8b

    cp $4c
    jr z, jr_000_2a91

    cp $4d
    jr z, jr_000_2a97

    jr jr_000_2aaa

jr_000_2a4f:
    bit 0, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a55:
    bit 1, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a5b:
    bit 2, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a61:
    bit 3, [hl]

Jump_000_2a63:
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a67:
    bit 4, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a6d:
    bit 0, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a73:
    bit 1, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a79:
    bit 2, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a7f:
    bit 3, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a85:
    bit 4, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a8b:
    bit 5, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a91:
    bit 6, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2a97:
    bit 7, [hl]
    jr nz, jr_000_2aa6

    jr jr_000_2aaa

Jump_000_2a9d:
    ld a, [diamonds]
    cp $05
    jr z, jr_000_2aa6

    jr jr_000_2aaa

jr_000_2aa6:
    pop hl
    pop af
    xor a
    ret


jr_000_2aaa:
    pop hl
    pop af
    push de
    ld d, a
    or $01
    ld a, d
    pop de
    ret


Call_000_2ab3:
    push bc
    push de
    push hl
    ld a, [bc]
    push af
    ld h, d
    ld l, e
    call Call_000_2db9
    ld b, h
    ld c, l
    pop af
    cp $31
    jp z, Jump_000_2c75

    cp $2c
    jp z, Jump_000_2cf3

    push af
    cp $0e
    jr z, jr_000_2ae3

    cp $10
    jr z, jr_000_2ae3

    cp $0f
    jr z, jr_000_2ae3

    ld de, $c200
    ld a, [$c981]
    inc a
    ld [$c981], a
    jr jr_000_2aed

jr_000_2ae3:
    ld de, $c160
    ld a, [$c980]
    inc a
    ld [$c980], a

jr_000_2aed:
    ld a, $05
    call Call_000_26c7

Jump_000_2af2:
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a

Call_000_2af9:
    ld a, b
    add $08
    ld hl, $0004
    add hl, de

Call_000_2b00:
    ld [hl], a
    ld a, c
    add $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    pop af
    cp $05
    jp z, Jump_000_2b4e

    cp $06
    jp z, Jump_000_2b5f

    cp $07
    jp z, Jump_000_2b70

    cp $21
    jp z, Jump_000_2b8f

    cp $22
    jp z, Jump_000_2bae

    cp $23
    jp z, Jump_000_2bcd

    cp $24
    jp z, Jump_000_2bec

    cp $25
    jp z, Jump_000_2c0b

    cp $0e
    jp z, Jump_000_2c2a

    cp $0f
    jp z, Jump_000_2c3b

    cp $10
    jp z, Jump_000_2c53

    cp $26
    jp z, Jump_000_2c64

    ld h, d
    ld l, e
    call Call_000_26e3
    jp Jump_000_2cfe


Jump_000_2b4e:
    ld a, $04
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0a
    ld hl, $0002
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2b5f:
    ld a, $04
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0b
    ld hl, $0002
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2b70:
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $30
    ld hl, $000e
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2b8f:
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $60
    ld hl, $000e
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2bae:
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $90
    ld hl, $000e
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2bcd:
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $30
    ld hl, $000e
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2bec:
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $60
    ld hl, $000e
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2c0b:
    ld a, $06
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $0c
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld a, $90
    ld hl, $000e
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2c2a:
    ld a, $0d
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $11
    ld hl, $0002
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2c3b:
    ld a, $0e
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $14
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld a, $02
    ld hl, $001d
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2c53:
    ld a, $0f
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $17
    ld hl, $0002
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2c64:
    ld a, $04
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $1c
    ld hl, $0002
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2c75:
    ld a, [currentStage]
    cp $03
    jr z, jr_000_2ca0

    ld de, $c100
    ld a, $2c
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, b
    add $08
    ld hl, $0004
    add hl, de
    ld [hl], a
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $11
    ld hl, $0001
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


jr_000_2ca0:
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
    add $10
    ld hl, $0005
    add hl, de
    ld [hl], a
    ld a, $15
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, $33
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld a, $36
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
    ld a, $08
    ld hl, $001a
    add hl, de
    ld [hl], a
    ld a, $10
    ld hl, $001b
    add hl, de
    ld [hl], a
    jp Jump_000_2cfe


Jump_000_2cf3:
    ld a, $03
    ld hl, $61a1
    call Call_000_08ae
    jp Jump_000_2cfe


Jump_000_2cfe:
    or $01
    jr jr_000_2d03

    xor a

jr_000_2d03:
    pop hl
    pop de
    pop bc
    ret


Call_000_2d07:
    ld a, [currentStage]
    push af
    cp $08
    jr nz, jr_000_2d14

    ld a, $07
    ld [currentStage], a

jr_000_2d14:
    ld a, [$c9ff]
    push af
    ld hl, $c983
    bit 2, [hl]
    jr z, jr_000_2d23

    ld a, $16
    jr jr_000_2d2f

jr_000_2d23:
    ld a, [currentStage]
    ld hl, $c983
    bit 0, [hl]
    jr z, jr_000_2d2f

    add $08

jr_000_2d2f:
    ld d, a
    add a
    add d
    ld hl, $2d74
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb10], a
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [$cb11], a
    ld a, h
    ld [$cb12], a
    ld de, $8000
    ld bc, $1800
    call Call_000_03b2
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    pop af
    ld [currentStage], a
    ret


    ld [de], a
    nop
    ld b, b
    ld [de], a
    nop
    ld d, b
    ld [de], a
    nop
    ld h, b
    ld [de], a
    nop
    ld [hl], b
    inc de
    nop
    ld b, b
    inc de
    nop
    ld d, b
    inc de
    nop
    ld h, b
    inc de
    nop
    ld [hl], b
    inc d
    nop
    ld b, b
    inc d
    nop
    ld d, b
    inc d
    nop
    ld h, b
    inc d
    nop
    ld [hl], b
    dec d
    nop
    ld b, b
    dec d
    nop
    ld d, b
    dec d
    nop
    ld h, b
    dec d
    nop
    ld [hl], b
    rla
    nop
    ld b, b
    ld d, $00
    ld h, b
    add hl, de
    nop
    ld b, b
    add hl, de
    nop
    ld d, b
    add hl, de
    nop
    ld h, b
    add hl, de
    nop
    ld [hl], b
    rra
    nop
    ld b, b

Call_000_2db9:
    ld de, $378c
    add hl, de
    ld a, l
    ld e, a
    and $0f
    swap a
    add $08
    ld h, a
    ld a, [$c803]
    cpl
    inc a
    add h
    ld h, a
    ld a, e
    and $f0
    add $10
    ld l, a
    ld a, [$c804]
    cpl
    inc a
    add l
    ld l, a
    ret


Call_000_2ddb:
    ld de, $378c
    add hl, de
    ld a, l
    ld d, a
    and $0f
    add a
    ld e, a
    ld a, d
    and $f0
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld a, e
    add l
    ld l, a
    ld a, h
    adc $00
    ld de, $9800
    add hl, de
    ret


Call_000_2df8:
    ld [$c810], a
    ld a, d
    ld [$c811], a
    ld a, $04
    ld [$c812], a
    xor a
    ld [$c813], a
    ld a, [$c810]
    cp $00
    jr nz, jr_000_2e1b

    xor a
    ld [$c814], a
    ld [$c815], a
    ld [$c816], a
    jr jr_000_2e60

jr_000_2e1b:
    cp $02
    jr nz, jr_000_2e2c

    ld a, $ff
    ld [$c814], a
    ld [$c815], a
    ld [$c816], a
    jr jr_000_2e60

jr_000_2e2c:
    ld a, [$c80d]
    ld [$c814], a
    ld a, [$c80e]
    ld [$c815], a
    ld a, [$c80f]
    ld [$c816], a
    ld a, [$c811]
    ld d, a
    ld a, [$c810]
    cp $01
    jr nz, jr_000_2e4c

    xor a
    jr jr_000_2e4e

jr_000_2e4c:
    ld a, $ff

jr_000_2e4e:
    bit 0, d
    jr z, jr_000_2e54

    ldh [rBGP], a

jr_000_2e54:
    bit 1, d
    jr z, jr_000_2e5a

    ldh [rOBP0], a

jr_000_2e5a:
    bit 2, d
    jr z, jr_000_2e60

    ldh [rOBP1], a

jr_000_2e60:
    ret


Call_000_2e61:
    ld [$c81f], a
    ld a, [$c812]
    and a
    jp z, Jump_000_2f0f

    ld a, [$c81f]
    ld d, a
    ld a, [$c813]
    inc a
    ld [$c813], a
    cp d
    jp nz, Jump_000_2f0c

    xor a
    ld [$c813], a
    ld hl, $c812
    dec [hl]
    ld hl, $c814
    ld de, $ff47
    ld a, [$c811]
    bit 0, a
    call nz, Call_000_2eae
    ld hl, $c815
    ld de, $ff48
    ld a, [$c811]
    bit 1, a
    call nz, Call_000_2eae
    ld hl, $c816
    ld de, $ff49
    ld a, [$c811]
    bit 2, a
    call nz, Call_000_2eae
    jr jr_000_2f0c

Call_000_2eae:
    ld a, [de]
    ld c, a
    and $c0
    ld b, a
    ld a, [hl]
    and $c0
    cp b
    jr z, jr_000_2ec5

    jr nc, jr_000_2ec1

    ld a, c
    sub $40
    ld c, a
    jr jr_000_2ec5

jr_000_2ec1:
    ld a, c
    add $40
    ld c, a

jr_000_2ec5:
    ld a, c
    and $30
    ld b, a
    ld a, [hl]
    and $30
    cp b
    jr z, jr_000_2edb

    jr nc, jr_000_2ed7

    ld a, c
    sub $10
    ld c, a
    jr jr_000_2edb

jr_000_2ed7:
    ld a, c
    add $10
    ld c, a

jr_000_2edb:
    ld a, c
    and $0c
    ld b, a
    ld a, [hl]
    and $0c
    cp b
    jr z, jr_000_2ef1

    jr nc, jr_000_2eed

    ld a, c
    sub $04
    ld c, a
    jr jr_000_2ef1

jr_000_2eed:
    ld a, c
    add $04
    ld c, a

jr_000_2ef1:
    ld a, c
    and $03
    ld b, a
    ld a, [hl]
    and $03
    cp b
    jr z, jr_000_2f07

    jr nc, jr_000_2f03

    ld a, c
    sub $01
    ld c, a
    jr jr_000_2f07

jr_000_2f03:
    ld a, c

Call_000_2f04:
    add $01
    ld c, a

jr_000_2f07:
    ld a, c
    call Call_000_240e
    ret


Jump_000_2f0c:
jr_000_2f0c:
    xor a
    jr jr_000_2f11

Jump_000_2f0f:
    or $01

jr_000_2f11:
    ret


Call_000_2f12:
    ld [$c842], a
    cp $00
    jr nz, jr_000_2f1e

    ld a, [$c803]
    jr jr_000_2f21

jr_000_2f1e:
    ld a, [$c804]

jr_000_2f21:
    ld [$c841], a
    xor a
    ldh [rLYC], a
    ld hl, $ff41
    set 6, [hl]
    xor a
    ldh [rIF], a
    ld de, $ffff
    ld a, [de]
    set 1, a
    call Call_000_240e
    ret


Call_000_2f39:
    ld de, $ffff
    ld a, [de]
    res 1, a
    call Call_000_240e
    ret


Jump_000_2f43:
    di
    push af
    push de
    push hl
    ld a, [$c842]
    and a
    jr nz, jr_000_2f54

    ld a, [$c841]
    ldh [rSCX], a
    jr jr_000_2f59

jr_000_2f54:
    ld a, [$c841]
    ldh [rSCY], a

jr_000_2f59:
    ldh a, [rLYC]
    add $02
    cp $90
    jr c, jr_000_2f62

    xor a

jr_000_2f62:
    ldh [rLYC], a
    srl a
    ld h, $00
    ld l, a
    ld a, [$c840]
    ld d, a
    ld a, [$c83f]
    ld e, a
    add hl, de
    ld de, $2f94
    add hl, de
    ld a, [hl]
    ld d, a
    ld a, [$c842]
    cp $00
    jr nz, jr_000_2f88

    ld a, [$c803]
    add d
    ld [$c841], a
    jr jr_000_2f8f

jr_000_2f88:
    ld a, [$c804]
    add d
    ld [$c841], a

jr_000_2f8f:
    pop hl
    pop de
    pop af
    ei
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $ff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $05
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    db $fc
    db $fc
    ei
    ei
    ei
    ei
    ei
    ld a, [$fafa]
    ei
    ei
    ei
    ei
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld [$0808], sp
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    dec b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    rst $38
    cp $fd
    db $fd
    db $fc
    ei
    ei
    ld a, [$f9fa]
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$07
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, [$fbfa]
    ei
    db $fc
    db $fd
    db $fd
    cp $ff
    nop
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0708], sp
    ld b, $06
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    rst $38
    cp $fe
    db $fd
    db $fc
    ei
    ld a, [$f9f9]
    ld hl, sp-$08
    rst $30
    rst $30
    rst $30
    rst $30
    or $f7
    rst $30
    rst $30
    rst $30
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff00
    cp $fd
    db $fc
    ei
    ld a, [$f8f9]
    rst $30

Jump_000_30fe:
    or $f6
    push af
    push af
    push af
    push af
    db $f4
    push af
    push af
    push af
    push af
    or $f7
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0402
    dec b
    ld b, $07
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    inc c
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc bc
    ld [bc], a
    ld bc, $ff00
    cp $fc
    ei
    ld a, [$f8f9]
    rst $30
    or $f5
    db $f4
    db $f4
    di
    di
    di
    ld a, [c]
    di
    di
    di
    db $f4
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    cp $ff
    nop
    ld bc, $0403
    ld b, $07
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    rrca
    rrca
    db $10
    rrca
    rrca
    rrca
    ld c, $0e
    dec c
    inc c
    dec bc
    ld a, [bc]
    ld [$0507], sp
    inc b
    ld [bc], a
    ld bc, $ff00
    db $fd
    db $fc
    ld a, [$f8f9]
    or $f5
    db $f4
    di
    ld a, [c]
    ld a, [c]
    pop af
    pop af
    pop af
    ldh a, [$f1]
    pop af
    pop af
    ld a, [c]
    ld a, [c]
    di
    db $f4
    push af
    or $f8
    ld sp, hl
    ld a, [$fdfc]
    rst $38
    nop
    ld [bc], a
    inc bc
    dec b
    rlca
    ld [$0b0a], sp
    inc c
    ld c, $0f
    rrca
    db $10
    ld de, $1111
    ld [de], a
    ld de, $1111
    db $10
    rrca
    ld c, $0d
    inc c
    dec bc
    add hl, bc
    ld [$0506], sp
    inc bc
    ld bc, $ff00
    db $fd
    ei
    ld sp, hl
    ld hl, sp-$0a
    push af
    db $f4
    di
    pop af
    pop af
    ldh a, [$ef]
    rst $28
    rst $28
    xor $ef
    rst $28
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    rst $30
    ld hl, sp-$06
    ei
    db $fd
    rst $38
    nop
    ld [bc], a
    inc b
    ld b, $07
    add hl, bc
    dec bc
    inc c
    ld c, $0f
    db $10
    ld de, $1312
    inc de
    inc de
    inc d
    inc de
    inc de
    inc de
    ld [de], a
    ld de, $0f10
    dec c
    inc c
    ld a, [bc]
    add hl, bc
    rlca
    dec b
    inc bc
    ld bc, $fe00
    db $fc
    ei
    ld sp, hl
    rst $30
    push af
    db $f4
    ld a, [c]
    pop af
    ldh a, [$ef]
    xor $ed
    db $ed
    db $ed
    db $ec
    db $ed
    db $ed
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    db $f4
    push af
    rst $30
    ld sp, hl
    ei
    db $fd
    rst $38
    nop
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $0f
    ld de, $1312
    inc d
    dec d
    dec d
    dec d
    ld d, $15
    dec d
    inc d
    inc d
    inc de
    ld [de], a
    db $10
    rrca
    dec c
    inc c
    ld a, [bc]
    ld [$0406], sp
    ld bc, $fe00
    db $fc
    ld a, [$f6f8]
    db $f4
    ld a, [c]
    pop af
    rst $28
    xor $ed
    db $ec
    db $eb
    db $eb
    db $eb
    ld [$ebeb], a
    db $eb
    db $ec
    db $ed
    xor $f0
    pop af
    di
    db $f4
    or $f8
    ld a, [$fefc]
    nop
    ld [bc], a
    dec b
    rlca
    add hl, bc
    dec bc
    dec c
    rrca
    ld de, $1412
    dec d
    ld d, $17
    rla
    rla
    jr jr_000_327d

    rla
    ld d, $16
    dec d
    inc de
    ld [de], a
    db $10
    rrca
    dec c
    dec bc
    ld [$0406], sp
    ld [bc], a
    nop
    cp $fc
    ld sp, hl
    rst $30
    push af
    di
    pop af
    rst $28

jr_000_327d:
    xor $ec
    db $eb
    ld [$e9e9], a
    jp hl


    add sp, -$17
    jp hl


    ld [$ebea], a
    db $ed
    xor $f0
    pop af
    di
    push af
    rst $30
    ld a, [$fefc]
    nop
    ld [bc], a
    dec b
    rlca
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    inc d
    dec d
    rla
    jr jr_000_32ba

    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    add hl, de
    jr @+$19

    ld d, $15
    inc de
    ld [de], a
    db $10
    ld c, $0c
    add hl, bc
    rlca
    inc b
    ld [bc], a
    nop
    cp $fb
    ld sp, hl
    or $f4

jr_000_32ba:
    ld a, [c]
    ldh a, [$ee]
    db $ec
    db $eb
    ld [$e8e8], a
    rst $20
    rst $20
    and $e7
    rst $20
    add sp, -$17
    ld [$eceb], a
    xor $f0
    ld a, [c]
    db $f4
    rst $30
    ld sp, hl
    ei
    cp $00
    inc bc
    dec b
    ld [$0d0b], sp
    rrca
    ld [de], a
    inc d
    dec d
    rla
    jr jr_000_32fb

    ld a, [de]
    dec de
    dec de
    inc e
    dec de
    dec de
    ld a, [de]
    add hl, de
    jr @+$19

    dec d
    inc de
    ld de, $0c0f
    ld a, [bc]
    rlca
    dec b
    ld [bc], a
    nop
    cp $fb
    ld hl, sp-$0a
    di
    pop af

jr_000_32fb:
    rst $28
    db $ed
    db $eb
    jp hl


    add sp, -$19
    and $e5
    push hl
    db $e4
    push hl
    push hl
    and $e7
    add sp, -$17
    db $eb
    db $ed
    rst $28
    pop af
    di
    or $f8
    ei
    cp $00
    inc bc
    ld b, $09
    dec bc
    ld c, $11
    inc de
    dec d
    rla
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1d
    dec e
    inc e
    dec de
    ld a, [de]
    jr jr_000_3342

    inc d
    ld [de], a
    db $10
    dec c
    dec bc
    ld [$0205], sp
    nop
    db $fd
    ld a, [$f5f8]
    ld a, [c]
    ldh a, [$ed]
    db $eb
    jp hl


    rst $20
    and $e5
    db $e4

jr_000_3342:
    db $e3
    db $e3
    ld [c], a
    db $e3
    db $e3
    db $e4
    push hl
    and $e8
    jp hl


    db $eb
    xor $f0
    ld a, [c]
    push af
    ld hl, sp-$05
    cp $00
    inc bc
    ld b, $09
    inc c
    rrca
    ld [de], a
    inc d
    ld d, $19
    ld a, [de]
    inc e
    dec e
    ld e, $1f
    rra
    jr nz, @+$21

    rra
    ld e, $1d
    inc e
    ld a, [de]
    jr jr_000_3383

    inc d
    ld de, $0b0e
    ld [$0205], sp
    nop
    db $fd
    ld a, [$f4f7]
    pop af
    rst $28
    db $ec
    ld [$e6e8], a
    db $e4
    db $e3
    ld [c], a
    pop hl

jr_000_3383:
    pop hl
    ldh [$e1], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    and $e8
    ld [$efec], a
    pop af
    db $f4
    rst $30
    ld a, [$d5fd]
    ld hl, $0000
    add hl, de
    ld a, [hl]
    bit 0, a
    jp nz, Jump_000_34be

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld hl, $c803
    add [hl]
    sub $08
    ld [$c827], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld hl, $c804
    add [hl]
    sub $10
    ld [$c829], a
    ld hl, $0004
    add hl, de
    ld a, [hl]
    ld hl, $c803
    add [hl]
    sub $08
    ld [$c82b], a
    ld hl, $0005
    add hl, de
    ld a, [hl]
    ld hl, $c804
    add [hl]
    sub $10
    ld [$c82d], a
    ld hl, $0002
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c9ff]
    ld [$c821], a
    ld a, $03
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld de, $5ef9
    add hl, de
    ld de, $0004
    add hl, de
    ld a, [hl+]
    ld [$c835], a
    ld a, [hl+]
    ld [$c836], a
    ld a, [hl+]
    ld [$c837], a
    ld a, [hl]
    ld [$c838], a
    ld hl, $0002
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5ef9
    add hl, de
    ld a, [hl+]
    ld [$c831], a
    ld a, [hl+]
    ld [$c832], a
    ld a, [hl+]
    ld [$c833], a
    ld a, [hl]
    ld [$c834], a
    ld a, [$c821]
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, [$c827]
    ld d, a
    ld a, [$c831]
    add d
    ld [$c821], a
    ld a, [$c82b]
    ld d, a
    ld a, [$c835]
    add d
    ld d, a
    ld a, [$c837]
    add d
    ld [$c825], a
    ld d, a
    ld a, [$c821]
    dec a
    cp d
    jp nc, Jump_000_34be

    inc a
    ld d, a
    ld a, [$c833]
    add d
    ld [$c821], a
    ld a, [$c837]
    ld d, a
    ld a, [$c825]
    sub d
    ld d, a
    ld a, [$c821]
    cp d
    jp c, Jump_000_34be

    ld a, [$c829]
    ld d, a
    ld a, [$c832]
    add d
    ld [$c821], a
    ld a, [$c82d]
    ld d, a
    ld a, [$c836]
    add d
    ld d, a
    ld a, [$c838]
    add d
    ld [$c825], a
    ld d, a
    ld a, [$c821]
    dec a
    cp d
    jp nc, Jump_000_34be

    inc a
    ld d, a
    ld a, [$c834]
    add d
    ld [$c821], a
    ld a, [$c838]
    ld d, a
    ld a, [$c825]
    sub d
    ld d, a
    ld a, [$c821]
    cp d
    jp c, Jump_000_34be

    or $01
    jr jr_000_34bf

Jump_000_34be:
    xor a

jr_000_34bf:
    pop de
    ret


Call_000_34c1:
    ld [$c81f], a
    ld a, [$c9ff]
    ld [$c821], a
    ld a, $03
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    ld hl, $000d
    add hl, bc
    cp [hl]
    jr z, jr_000_34f3

    ld [hl], a
    xor a
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld [hl], a

jr_000_34f3:
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_000_34fe

    jp Jump_000_357b


jr_000_34fe:
    ld a, [$c81f]
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $5a75
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    ld [$c832], a
    ld a, e
    ld [$c831], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, de
    ld a, [hl]
    cp $ff
    jr nz, jr_000_3548

    ld a, [$c821]
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    or $01
    jp Jump_000_3593


jr_000_3548:
    cp $fe
    jr nz, jr_000_3562

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    ld [hl], a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld a, [$c832]
    ld d, a
    ld a, [$c831]
    ld e, a
    add hl, de

jr_000_3562:
    ld d, h
    ld e, l
    ld a, [de]
    ld hl, $000c
    add hl, bc
    ld [hl], a
    inc de
    inc de
    ld hl, $0002
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld hl, $000b
    add hl, bc
    inc [hl]

Jump_000_357b:
    ld a, [$c821]
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $000c
    add hl, bc
    dec [hl]
    xor a

Jump_000_3593:
    ret


Call_000_3594:
    ld a, [$c80b]
    ld de, $35ba
    push de
    rst $00
    cp e
    dec [hl]
    call nz, $ae35
    ld [hl], $4f
    scf
    or d
    scf
    ld a, h
    jr c, @-$79

    jr c, @-$23

    jr c, @+$67

    add hl, sp
    ret nz

    add hl, sp
    ret


    add hl, sp
    jp nc, $f739

    dec a
    nop
    ld a, $2b
    ld a, $c9
    ld a, $05
    ld hl, $752b
    call Call_000_08ae
    ret


    ld a, [$c9ff]
    push af
    ld a, [$c803]
    push af
    ld a, [$c804]
    push af
    xor a
    ld [$c803], a
    ld [$c804], a
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $1d
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $4000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $04
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6461
    cp $00
    jr nz, jr_000_3647

    ld a, $05
    ld [playerLives], a
    pop af
    ld [$c804], a
    pop af
    ld [$c803], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, $07
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


jr_000_3647:
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $16
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $6000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $04
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $64c1
    pop af
    ld [$c804], a
    pop af
    ld [$c803], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, $02
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


    ld a, [$c9ff]
    push af
    xor a
    ld [$c803], a
    ld [$c804], a
    ld [$ca06], a
    ld [$ca07], a
    ld [$ca08], a
    ld [$cb24], a
    ld [$cb25], a
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $16
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $4000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl

    ;jumps to title
    ;loops until ret on progress
    call $6b3d
    ;

    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ;checks if demoing
    ld a, [demoing]
    and a
    ;if not, inits player
    jr z, Player_Init

    ld a, $0e
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


Player_Init::
    ;loads the title choice
    ld a, c

    ;if cursorIndex was 1, jump out
    or a
    jr nz, jr_000_3745

    ;else, run game
    ;stage 1
    ld a, 0
    ld [currentStage], a

    ;5 lives
    ld a, STARTING_LIVES
    ld [playerLives], a

    ld a, $0d
    ld [$c80b], a

    xor a
    ld [$c80c], a
    ret


jr_000_3745:
    ld a, $03
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


    xor a
    ld [$c803], a
    ld [$c804], a
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $16
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $5000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6eb4
    or a
    jr z, jr_000_37a8

    ld a, $02
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


jr_000_37a8:
    ld a, $07
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


    ld a, [$c9ff]
    push af
    ld a, [$c803]
    push af
    ld a, [$c804]
    push af
    xor a
    ld [$c803], a
    ld [$c804], a
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $16
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $5000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $719d
    pop af
    ld [$c804], a
    pop af
    ld [$c803], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, $07
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


Call_000_382c:
    ld a, [currentStage]
    cp $08
    ret z

    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $1d
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $5000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $04
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6732
    ld a, $91
    ldh [rLCDC], a
    ret


    ld a, $05
    ld hl, $4000
    call Call_000_08ae
    ret


    xor a
    ld [$c803], a
    ld [$c804], a
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $16
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $7000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $04
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $4000
    ld a, $02
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


    ld a, [$c9ff]
    push af
    ld a, [$c803]
    push af
    ld a, [$c804]
    push af
    xor a
    ld [$c803], a
    ld [$c804], a
    call Call_000_382c
    xor a
    ld [$c803], a
    ld [$c804], a
    ld a, $01
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6c89
    ld a, $16
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $6000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $04
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, $18
    call Call_000_0903
    call $4bce
    pop af
    ld [$c804], a
    pop af
    ld [$c803], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld a, $08
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


    ret


    ld a, [$c80c]
    ld de, $3971
    push de
    rst $00
    ld [hl], d
    add hl, sp
    xor b
    add hl, sp
    ret


    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [demoing]
    and a
    jr nz, jr_000_39a0

    xor a
    ld [$cb24], a
    ld [$cb25], a
    ld [$cb29], a
    ld a, $00
    ld [$cb2a], a
    ld hl, $d000
    ld a, h
    ld [$cb28], a
    ld a, l
    ld [$cb27], a
    ld hl, $cb2c
    res 1, [hl]

jr_000_39a0:
    ld a, [$c80c]
    inc a
    ld [$c80c], a
    ret


    xor a
    ld [$c983], a
    call Call_000_2d07
    ld de, $ff40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $0a
    ld [$c80b], a
    xor a
    ld [$c80c], a
    ret


    ld a, $03
    ld hl, $64da
    call Call_000_08ae
    ret


    ld a, $03
    ld hl, $664a
    call Call_000_08ae
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$c9ff]
    push af
    ld a, [$c803]
    push af
    ld a, [$c804]
    push af
    ld a, [$cb2e]
    push af
    call Call_000_0a65
    push hl
    push af
    ld hl, $1dd8
    ld a, $01
    call Call_000_0aa6
    pop af
    pop hl
    xor a
    ld [$c998], a

jr_000_39f9:
    call Call_000_3a63
    or a
    jr nz, jr_000_3a07

    call Call_000_3ab7
    or a
    jr nz, jr_000_3a07

    jr jr_000_39f9

jr_000_3a07:
    call Call_000_3a3c
    ld a, $0a
    ld [$c80b], a
    ld a, $08
    ldh [$9b], a
    pop af
    bit 1, a
    jr z, jr_000_3a1b

    call Call_000_0a79

jr_000_3a1b:
    pop af
    ld [$c804], a
    pop af
    ld [$c803], a
    ld a, $d3
    ldh [rLCDC], a
    pop af
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_3a3c:
    call Call_000_3afd
    ld a, [$cb11]
    ld l, a
    ld a, [$cb12]
    ld h, a
    ld a, [$cb10]
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ret


Call_000_3a63:
    ld a, $01
    ld [$c80b], a
    call Call_000_3afd
    ld a, $17
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $4000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld de, $9c00
    ld hl, $6000
    call Call_000_0756
    call Call_000_3b4e
    call Call_000_3bd2
    call Call_000_3be9
    call Call_000_3bfc
    ld a, $d9
    ldh [rLCDC], a

jr_000_3aa1:
    call Call_000_3b21
    bit 3, a
    jr nz, jr_000_3ab6

    bit 0, a
    jr nz, jr_000_3aae

    jr jr_000_3aa1

jr_000_3aae:
    ld a, [currentStage]
    cp $08
    jr z, jr_000_3aa1

    xor a

jr_000_3ab6:
    ret


Call_000_3ab7:
    ld a, $02
    ld [$c80b], a
    call Call_000_3afd
    ld a, $1d
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    ld hl, $5000
    ld de, $8000
    ld bc, $1000
    call Call_000_03b2
    ld a, $04
    push hl
    ld hl, $ffff
    res 2, [hl]
    ld [$2000], a
    ld [$c9ff], a
    set 2, [hl]
    pop hl
    call $6732
    ld a, $99
    ldh [rLCDC], a
    ld a, $1e
    ldh [rBGP], a
    ld [$c80d], a
    xor a
    ret


Call_000_3afd:
jr_000_3afd:
    ldh a, [rLY]
    cp $91
    jr nc, jr_000_3b06

    nop
    jr jr_000_3afd

jr_000_3b06:
    xor a
    ldh [rLCDC], a
    ld a, $ff
    ld hl, $9c00
    ld bc, $0400

jr_000_3b11:
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3b11

    xor a
    ld [$c803], a
    ld [$c804], a
    ret


Call_000_3b21:
    call Call_000_3c43
    call Call_000_02c4
    ld a, [$c803]
    ld [$c805], a
    ld [$c807], a
    ld a, [$c804]
    ld [$c806], a
    ld [$c808], a
    ld hl, $ffa1
    set 0, [hl]
    db $76

jr_000_3b3f:
    call Call_000_0c2e
    ld hl, $ffa1
    bit 1, [hl]
    jr z, jr_000_3b3f

    res 1, [hl]
    ldh a, [$9c]
    ret


Call_000_3b4e:
    ld a, [currentStage]
    swap a
    ld hl, $3d07
    ld b, $00
    ld c, a
    add hl, bc
    push hl
    pop de
    ld hl, $c983
    bit 0, [hl]
    jr nz, jr_000_3b6a

    ld hl, $c983
    bit 2, [hl]
    jr z, jr_000_3b74

jr_000_3b6a:
    ld de, $0101
    ld hl, $61cf
    call Call_000_0822
    ret


jr_000_3b74:
    ld a, [currentStage]
    cp $08
    jr z, jr_000_3b86

    ld a, [currentPassword]
    ld l, a
    ld h, $00
    add hl, de
    bit 7, [hl]
    jr z, jr_000_3b90

jr_000_3b86:
    ld de, $0101
    ld hl, $624a
    call Call_000_0822
    ret


jr_000_3b90:
    ld b, $00
    ld hl, $cb13

jr_000_3b95:
    ld a, [de]
    inc de
    inc a
    ret z

    dec a
    bit 7, a
    jr z, jr_000_3ba1

    inc hl
    jr jr_000_3b95

jr_000_3ba1:
    ld c, a
    ld a, [hl+]
    or a
    jr z, jr_000_3bbc

    push hl
    push de
    sla c
    ld hl, $3d93
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a
    ld hl, $61b9
    call Call_000_0822
    pop de
    pop hl
    jr jr_000_3b95

jr_000_3bbc:
    push hl
    push de
    sla c
    ld hl, $3d93
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a
    ld hl, $61b3
    call Call_000_0822
    pop de
    pop hl
    jr jr_000_3b95

Call_000_3bd2:
    ld a, [currentStage]
    ld b, $00
    rlca
    ld c, a
    ld hl, $3de5
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    push de
    pop hl
    ld de, $0f06
    call Call_000_0822
    ret


Call_000_3be9:
    ld a, [diamonds]
    ld de, $010c
    ld hl, $61ad

jr_000_3bf2:
    or a
    ret z

    call Call_000_0822
    inc d
    inc d
    dec a
    jr jr_000_3bf2

Call_000_3bfc:
    ld a, [playerLives]
    dec a
    cp $64
    jr c, jr_000_3c06

    ld a, $63

jr_000_3c06:
    ld b, $00

jr_000_3c08:
    sub $0a
    inc b
    jr nc, jr_000_3c08

    add $0a
    dec b
    ld l, b
    ld h, $00
    ld e, a
    ld d, $00
    ld a, h
    or l
    jr z, jr_000_3c2e

    push de
    sla l
    ld de, $3de3
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    push bc
    pop hl
    ld de, $0d0b
    call Call_000_0822
    pop de

jr_000_3c2e:
    push de
    pop hl
    sla l
    ld de, $3de3
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    push bc
    pop hl
    ld de, $100b
    call Call_000_0822
    ret


Call_000_3c43:
    ld a, [$c80b]
    cp $02
    jr z, jr_000_3c75

    ld hl, $3d87

jr_000_3c4d:
    ld a, [currentStage]
    cp [hl]
    jr nz, jr_000_3c5a

    ld a, [currentPassword]
    inc hl
    cp [hl]
    ret z

    dec hl

jr_000_3c5a:
    ld a, [$c983]
    bit 0, a
    ret nz

    ld a, [$c983]
    bit 2, a
    ret nz

    ld a, [currentStage]
    cp $08
    ret z

    inc hl
    inc hl
    ld a, $ff
    cp [hl]
    jr z, jr_000_3c75

    jr jr_000_3c4d

jr_000_3c75:
    ld a, [$c80b]
    cp $01
    jp nz, Jump_000_3cc4

    ld a, [$c998]
    cp $08
    jr z, jr_000_3c89

    inc a
    ld [$c998], a
    ret


jr_000_3c89:
    xor a
    ld [$c998], a
    ld a, [$c999]
    inc a
    and $01
    ld [$c999], a
    jr z, jr_000_3c9d

    ld hl, $61b3
    jr jr_000_3ca0

jr_000_3c9d:
    ld hl, $61b9

jr_000_3ca0:
    push hl
    ld b, $00
    ld a, [currentPassword]
    ld c, a
    ld hl, $3d07
    ld d, $00
    ld a, [currentStage]
    swap a
    ld e, a
    add hl, de
    add hl, bc
    ld a, [hl]
    ld hl, $3d93
    rlca
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a
    pop hl
    call Call_000_0822
    ret


Jump_000_3cc4:
    ld a, [$c998]
    cp $08
    jr z, jr_000_3cd0

    inc a
    ld [$c998], a
    ret


jr_000_3cd0:
    xor a
    ld [$c998], a
    ld a, [$c999]
    inc a
    and $01
    ld [$c999], a
    jr z, jr_000_3ce4

    ld hl, $0000
    jr jr_000_3ce7

jr_000_3ce4:
    ld hl, $0002

jr_000_3ce7:
    push hl
    ld b, $00
    ld a, [currentStage]
    rlca
    ld c, a
    ld hl, $3db3
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    sla c
    ld hl, $3dc3
    add hl, bc
    push hl
    pop bc
    pop hl
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0822
    ret


    dec c
    inc c
    ld c, $08
    add hl, bc
    ld a, [bc]
    inc b
    dec b
    ld b, $00
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld bc, $0600
    dec b
    inc b
    ld a, [bc]
    add hl, bc
    ld [$0c0d], sp
    add b
    add b
    add b
    add b
    rst $38
    inc b
    nop
    ld [$0501], sp
    add hl, bc
    ld [bc], a
    ld b, $0a
    inc bc
    rlca
    dec bc
    add b
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0402
    dec b
    ld b, $08
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    ld c, $80
    rst $38
    rst $38
    rst $38
    dec b
    nop
    ld bc, $0402
    ld b, $08
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    ld c, $80
    add b
    rst $38
    rst $38
    add hl, bc
    ld [$0b0a], sp
    inc b
    dec b
    ld b, $07
    nop
    ld bc, $0302
    add b
    add b
    rst $38
    rst $38
    ld c, $0d
    rrca
    add hl, bc
    ld a, [bc]
    dec bc
    dec b
    ld b, $07
    ld bc, $0302
    add b
    add b
    rst $38
    rst $38
    rlca
    inc bc
    dec bc
    ld [bc], a
    ld b, $0a
    ld bc, $0905
    nop
    inc b
    ld [$ff80], sp
    rst $38
    rst $38
    ld bc, $010d
    inc c
    inc b
    inc c
    dec b
    inc c
    ld b, $0c
    rst $38
    rst $38
    ld bc, $0401
    ld bc, $0107
    ld a, [bc]
    ld bc, $0401
    inc b
    inc b
    rlca
    inc b
    ld a, [bc]
    inc b
    ld bc, $0407
    rlca
    rlca
    rlca
    ld a, [bc]
    rlca
    ld bc, $040a
    ld a, [bc]
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $070c
    dec bc
    dec c
    inc c
    rrca
    ld [$0709], sp
    inc bc
    ld [$0402], sp
    ld [$5102], sp
    ld h, h
    and c
    ld h, h
    ld e, e
    ld h, h
    xor e
    ld h, h
    ld h, l
    ld h, h
    or l
    ld h, h
    ld l, a
    ld h, h
    cp a
    ld h, h
    ld a, c
    ld h, h
    ret


    ld h, h
    add e
    ld h, h
    db $d3
    ld h, h
    adc l
    ld h, h
    db $dd
    ld h, h
    sub a
    ld h, h
    rst $20
    ld h, h
    rst $00
    ld h, c
    ld l, d
    ld h, c
    ld [hl], d
    ld h, c
    ld a, d
    ld h, c
    add d
    ld h, c
    adc d
    ld h, c
    sub d
    ld h, c
    sbc d
    ld h, c
    and d
    ld h, c
    cp a
    ld h, c
    ld a, $05
    ld hl, $4c60
    call Call_000_08ae
    ret


    ld a, [$c80c]
    cp $03
    jp c, Jump_000_3e22

    cp $0a
    jp c, Jump_000_3e17

    cp $0d
    jp c, Jump_000_3e22

    cp $13
    jp nc, Jump_000_3e22

Jump_000_3e17:
    ldh a, [$9b]
    and $09
    jr z, jr_000_3e22

    ld a, $13
    ld [$c80c], a

Jump_000_3e22:
jr_000_3e22:
    ld a, $05
    ld hl, $6a92
    call Call_000_08ae
    ret


    ld a, $05
    ld hl, $7431
    call Call_000_08ae
    ret


    inc b
    ld [bc], a
    jp z, $cccb

    call $8f8e
    adc $cf
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [bc]
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    nop
    ld a, [bc]
    ld bc, $0a00
    ld bc, $0001
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0000
    ld bc, $0501
    ld bc, $0500
    ld bc, $0501
    ld [bc], a
    ld bc, $0205
    ld [bc], a
    dec b
    cp $fe
    dec b
    cp $ff
    dec b
    rst $38
    rst $38
    dec b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_3efb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
