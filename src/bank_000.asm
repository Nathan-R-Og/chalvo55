macro SWAP_BANK
    push hl
    ld hl, rIE
    res IEB_TIMER, [hl]
    ld [rROMB0], a
    ld [unk_c9ff], a
    set IEB_TIMER, [hl]
    pop hl
endm

macro SWAP_AND_CALL
    ld a, BANK(\1)
    ld hl, \1
    call SwapAndCall
endm

;turn lcdc on
macro LCDC_ON
    ld de, rLCDC
    ld a, [de]
    or LCDCF_ON
    ld [de], a
endm

;idk what that call is but judging from the flags,,,
macro LCDC_OFF
    ld de, rLCDC
    ld a, [de]
    and ~LCDCF_ON
    call Call_000_240e
endm

;bc is the current actor (addr)
;\1 is the struct entry
;\2 is the value to write
macro set_actor_value
    ld a, \2
    ld hl, \1
    add hl, bc
    ld [hl], a
endm

macro get_actor_value
    ld hl, \1
    add hl, bc
    ld a, [hl]
endm


SECTION "ROM Bank $000", ROM0[$0]

INCLUDE "src/header.asm"

code_boot:
    ;wait for vblank
    call WaitStoreVBlank

    ;set stack pointer
    ld sp, $cfff

    call CopyOAMDMA

    call Wipe_SCRN0

    ;clear ram
    ld hl, _RAM
    ld bc, (_RAMBANK-_RAM)*2
    .clear:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, .clear

    ld a, HIGH(unk_cc00)
    ld [unk_cbc0+1], a
    ld [unk_cbc2+1], a

    ;load bank 0
    ;is this a macro? why is it popping hl
    ld a, 0
    SWAP_BANK

    ;fill screen 1 with $80?
    ld bc, _SRAM-_SCRN1
    ld hl, _SCRN1
    .fill:
    ld a, $80
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, .fill

    ;set window position??? (Why)
    ld a, 50
    ldh [rWX], a
    ldh [rWY], a

    xor a
    ld [$ca0e], a
    ld [$ca0f], a

    ld a, $c0
    ld [$c802], a

    ;set palette
    ld a, %00011110
    ldh [rBGP], a
    ld [$c80d], a
    ldh [rOBP0], a
    ld [$c80e], a

    ld a, %00000100
    ldh [rOBP1], a
    ld [$c80f], a


    xor a
    ldh [rIF], a

    ;turn on vblank
    ld a, IEF_VBLANK
    ldh [rIE], a

    ld a, 1
    ldh [unk_ffa3], a

    ld a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_BLK01 | LCDCF_OBJON | LCDCF_BGON
    ldh [rLCDC], a

    ;what
    ld bc, $2000
    ld hl, rROMB0
    ld a, $A
    ld [hl], a
    ld a, $1
    ld [hl], a

    ;init stuff
    call Call_000_08df

    ei

jr_000_01d4:
    call Call_000_0c2e

    ld a, [sceneState]
    cp $a
    jr nz, .do_pad_check

    ld a, [procState]
    cp 3
    jr z, .do_pad_check

    cp 9
    jr z, .do_pad_check

    jr .skip_pad_check

    .do_pad_check:
    call CheckPad

    .skip_pad_check:

    ;scene init
    call do_scene_jmptbl

    call Call_000_0c2e

    SWAP_AND_CALL b3_root

    call Call_000_0c2e
    call Call_000_04e7
    ld hl, $cb2c
    bit 5, [hl]
    jr nz, jr_000_0232

    ld a, [sceneState]
    cp $0a
    jr nz, jr_000_0220

    ld a, [procState]
    cp $03
    jr nz, jr_000_0220

    ld hl, unk_ffa1
    bit 1, [hl]
    jr z, jr_000_0225

    jr jr_000_0230

jr_000_0220:
    ld hl, unk_ffa1
    set 0, [hl]

jr_000_0225:
    halt

jr_000_0226:
    call Call_000_0c2e
    ld hl, unk_ffa1
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

    ld a, [sceneState]
    cp $0a
    jr nz, jr_000_0257

    ld a, [procState]
    cp $03
    jr nz, jr_000_0257

jr_000_0252:
    ld hl, unk_ffa1
    jr jr_000_025e

jr_000_0257:
    ld hl, unk_ffa1
    bit 0, [hl]
    jr z, jr_000_02be

jr_000_025e:
    res 0, [hl]
    ld a, [$c802]
    cp $c0
    jr z, jr_000_0276

    call DMA_OAM_1

    ld a, [$c805]
    ldh [rSCX], a

    ld a, [$c806]
    ldh [rSCY], a

    jr jr_000_0283

jr_000_0276:
    call DMA_OAM_2

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

    ld a, [unk_cbc0]
    ld l, a
    ld a, [unk_cbc0+1]
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
    ld [unk_cbc0], a
    ld a, h
    ld [unk_cbc0+1], a

jr_000_02b6:
    xor a
    ldh [rLYC], a
    ld hl, unk_ffa1
    set 1, [hl]

jr_000_02be:
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti


;-----------------
;-----------------
;sets last_input and current_input appropriately
CheckPad:
    ;read p15 (a, b, select, start)
    ld a, P1F_GET_DPAD
    ldh [rP1], a
    ;?
    ldh a, [rP1]
    ldh a, [rP1]
    ;invert
    cpl
    ;get lower half
    and %00001111
    ;shift
    swap a
    ld b, a

    ;read p14 (up, down, left, right)
    ld a, P1F_GET_BTN
    ldh [rP1], a
    ;?
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ;invert
    cpl
    ;get lower half
    and %00001111
    ;combine with buttons
    or b
    ;store to c
    ld c, a

    ldh a, [INPUT_HOLD]
    ;check against current
    xor c
    and c
    ldh [INPUT_PRESS], a
    ;set previous to current
    ld a, c
    ldh [INPUT_HOLD], a

    ;reset
    ld a, P1F_GET_NONE
    ldh [rP1], a
    ret


CopyOAMDMA:
    ;insert oam subroutine
    ld c, LOW(DMA_OAM_1)
    ld b, dma_sub_end-dma_sub_start
    ld hl, dma_sub_start

    .fill:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, .fill

    ;insert other? subroutine
    ld c, LOW(DMA_OAM_2)
    ld b, dma_sub_end2-dma_sub_start2
    ld hl, dma_sub_start2

    .fill2:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, .fill2

    ret

dma_sub_start:
    ld a, HIGH(SHADOW_OAM)
    ldh [rDMA], a

    ld a, 40 ; delay = 160 cycles
    .delay:
    dec a
    jr nz, .delay

    ret
dma_sub_end:


dma_sub_start2:
    ld a, HIGH(SHADOW_OAM2)
    ldh [rDMA], a

    ld a, 40 ; delay = 160 cycles
    .delay:
    dec a
    jr nz, .delay

    ret
dma_sub_end2:

unk_routine2:
    ldh a, [unk_ff9d]
    sub $10
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a

    ;hl += de * b
    ld hl, _SCRN0
    ld b, $20
    .jr_000_0337:
    add hl, de
    dec b
    jr nz, .jr_000_0337

    ldh a, [unk_ff9e]
    sub $08
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    add hl, de
    ld a, h
    ldh [unk_ff9f], a
    ld a, l
    ldh [unk_ffa0], a
    ret


    ldh a, [unk_ff9f]
    ld d, a
    ldh a, [unk_ffa0]
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
    ldh [unk_ff9d], a
    ldh a, [unk_ffa0]
    and $1f
    rla
    rla
    rla
    add $08
    ldh [unk_ff9e], a
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


WaitStoreVBlank:
    ;get ie
    ldh a, [rIE]
    ldh [rIEStore], a

    ;res vblank
    res IEB_VBLANK, a

    ;fallthrough
WaitVBlank:
    ldh a, [rLY]
    cp 145
    jr nz, WaitVBlank

    ;turn lcdcf off
    ldh a, [rLCDC]
    and ~LCDCF_ON
    ldh [rLCDC], a

    ;restore ie
    ldh a, [rIEStore]
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


Wipe_SCRN0:
    ;clear vram scrn0
    ld hl, _SCRN1-1
    ld bc, _SCRN1-_SCRN0

    .fill:
    ld a, $ff
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, .fill

    ret

;hl == source
;de == destination
;bc == size
copy:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, copy

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


ChangeRoom:
    push bc
    push de
    push hl
    ld b, a
    ld a, [unk_c9ff]
    push af
    ld a, [$ca02]

    SWAP_BANK

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
    ;set current room to the one found in the exits
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
    ld [roomPointer], a
    ld a, h
    ld [roomPointer+1], a
    pop af
    ld hl, $0008
    call Call_000_04a5
    pop de
    add hl, de
    ld de, $0007
    add hl, de
    ld d, [hl]
    pop af

    SWAP_BANK

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

    ld a, [unk_c9fe]
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
    ld a, [unk_c9ff]
    push af
    ld a, e
    push af
    and $7f

    SWAP_BANK

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
    ld [unk_c9fe], a
    pop af

    SWAP_BANK

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
    ld [unk_c9fe], a
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

;hl == source
;de == destination
;assumed that the input tiles are for an 20x18
Draw_EntireScreenTiles:
    ;store
    push af
    push bc
    push de
    push hl

    ;skip the size defs
    inc hl
    inc hl

    ;load screen height
    ld b, SCRN_Y_B

    .newline:
    ;load screen width
    ld c, SCRN_X_B

    .copy:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, .copy

    push hl
    ;de += $C
    ;move current tile back to screen left after going out of (camera) bounds
    ld hl, SCRN_VX_B-SCRN_X_B
    add hl, de
    push hl
    pop de
    ;
    pop hl

    dec b
    jr nz, .newline

    ;restore
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
    ldh [unk_ff9e], a
    ld a, e
    ldh [unk_ff9d], a
    push de
    push hl
    call Call_000_0862
    pop hl
    pop de
    ldh a, [unk_ff9f]
    ld d, a
    ldh a, [unk_ffa0]
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
    ldh a, [unk_ff9d]
    ld hl, $9c00
    ld de, $0020
    and a
    jp z, Jump_000_0873

Jump_000_086e:
    add hl, de
    dec a
    jp nz, Jump_000_086e

Jump_000_0873:
    ldh a, [unk_ff9e]
    ld e, a
    add hl, de
    ld a, h
    ldh [unk_ff9f], a
    ld a, l
    ldh [unk_ffa0], a
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


;swap, execute thing at bank and then reload bank
SwapAndCall:
    ;store
    push af
    push de
    push hl

    ;store a in d
    ld d, a

    ;push c9ff
    ld a, [unk_c9ff]
    push af

    ;restore a from d
    ld a, d
    SWAP_BANK

    ;push $8cb
    ld de, $08cb
    push de

    ;jump (the magic)
    ;while not TECHNICALLY a call... it still functions as so.
    jp hl

    ;restore c9ff
    pop af
    SWAP_BANK

    ;restore
    pop hl
    pop de
    pop af

    ;like nothing happened :)
    ret


Call_000_08df:
    ld a, AUDENA_ON
    ldh [rNR52], a

    xor a
    ldh [rNR51], a

    xor a ;why
    ldh [rNR50], a

    ;init audio stuff
    call Call_000_0a8c

    ;init ram stuff
    call Call_000_0ad7

    ;set timer
    ld a, 0
    ld hl, rTMA
    ld [hl], a
    ld a, 0
    ld hl, rTAC
    ld [hl], a
    set TACB_START, [hl]

    ld hl, rIE
    set IEB_TIMER, [hl]

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
    ld de, music_list
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


MACRO music_entry
    db BANK(\1)
    dw \1.segment1
    dw \1.segment2
    dw \1.segment3
    dw \1.segment4
ENDM

music_list:
    music_entry MUSIC_stage1
    music_entry MUSIC_stage2
    music_entry MUSIC_stage3
    music_entry MUSIC_stage4
    music_entry MUSIC_stage5
    music_entry MUSIC_stage6
    music_entry MUSIC_stage7
    music_entry MUSIC_stage8
    music_entry MUSIC_boss
    music_entry MUSIC_boss
    music_entry MUSIC_boss
    music_entry MUSIC_boss
    music_entry MUSIC_boss
    music_entry MUSIC_boss
    music_entry MUSIC_boss
    music_entry MUSIC_finalBoss
    music_entry MUSIC_die
    music_entry MUSIC_invincibility
    music_entry MUSIC_stageClear
    music_entry MUSIC_password
    music_entry MUSIC_ending
    music_entry MUSIC_unk1
    music_entry MUSIC_gameOver
    music_entry MUSIC_title
    music_entry MUSIC_stageStart
    music_entry MUSIC_continue
    music_entry MUSIC_intro1
    music_entry MUSIC_specialStage
    music_entry MUSIC_intro2
    music_entry MUSIC_unk2
    music_entry MUSIC_worldMap

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


;audio stuff
Call_000_0a8c:
    xor a
    ld [$cb2e], a

    ld a, %00001000
    ldh [rAUD1ENV], a
    ldh [rAUD2ENV], a
    ldh [rAUD4ENV], a

    ld a, %10000000
    ldh [rAUD1HIGH], a
    ldh [rAUD2HIGH], a
    ldh [rAUD4GO], a
    ldh [rAUD3ENA], a

    xor a
    ldh [rAUD3LEVEL], a
    ret

;a == inst type????
;hl == mus code
Play_SFX:
    cp 4
    jr z, .jr_000_0ac1

    ld a, h
    ld [$cb92], a
    ld a, l
    ld [$cb91], a

    ld a, 1
    ld [$cb93], a
    ld [$cb94], a

    ld hl, $cb2e
    set 4, [hl]

    jr .jr_000_0ad6

    .jr_000_0ac1:
    ld a, h
    ld [$cbab], a
    ld a, l
    ld [$cbaa], a

    ld a, 1
    ld [$cbac], a
    ld [$cbad], a

    ld hl, $cb2e
    set 5, [hl]

    .jr_000_0ad6:
    ret


;init ram?????
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
    cp 112
    jr c, jr_000_0c43

    ld hl, $cb2e
    bit 6, [hl]
    jp nz, Jump_000_1bf1

jr_000_0c27:
    ld hl, $cb31
    inc [hl]
    jp Jump_000_1bf1


Call_000_0c2e:
    ;if this is 0, leave
    ld a, [$cb31]
    and a
    ret z

    ld hl, $cb31
    dec [hl]

    ld hl, rIE
    res IEB_TIMER, [hl]

    ld hl, $cb2e
    set 7, [hl]

    ;why
    jr jr_000_0c43

jr_000_0c43:
    ld a, [unk_c9ff]
    push af
    ld a, [$cb2d]
    ld [rROMB0], a
    ld [unk_c9ff], a
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

    ld hl, rAUD3ENA
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
    ld hl, _AUD3WAVERAM
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
    ld [rROMB0], a
    ld [unk_c9ff], a
    ld hl, $cb2e
    bit 7, [hl]
    jr z, Jump_000_1bf1

    res 7, [hl]
    ld hl, rIE
    set 2, [hl]
    ret


Jump_000_1bf1:
    pop hl
    pop de
    pop af
    reti

    db $40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$40,$00,$8B,$00,$F6,$00,$5B,$01,$BB,$01,$15,$02,$6A,$02,$BA,$02,$06,$03,$4D,$03,$91,$03,$D0,$03,$0C,$04,$45,$04,$7B,$04,$AD,$04,$DD,$04,$0A,$05,$35,$05,$5D,$05,$83,$05,$A6,$05,$C8,$05,$E8,$05,$06,$06,$22,$06,$3D,$06,$56,$06,$6E,$06,$85,$06,$9A,$06,$AE,$06,$C1,$06,$D3,$06,$E4,$06,$F4,$06,$03,$07,$11,$07,$1E,$07,$2B,$07,$37,$07,$42,$07,$4D,$07,$57,$07,$60,$07,$69,$07,$72,$07,$7A,$07,$81

SFX_Unk1:
    db $07,$88,$07,$8F,$07,$95,$07,$9B,$07,$A1,$07,$A6,$07,$AB,$07,$B0,$07,$B4,$07,$B9,$07,$BD,$07,$C0,$07,$C4,$07,$C7,$07,$CA,$07,$CD,$07,$D0,$07,$D3,$07,$D5,$07,$D8,$07,$DA,$07,$DC,$07,$DE,$07,$E0,$07,$E2,$07,$E3,$07,$E5,$07,$E6,$07,$E8,$07,$E9,$07,$EA,$07,$EC,$07,$ED,$07,$EE,$07,$EF,$07,$F0,$07,$F1,$07,$F1,$07,$F2,$07,$F3,$07,$F4,$07,$F4,$07,$F5,$07,$F6,$07,$F6,$07,$F7,$07,$F7,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$F8,$07,$FE,$DC,$FD,$77,$FC,$00,$F3,$06,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$F6,$0E,$24,$30,$30,$F2,$10,$F6,$0C,$25,$30,$30,$F2,$01,$F6,$0A,$26,$30,$30,$F2,$11,$F6,$08,$27,$30,$30,$F2,$10,$F6,$06,$28,$30,$30,$F2,$01,$F6,$04,$29,$30,$30,$F2,$11,$F6,$02,$2A,$30,$30,$81

SFX_Unk2:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$02,$FB,$7F,$FA,$00,$F9,$40,$F8,$00,$F2,$11,$F6,$0E,$32,$06,$06,$F6,$0D,$32,$30,$30,$F6,$08,$32,$30,$30,$81

SFX_Unk3:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$04,$FB,$32,$FA,$00,$F9,$DC,$F8,$00,$F2,$11,$F6,$0E,$23,$08,$08,$F6,$09,$23,$10,$10,$81

SFX_Unk4:
    db $FE,$DC,$FD,$00,$FC,$80,$F3,$05,$FB,$7F,$FA,$00,$F9,$78,$F8,$00,$F6,$0E,$30,$0C,$0C,$F6,$0B,$30,$0C,$0C,$F6,$05,$30,$0C,$0C,$81

SFX_Unk5:
    db $FE,$DC,$FD,$00,$FC,$80,$F3,$05,$FB,$7F,$FA,$00,$F9,$78,$F8,$00,$F6,$0D,$30,$0C,$0C,$F6,$09,$30,$0C,$0C,$F6,$04,$30,$0C,$0C,$81

SFX_Unk6:
    db $FE,$DC,$FD,$00,$FC,$02,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$F2,$11,$F6,$0E,$3C,$06,$06,$F6,$09,$F2,$10,$3C,$06,$06,$F2,$11,$F6,$0E,$43,$06,$06,$F2,$01,$F6,$09,$43,$06,$06,$81

SFX_Unk7:
    db $FC,$80,$3C,$0C,$0C,$3E,$0C,$0C,$40,$0C,$0C,$41,$0C,$0C,$3E,$0C,$0C,$3C,$0C,$0C,$80,$03,$03,$81

SFX_Unk8:
    db $FE,$DC,$F3,$01,$FB,$DC,$FA,$00,$F9,$DC,$F8,$00,$F6,$0E,$1F,$0C,$0C,$F6,$06,$1F,$0C,$0C,$81

SFX_Unk9:
    db $FE,$DC,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F6,$0D,$1F,$08,$04,$F6,$0B,$1F,$08,$04,$81

SFX_UnkA:
    db $FE,$DC,$FD,$00,$FC,$80,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$F6,$0E,$41,$08,$08,$48,$08,$08,$F6,$0D,$4D,$30,$30,$81

SFX_UnkB:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$00,$FB,$50,$FA,$00,$F9,$78,$F8,$00,$F2,$11,$F6,$04,$18,$08,$08,$F6,$0E,$1F,$18,$18,$F6,$03,$18,$08,$08,$F6,$0B,$20,$18,$18,$F6,$02,$18,$08,$08,$F6,$09,$21,$0C,$0C,$F6,$05,$18,$08,$08,$22,$0C,$0C,$F6,$03,$18,$08,$08,$23,$0C,$0C,$F6,$01,$18,$08,$08,$24,$0C,$0C,$81

SFX_UnkC:
    db $FE,$DC,$FD,$00,$FC,$C0,$F3,$02,$FB,$DC,$FA,$00,$F9,$DC,$F8,$00,$F2,$11,$F6,$0E,$28,$06,$06,$F6,$0A,$28,$06,$06,$F6,$0B,$28,$06,$06,$F6,$07,$28,$18,$18,$81

SFX_UnkD:
    db $FC,$00,$0C,$06,$06,$0E,$03,$03,$11,$06,$06,$10,$06,$06,$0C,$06,$06,$0E,$03,$03,$11,$06,$06,$10,$06,$06,$80,$0C,$0C,$0C,$06,$06,$0E,$03,$03,$11,$06,$06,$0C,$06,$06,$0C,$06,$06,$0E,$03,$03,$11,$06,$06,$0C,$06,$06,$80,$18,$18,$81

SFX_UnkE:
    db $FC,$80,$FC,$80,$0C,$0C,$0C,$F3,$AF,$0C,$60,$60,$80,$03,$03,$81

SFX_UnkF:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$F2,$10,$F6,$0E,$3C,$08,$08,$40,$08,$08,$F2,$11,$43,$08,$08,$43,$08,$08,$F2,$01,$48,$08,$08,$4C,$08,$08,$F2,$11,$F6,$0D,$4F,$08,$08,$F2,$10,$F6,$0A,$4F,$08,$08,$F2,$11,$F6,$08,$4F,$08,$08,$F2,$01,$F6,$04,$4F,$08,$08,$81

SFX_Unk10:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$F6,$0E,$54,$03,$03,$60,$03,$03,$F6,$0C,$54,$03,$03,$60,$03,$03,$81

SFX_Unk11:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$00,$F6,$0D,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$18,$02,$02,$19,$02,$02,$81

SFX_Unk12:
    db $FE,$DC,$F3,$02,$FB,$FA,$FA,$00,$F9,$FA,$F8,$00,$F6,$0E,$1F,$06,$03,$F6,$0A,$1F,$06,$03,$F6,$08,$1F,$06,$02,$F6,$04,$1F,$06,$02,$F6,$02,$1F,$06,$01,$81

SFX_Unk13:
    db $FE,$DC,$F3,$01,$FB,$F0,$FA,$00,$F9,$C8,$F8,$00,$F6,$0E,$1F,$06,$06,$F6,$0B,$1F,$06,$06,$F6,$06,$1F,$06,$06,$F6,$04,$1F,$06,$06,$81

SFX_Unk14:
    db $FE,$DC,$FD,$00,$FC,$C0,$F3,$04,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$80,$0C,$0C,$F2,$11,$F6,$0E,$43,$06,$06,$F6,$07,$43,$06,$06,$F6,$0E,$48,$06,$06,$F6,$07,$48,$06,$06,$F6,$0E,$4A,$06,$06,$F6,$07,$4A,$06,$06,$F6,$0E,$4F,$06,$06,$F6,$07,$4F,$06,$06,$F6,$0E,$4A,$06,$06,$F6,$07,$4A,$06,$06,$F6,$0E,$48,$06,$06,$F6,$07,$48,$06,$06,$F2,$10,$F6,$0A,$43,$06,$06,$F6,$05,$43,$06,$06,$F6,$0A,$48,$06,$06,$F6,$05,$48,$06,$06,$F6,$0A,$4A,$06,$06,$F6,$05,$4A,$06,$06,$F6,$0A,$4F,$06,$06,$F6,$05,$4F,$06,$06,$F6,$0A,$4A,$06,$06,$F6,$05,$4A,$06,$06,$F6,$0A,$48,$06,$06,$F6,$05,$48,$06,$06,$F2,$01,$F6,$07,$43,$06,$06,$F6,$03,$43,$06,$06,$F6,$07,$48,$06,$06,$F6,$03,$48,$06,$06,$F6,$07,$4A,$06,$06,$F6,$03,$4A,$06,$06,$F6,$07,$4F,$06,$06,$F6,$03,$4F,$06,$06,$F6,$07,$4A,$06,$06,$F6,$03,$4A,$06,$06,$F6,$07,$48,$06,$06,$F6,$03,$48,$06,$06,$F2,$11,$F6,$05,$43,$06,$06,$F6,$02,$43,$06,$06,$F6,$05,$48,$06,$06,$F6,$02,$48,$06,$06,$F6,$04,$4A,$06,$06,$F6,$02,$4A,$06,$06,$F6,$04,$4F,$06,$06,$F6,$02,$4F,$06,$06,$F6,$03,$4A,$06,$06,$F6,$01,$4A,$06,$06,$F6,$02,$48,$06,$06,$F6,$01,$48,$06,$06,$81

SFX_Unk15:
    db $FE,$DC,$F3,$02,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$88,$F6,$0C,$24,$06,$03,$F6,$08,$24,$06,$04,$F6,$02,$24,$06,$04,$81

SFX_Unk16:
    db $FE,$DC,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F6,$0F,$24,$0C,$01,$81

SFX_Unk17:
    db $FE,$DC,$F3,$06,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F6,$0E,$39,$03,$03,$F6,$0B,$39,$03,$03,$F6,$08,$39,$03,$03,$F6,$0E,$39,$06,$06,$F6,$0C,$39,$06,$06,$F6,$0A,$39,$06,$06,$F6,$08,$39,$0C,$0C,$F6,$06,$39,$0C,$0C,$F6,$03,$39,$06,$06,$F6,$01,$39,$06,$06,$81

SFX_Unk18:
    db $FE,$DC,$FD,$00,$FC,$00,$F3,$01,$F6,$0B,$FB,$C8,$FA,$00,$F9,$C8,$F8,$00,$F2,$11,$F6,$0E,$24,$08,$08,$F6,$0C,$30,$08,$08,$F6,$0A,$3C,$08,$08,$81


SFX_Title_Cursor:
    db MUSIC_CMD_TEMPO,$DC
    db MUSIC_CMD_LIMIT,$00
    db MUSIC_CMD_WIDTH,$40
    db MUSIC_CMD_FADE,$01
    db MUSIC_CMD_UNK,$00
    db MUSIC_CMD_UNK2,$00
    db MUSIC_CMD_UNK3,$00
    db MUSIC_CMD_DETUNE,$00
    db MUSIC_CMD_PAN,$11
    db MUSIC_CMD_VOLUME,$0E
    db $43,$03,$03
    db $48,$03,$03
    db $81

SFX_Title_Select:
    db $FE,$DC
    db $FD,$00
    db $FC,$C0
    db $F3,$01
    db $FB,$00
    db $FA,$00
    db $F9,$00
    db $F8,$00
    db $F2,$11
    db $F6,$0E
    db $3C,$03,$03
    db $F6,$08
    db $3C,$03,$03
    db $F6,$0E
    db $3E,$03,$03
    db $F6,$08
    db $3E,$03,$03
    db $F6,$0C
    db $40,$03,$03
    db $F6,$06
    db $40,$03,$03
    db $F6,$0A
    db $43,$03,$03
    db $F6,$04
    db $43,$03,$03
    db $F2,$10
    db $F6,$08
    db $3C,$03,$03
    db $F6,$04
    db $3C,$03,$03
    db $F6,$06
    db $F2,$11
    db $3E,$03,$03
    db $F6,$03
    db $3E,$03,$03
    db $F6,$04
    db $F2,$01
    db $40,$03,$03
    db $F6,$02
    db $40,$03,$03
    db $F2,$11
    db $F6,$03
    db $43,$03,$03
    db $F6,$01
    db $43,$03,$03
    db $81

SFX_Password_EnterLetter:
    db $FE,$DC,$FD,$00,$FC,$40,$F3,$01,$FB,$00,$FA,$00,$F9,$00,$F8,$00,$F2,$11,$F6,$0E,$3C,$03,$03,$37,$03,$03,$81

    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$EE,$DD,$CC,$BB,$AA,$99,$88,$77,$66,$55,$44,$33,$22,$11,$00,$01,$23,$45,$67,$89,$AB,$CD,$EF,$FE,$DC,$BA,$98,$76,$54,$32,$10,$FF,$EE,$DD,$CC,$BB,$AA,$99,$88,$77,$66,$55,$44,$33,$22,$11,$00,$02,$46,$8A,$CE,$EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE,$EC,$A8,$64,$20,$22,$22,$DD,$DD,$22,$22,$DD,$DD,$22,$22,$DD,$DD,$22,$22,$DD,$DD,$22,$DD,$22,$DD,$22,$DD,$22,$DD,$22,$DD,$22,$DD,$22,$DD,$22,$DD,$02,$35,$68,$9B,$00,$00,$44,$44,$00,$00,$44,$44,$00,$00,$44,$44,$06,$66,$66,$66,$66,$66,$66,$66,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A0,$08,$9A,$BC,$DE,$FE,$ED,$CB,$A9,$87,$65,$43,$21,$01,$23,$45,$67,$88,$77,$66,$55,$44,$33,$22,$11,$FF,$EE,$DD,$CC,$BB,$AA,$99,$88

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
    SWAP_AND_CALL b1_root
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
    SWAP_AND_CALL b1_root
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
    SWAP_AND_CALL b1_root
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
    SWAP_AND_CALL b1_root
    ret

;starts actor clean up
;moves $380 bytes
StartActorCleanup:
    ld bc, MAX_ACTORS * ACTOR_sizeof
    ld hl, actors

ActorCleanup_Loop:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, ActorCleanup_Loop

    ret

StartActorCleanup2:
    ;the same as StartActorCleanup but clears index 0 and index 2-X
    ;basically, skips chalvo :)
    ld hl, actors
    call Call_000_26e3

    ld bc, (MAX_ACTORS-2) * ACTOR_sizeof
    ld hl, actors+(2*ACTOR_sizeof)

ActorCleanup_Loop2:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, ActorCleanup_Loop2

    ret

Call_000_240e:
    push hl
    push af

    ld a, [$cbbf]
    cp $80
    jr z, jr_000_2438


    ld a, [unk_cbc2]
    ld l, a
    ld a, [unk_cbc2+1]
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
    ld [unk_cbc2], a
    ld a, h
    ld [unk_cbc2+1], a

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

    ld a, HIGH(unk_cc00)
    ld [unk_cbc0+1], a
    ld [unk_cbc2+1], a
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

    LCDC_ON

    ret

    LCDC_OFF

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

    db $3E,$F2,$40,$04,$DA,$67,$44,$0F,$BE,$EB,$61,$FC,$68,$14,$A9,$4F
    db $9A,$B6,$59,$BB,$23,$F4,$57,$D9,$80,$DD,$0C,$06,$33,$8D,$4B,$62
    db $1B,$25,$D5,$10,$6D,$5C,$E9,$E3,$FF,$C1,$AE,$FA,$C7,$7D,$75,$F1
    db $2C,$3F,$54,$19,$7F,$B2,$21,$CE,$E5,$CA,$50,$0B,$65,$6C,$D0,$ED
    db $AC,$9D,$C8,$3B,$A6,$7E,$8A,$29,$69,$3A,$C6,$F8,$73,$9C,$83,$16
    db $36,$17,$26,$E6,$CC,$E4,$6F,$58,$51,$D2,$1F,$4A,$0E,$A4,$2E,$DC
    db $D6,$4E,$96,$E7,$F9,$60,$43,$84,$27,$E8,$B7,$88,$A5,$47,$90,$87
    db $F3,$EC,$DE,$AF,$C0,$24,$B9,$85,$2F,$5E,$FE,$86,$5A,$F6,$1E,$DF
    db $41,$5D,$8F,$1C,$94,$F7,$2B,$5F,$6E,$6B,$46,$7A,$55,$09,$A1,$32
    db $18,$89,$AD,$15,$C2,$93,$C4,$03,$4C,$63,$6A,$98,$91,$11,$00,$45
    db $1A,$22,$B4,$77,$34,$CD,$FB,$E1,$A2,$0D,$48,$C3,$01,$2A,$EF,$72
    db $C9,$CB,$70,$31,$D3,$07,$66,$0A,$EE,$38,$05,$FD,$EA,$E0,$37,$49
    db $78,$7C,$02,$53,$39,$42,$28,$AA,$8E,$B1,$AB,$71,$56,$13,$BA,$A8
    db $F5,$D1,$2D,$CF,$08,$BF,$8C,$C5,$3C,$DB,$8B,$B3,$30,$4D,$7B,$5B
    db $A3,$95,$B8,$3D,$97,$74,$1D,$35,$E2,$B5,$81,$9F,$64,$A0,$9E,$79
    db $A7,$B0,$76,$9B,$D8,$D4,$52,$20,$BC,$99,$F0,$92,$12,$BD,$82,$D7

Call_000_25e1:
    ld a, [holdTimer]
    and a
    jr nz, jr_000_2624

    ld a, [unk_c9ff]
    push af
    ld a, $06

    SWAP_BANK

    ld a, [$cb28]
    ld h, a
    ld a, [$cb27]
    ld l, a
    ld a, [hl+]
    ld [localInputHeld], a
    ld a, [hl+]
    ld [holdTimer], a

jr_000_260c:
    ld a, h
    ld [$cb28], a
    ld a, l
    ld [$cb27], a
    pop af

    SWAP_BANK

jr_000_2624:
    ld a, [localInputHeld]
    ldh [INPUT_HOLD], a
    ld d, a
    ld a, [$cb29]
    cpl
    and d
    ldh [INPUT_PRESS], a
    ld a, d
    ld [$cb29], a
    ld hl, holdTimer
    dec [hl]
    ret


Call_000_263a:
    ld hl, $cb2c
    bit 1, [hl]
    jr nz, jr_000_2691

    ldh a, [INPUT_HOLD]
    ld hl, $cb2c
    bit 0, [hl]
    jr nz, jr_000_264f

    ld [localInputHeld], a
    set 0, [hl]

jr_000_264f:
    ld d, a
    ld a, [localInputHeld]
    ld e, a
    cp d
    jr nz, jr_000_2666

    ld a, [holdTimer]
    inc a
    ld [holdTimer], a
    jr nz, jr_000_2691

    dec a
    ld [holdTimer], a
    res 0, [hl]

jr_000_2666:
    ld a, [$cb28]
    ld h, a
    ld a, [$cb27]
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, [holdTimer]
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
    ld [localInputHeld], a
    ld a, $01
    ld [holdTimer], a

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
    ld [roomPointer], a
    ld a, [hl+]
    ld [roomPointer+1], a
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
    ;store all vars
    push af
    push bc
    push de
    push hl

    call Call_000_0619
    xor a

jr_000_27fe:
    ;clear
    ld [$c980], a
    ld [$c981], a

    ;if currentStage == 0, skip
    ld a, [currentStage]
    cp $08
    jr z, jr_000_2817
    ;else

    ;init stuff
    ld a, [currentPassword]

jr_000_280e:
    ld h, $00
    ld l, a
    ld de, $cb13
    add hl, de

jr_000_2815:
    ld [hl], $01

jr_000_2817:

    ;push c9ff to stack
    ld a, [unk_c9ff]
    push af

    ;load
    ld a, [$ca02]

    SWAP_BANK

    ;set these to $10
    ld a, $10
    ld [$c82d], a
    ld a, $10
    ld [$c82b], a

    ;load pointer
    ld a, [roomPointer+1]
    ld b, a
    ld a, [roomPointer]
    ld c, a

    ld de, $9800

jr_000_2842:
    ;loop the room data
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
    ld a, [roomPointer+1]
    ld b, a
    ld a, [roomPointer]
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

    SWAP_BANK

    ld hl, $c983
    bit 2, [hl]
    jr z, jr_000_2946

    ld a, [unk_c9ff]
    push af
    ld a, $1f

    SWAP_BANK

    ld a, [currentStage]
    add a
    add a
    ld d, a
    ld e, $00
    ld hl, $5000
    add hl, de
    ld de, $9800
    ld bc, $0400
    call copy
    pop af

    SWAP_BANK

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
    ld [unk_c976], a

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

    ld de, actors
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
    SWAP_AND_CALL whatCode
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
    ld a, [unk_c9ff]
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
    ld hl, image_list
    ld d, 0
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cb10], a

    SWAP_BANK

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [$cb11], a
    ld a, h
    ld [$cb12], a
    ld de, $8000
    ld bc, $1800
    call copy
    pop af

    SWAP_BANK

    pop af
    ld [currentStage], a
    ret

macro image_entry
    db BANK(\1)
    dw \1
endm

image_list:
    image_entry bank_img_stage1
    image_entry bank_img_stage2
    image_entry bank_img_stage3
    image_entry bank_img_stage4
    image_entry bank_img_stage5
    image_entry bank_img_stage6
    image_entry bank_img_stage7
    image_entry bank_img_stage8
    image_entry bank_img_stage1_boss
    image_entry bank_img_stage2_boss
    image_entry bank_img_stage3_boss
    image_entry bank_img_stage4_boss
    image_entry bank_img_stage5_boss
    image_entry bank_img_stage6_boss
    image_entry bank_img_stage7_boss
    image_entry bank_img_stage8_boss
    image_entry bank_img_levelMap
    image_entry bank_img_stageTransition
    image_entry bank_img_intro1
    image_entry bank_img_intro2
    image_entry bank_img_ending
    image_entry bank_img_jss
    image_entry bank_img_last

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


;palette stuff???
;darken/lighten?

;a == type
;0 == normal -> light
;1 == light -> normal
;2 == normal -> dark
;3 or greater == dark -> normal

;d == bitflag for each (21B)

def PALFADE_NTL equ 0
def PALFADE_LTN equ 1
def PALFADE_NTD equ 2
def PALFADE_DTN equ 3
Pal_Fade:
    ;store a
    ld [$c810], a

    ;store d
    ld a, d
    ld [$c811], a

    ;store 4
    ld a, 4
    ld [$c812], a

    ;store 0
    xor a
    ld [$c813], a

    ;restore a
    ld a, [$c810]

    ;if type != 0
    cp PALFADE_NTL
    jr nz, .not_zero

    ;reset these and end
    xor a
    ld [$c814], a
    ld [$c815], a
    ld [$c816], a
    jr .end

    .not_zero:
    ;if type != 2
    cp PALFADE_NTD
    jr nz, .not_two

    ;set these as high as possible and end
    ld a, $ff
    ld [$c814], a
    ld [$c815], a
    ld [$c816], a
    jr .end

    .not_two:
    ld a, [$c80d]
    ld [$c814], a
    ld a, [$c80e]
    ld [$c815], a
    ld a, [$c80f]
    ld [$c816], a

    ;restore d
    ld a, [$c811]
    ld d, a

    ;restore a
    ld a, [$c810]

    ;if type != 1
    cp PALFADE_LTN
    jr nz, .not_one

    ;a = 0
    xor a
    jr .is_one

    .not_one:
    ;a = $FF
    ld a, %11111111

    .is_one:
    ;check if change bg
    bit 0, d
    jr z, .skip_bg

    ldh [rBGP], a

    .skip_bg:
    ;check if change obj1
    bit 1, d
    jr z, .skip_obj1

    ldh [rOBP0], a

    .skip_obj1:
    ;check if change obj2
    bit 2, d
    jr z, .end

    ldh [rOBP1], a

    .end:
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
    ld de, rBGP
    ld a, [$c811]
    bit 0, a
    call nz, Call_000_2eae
    ld hl, $c815
    ld de, rOBP0
    ld a, [$c811]
    bit 1, a
    call nz, Call_000_2eae
    ld hl, $c816
    ld de, rOBP1
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
    ld hl, rSTAT
    set 6, [hl]
    xor a
    ldh [rIF], a
    ld de, rIE
    ld a, [de]
    set 1, a
    call Call_000_240e
    ret

Call_000_2f39:
    ld de, rIE
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

db $00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02
db $02,$02,$02,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FE
db $FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00
db $00,$00,$00,$01,$01,$01,$02,$02,$02,$03,$03,$03,$03,$03,$04,$04
db $04,$04,$04,$03,$03,$03,$03,$03,$02,$02,$02,$01,$01,$01,$00,$00
db $00,$00,$00,$FF,$FF,$FF,$FE,$FE,$FE,$FD,$FD,$FD,$FD,$FD,$FC,$FC
db $FC,$FC,$FC,$FD,$FD,$FD,$FD,$FD,$FE,$FE,$FE,$FF,$FF,$FF,$00,$00
db $00,$00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$05,$05,$06
db $06,$06,$05,$05,$05,$05,$04,$04,$04,$03,$03,$02,$02,$01,$01,$00
db $00,$00,$FF,$FF,$FE,$FE,$FD,$FD,$FC,$FC,$FB,$FB,$FB,$FB,$FB,$FA
db $FA,$FA,$FB,$FB,$FB,$FB,$FC,$FC,$FC,$FD,$FD,$FE,$FE,$FF,$FF,$00
db $00,$00,$01,$02,$03,$03,$04,$05,$05,$06,$06,$07,$07,$07,$07,$08
db $08,$08,$07,$07,$07,$07,$06,$06,$05,$05,$04,$03,$02,$02,$01,$00
db $00,$00,$FF,$FE,$FD,$FD,$FC,$FB,$FB,$FA,$FA,$F9,$F9,$F9,$F9,$F8
db $F8,$F8,$F9,$F9,$F9,$F9,$FA,$FA,$FB,$FB,$FC,$FD,$FD,$FE,$FF,$00
db $00,$01,$02,$03,$03,$04,$05,$06,$07,$07,$08,$08,$09,$09,$09,$09
db $0A,$09,$09,$09,$09,$08,$08,$07,$06,$06,$05,$04,$03,$02,$01,$00
db $00,$FF,$FE,$FE,$FD,$FC,$FB,$FA,$F9,$F9,$F8,$F8,$F7,$F7,$F7,$F7
db $F6,$F7,$F7,$F7,$F7,$F8,$F8,$F9,$F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
db $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0A,$0B,$0B,$0B,$0B
db $0C,$0B,$0B,$0B,$0B,$0A,$09,$09,$08,$07,$06,$05,$04,$03,$02,$01
db $00,$FF,$FE,$FD,$FC,$FB,$FA,$F9,$F8,$F7,$F6,$F6,$F5,$F5,$F5,$F5
db $F4,$F5,$F5,$F5,$F5,$F6,$F7,$F7,$F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF
db $00,$01,$02,$04,$05,$06,$07,$09,$0A,$0A,$0B,$0C,$0D,$0D,$0D,$0D
db $0E,$0D,$0D,$0D,$0C,$0C,$0B,$0A,$09,$08,$07,$06,$05,$03,$02,$01
db $00,$FF,$FE,$FC,$FB,$FA,$F9,$F8,$F7,$F6,$F5,$F4,$F4,$F3,$F3,$F3
db $F2,$F3,$F3,$F3,$F4,$F4,$F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FE,$FF
db $00,$01,$03,$04,$06,$07,$09,$0A,$0B,$0C,$0D,$0E,$0E,$0F,$0F,$0F
db $10,$0F,$0F,$0F,$0E,$0E,$0D,$0C,$0B,$0A,$08,$07,$05,$04,$02,$01
db $00,$FF,$FD,$FC,$FA,$F9,$F8,$F6,$F5,$F4,$F3,$F2,$F2,$F1,$F1,$F1
db $F0,$F1,$F1,$F1,$F2,$F2,$F3,$F4,$F5,$F6,$F8,$F9,$FA,$FC,$FD,$FF
db $00,$02,$03,$05,$07,$08,$0A,$0B,$0C,$0E,$0F,$0F,$10,$11,$11,$11
db $12,$11,$11,$11,$10,$0F,$0E,$0D,$0C,$0B,$09,$08,$06,$05,$03,$01
db $00,$FF,$FD,$FB,$F9,$F8,$F6,$F5,$F4,$F3,$F1,$F1,$F0,$EF,$EF,$EF
db $EE,$EF,$EF,$EF,$F0,$F1,$F2,$F3,$F4,$F5,$F7,$F8,$FA,$FB,$FD,$FF
db $00,$02,$04,$06,$07,$09,$0B,$0C,$0E,$0F,$10,$11,$12,$13,$13,$13
db $14,$13,$13,$13,$12,$11,$10,$0F,$0D,$0C,$0A,$09,$07,$05,$03,$01
db $00,$FE,$FC,$FB,$F9,$F7,$F5,$F4,$F2,$F1,$F0,$EF,$EE,$ED,$ED,$ED
db $EC,$ED,$ED,$ED,$EE,$EF,$F0,$F1,$F2,$F4,$F5,$F7,$F9,$FB,$FD,$FF
db $00,$02,$04,$06,$08,$0A,$0C,$0E,$0F,$11,$12,$13,$14,$15,$15,$15
db $16,$15,$15,$14,$14,$13,$12,$10,$0F,$0D,$0C,$0A,$08,$06,$04,$01
db $00,$FE,$FC,$FA,$F8,$F6,$F4,$F2,$F1,$EF,$EE,$ED,$EC,$EB,$EB,$EB
db $EA,$EB,$EB,$EB,$EC,$ED,$EE,$F0,$F1,$F3,$F4,$F6,$F8,$FA,$FC,$FE
db $00,$02,$05,$07,$09,$0B,$0D,$0F,$11,$12,$14,$15,$16,$17,$17,$17
db $18,$17,$17,$16,$16,$15,$13,$12,$10,$0F,$0D,$0B,$08,$06,$04,$02
db $00,$FE,$FC,$F9,$F7,$F5,$F3,$F1,$EF,$EE,$EC,$EB,$EA,$E9,$E9,$E9
db $E8,$E9,$E9,$EA,$EA,$EB,$ED,$EE,$F0,$F1,$F3,$F5,$F7,$FA,$FC,$FE
db $00,$02,$05,$07,$0A,$0C,$0E,$10,$12,$14,$15,$17,$18,$18,$19,$19
db $1A,$19,$19,$18,$17,$16,$15,$13,$12,$10,$0E,$0C,$09,$07,$04,$02
db $00,$FE,$FB,$F9,$F6,$F4,$F2,$F0,$EE,$EC,$EB,$EA,$E8,$E8,$E7,$E7
db $E6,$E7,$E7,$E8,$E9,$EA,$EB,$EC,$EE,$F0,$F2,$F4,$F7,$F9,$FB,$FE
db $00,$03,$05,$08,$0B,$0D,$0F,$12,$14,$15,$17,$18,$1A,$1A,$1B,$1B
db $1C,$1B,$1B,$1A,$19,$18,$17,$15,$13,$11,$0F,$0C,$0A,$07,$05,$02
db $00,$FE,$FB,$F8,$F6,$F3,$F1,$EF,$ED,$EB,$E9,$E8,$E7,$E6,$E5,$E5
db $E4,$E5,$E5,$E6,$E7,$E8,$E9,$EB,$ED,$EF,$F1,$F3,$F6,$F8,$FB,$FE
db $00,$03,$06,$09,$0B,$0E,$11,$13,$15,$17,$19,$1A,$1B,$1C,$1D,$1D
db $1E,$1D,$1D,$1C,$1B,$1A,$18,$16,$14,$12,$10,$0D,$0B,$08,$05,$02
db $00,$FD,$FA,$F8,$F5,$F2,$F0,$ED,$EB,$E9,$E7,$E6,$E5,$E4,$E3,$E3
db $E2,$E3,$E3,$E4,$E5,$E6,$E8,$E9,$EB,$EE,$F0,$F2,$F5,$F8,$FB,$FE
db $00,$03,$06,$09,$0C,$0F,$12,$14,$16,$19,$1A,$1C,$1D,$1E,$1F,$1F
db $20,$1F,$1F,$1E,$1D,$1C,$1A,$18,$16,$14,$11,$0E,$0B,$08,$05,$02
db $00,$FD,$FA,$F7,$F4,$F1,$EF,$EC,$EA,$E8,$E6,$E4,$E3,$E2,$E1,$E1
db $E0,$E1,$E1,$E2,$E3,$E4,$E6,$E8,$EA,$EC,$EF,$F1,$F4,$F7,$FA,$FD
db $D5,$21,$00,$00,$19,$7E,$CB,$47,$C2,$BE,$34

unk_routine:
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
    ld a, [unk_c9ff]
    ld [$c821], a
    ld a, $03

    SWAP_BANK

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

    SWAP_BANK

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
    ld a, [unk_c9ff]
    ld [$c821], a
    ld a, $03

    SWAP_BANK

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

    SWAP_BANK

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

    SWAP_BANK

    ld hl, $000c
    add hl, bc
    dec [hl]
    xor a

Jump_000_3593:
    ret


do_scene_jmptbl:
    ld a, [sceneState]
    ld de, .jump_table_default
    push de
    rst $00

    .jumplist:
    dw sceneState0_init
    dw sceneState1_init
    dw sceneState2_init
    dw sceneState3_init
    dw sceneState4_init
    dw sceneState5_init
    dw sceneState6_init
    dw sceneState7_init
    dw sceneState8_init
    dw sceneState9_init
    dw sceneState10_init
    dw sceneState11_init
    dw sceneState12_init
    dw sceneState13_init
    dw sceneState14_init
    .jump_table_default:
    ret

;logo
sceneState0_init:
    SWAP_AND_CALL sceneState0_proc
    ret

sceneState1_init:
    ld a, [unk_c9ff]
    push af
    ld a, [$c803]
    push af
    ld a, [$c804]
    push af
    xor a
    ld [$c803], a
    ld [$c804], a

    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ld a, BANK(bank_img_stageTransition2)
    SWAP_BANK
    ld hl, bank_img_stageTransition2
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(ShowContinue)
    SWAP_BANK
    call ShowContinue

    cp $00
    jr nz, jr_000_3647

    ld a, $05
    ld [playerLives], a
    pop af
    ld [$c804], a
    pop af
    ld [$c803], a
    pop af

    SWAP_BANK

    ld a, $07
    ld [sceneState], a
    xor a
    ld [procState], a
    ret


jr_000_3647:
    ;clear scrn0
    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ;load stage transition gfx
    ld a, BANK(bank_img_stageTransition)
    SWAP_BANK
    ld hl, bank_img_stageTransition
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(ShowGameOver)
    SWAP_BANK
    call ShowGameOver

    pop af
    ld [$c804], a

    pop af
    ld [$c803], a

    pop af
    SWAP_BANK

    ld a, $02
    ld [sceneState], a

    xor a
    ld [procState], a

    ret

;title
sceneState2_init:
    ;stash current bank
    ld a, [unk_c9ff]
    push af

    ;clear ram stuff
    xor a
    ld [$c803], a
    ld [$c804], a
    ld [$ca06], a
    ld [$ca07], a
    ld [$ca08], a
    ld [titleDemoTimer], a
    ld [$cb25], a

    ;fill scrn0 with ff
    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ;load title img
    ld a, BANK(bank_img_title)
    SWAP_BANK
    ld hl, bank_img_title
    ld de, _VRAM
    ld bc, $1000 ;size
    call copy

    ;run title_init
    ld a, BANK(Title_Init)
    SWAP_BANK
    call Title_Init

    ;pop current bank & load
    pop af
    SWAP_BANK

    ;check if demoing
    ld a, [demoing]
    and a
    jr z, Player_Init

    ld a, $0e
    ld [sceneState], a
    xor a
    ld [procState], a
    ret


Player_Init:
    ld a, c
    or a
    jr nz, jr_000_3745

    ld a, $00
    ld [currentStage], a
    ld a, $05
    ld [playerLives], a
    ld a, $0d
    ld [sceneState], a
    xor a
    ld [procState], a
    ret


jr_000_3745:
    ld a, $03
    ld [sceneState], a
    xor a
    ld [procState], a
    ret

sceneState3_init:
    xor a
    ld [$c803], a
    ld [$c804], a

    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ld a, BANK(bank_img_password)
    SWAP_BANK
    ld hl, bank_img_password
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(jr_001_6eb4)
    SWAP_BANK
    call jr_001_6eb4

    or a
    jr z, jr_000_37a8

    ld a, $02
    ld [sceneState], a

    xor a
    ld [procState], a

    ret

jr_000_37a8:
    ld a, $07
    ld [sceneState], a
    xor a
    ld [procState], a
    ret

sceneState4_init:
    ld a, [unk_c9ff]
    push af

    ld a, [$c803]
    push af

    ld a, [$c804]
    push af

    xor a
    ld [$c803], a
    ld [$c804], a

    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ld a, BANK(bank_img_password)
    SWAP_BANK
    ld hl, bank_img_password
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(jr_001_719d)
    SWAP_BANK
    call jr_001_719d

    pop af
    ld [$c804], a

    pop af
    ld [$c803], a

    pop af
    SWAP_BANK

    ld a, $07
    ld [sceneState], a

    xor a
    ld [procState], a

    ret


Call_000_382c:
    ld a, [currentStage]
    cp $08
    ret z

    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ld a, BANK(bank_img_worldMap)
    SWAP_BANK
    ld hl, bank_img_worldMap
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(ShowWorldMap)
    SWAP_BANK
    call ShowWorldMap

    ld a, LCDCF_ON | LCDCF_BLK01 | LCDCF_BGON
    ldh [rLCDC], a
    ret


sceneState5_init:
    SWAP_AND_CALL b5_root
    ret


sceneState6_init:
    xor a
    ld [$c803], a
    ld [$c804], a

    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ld a, BANK(bank_img_font)
    SWAP_BANK
    ld hl, bank_img_font
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(StartCredits)
    SWAP_BANK
    call StartCredits

    ld a, $02
    ld [sceneState], a

    xor a
    ld [procState], a

    ret

sceneState7_init:
    ld a, [unk_c9ff]
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

    ld a, BANK(Fill_SCRN0)
    SWAP_BANK
    call Fill_SCRN0

    ld a, BANK(bank_img_stageTransition)
    SWAP_BANK
    ld hl, bank_img_stageTransition
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(ShowStageScreen)
    SWAP_BANK
    ld a, $18
    call Call_000_0903
    call ShowStageScreen

    pop af
    ld [$c804], a

    pop af
    ld [$c803], a

    pop af
    SWAP_BANK

    ld a, $08
    ld [sceneState], a

    xor a
    ld [procState], a

    ret


    ret


sceneState8_init:
    ld a, [procState]
    ld de, $3971
    push de
    rst $00
    ld [hl], d
    add hl, sp
    xor b
    add hl, sp
    ret

    LCDC_OFF

    ld a, [demoing]
    and a
    jr nz, jr_000_39a0

    xor a
    ld [titleDemoTimer], a
    ld [$cb25], a
    ld [$cb29], a
    ld a, $00
    ld [holdTimer], a
    ld hl, $d000
    ld a, h
    ld [$cb28], a
    ld a, l
    ld [$cb27], a
    ld hl, $cb2c
    res 1, [hl]

jr_000_39a0:
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    xor a
    ld [$c983], a
    call Call_000_2d07

    LCDC_ON

    ld a, $0a
    ld [sceneState], a

    xor a
    ld [procState], a
    ret


sceneState9_init:
    SWAP_AND_CALL jr_003_64da
    ret


sceneState10_init:
    SWAP_AND_CALL whatCode2
    ret

sceneState11_init:
    push af
    push bc
    push de
    push hl
    ld a, [unk_c9ff]
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
    call Play_SFX
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
    ld [sceneState], a

    ld a, PADF_START
    ldh [INPUT_HOLD], a

    pop af
    bit 1, a
    jr z, jr_000_3a1b

    call Call_000_0a79

jr_000_3a1b:
    pop af
    ld [$c804], a

    pop af
    ld [$c803], a

    ld a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_BLK01 | LCDCF_OBJON | LCDCF_BGON
    ldh [rLCDC], a

    pop af

    SWAP_BANK

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

    SWAP_BANK

    ld de, $8000
    ld bc, $1000
    call copy
    ret


Call_000_3a63:
    ld a, $01
    ld [sceneState], a
    call Call_000_3afd

    ;load gfx
    ld a, BANK(bank_img_levelMap)
    SWAP_BANK
    ld hl, bank_img_levelMap
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ;load tiles
    ld de, _SCRN1
    ld hl, levelmap_bgTiles
    call Draw_EntireScreenTiles

    call Call_000_3b4e
    call Call_000_3bd2
    call Call_000_3be9
    call Call_000_3bfc

    ld a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_BLK01 | LCDCF_BG9C00 | LCDCF_BGON
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
    ld [sceneState], a
    call Call_000_3afd

    ld a, BANK(bank_img_worldMap)
    SWAP_BANK
    ld hl, bank_img_worldMap
    ld de, _VRAM_BLOCK0
    ld bc, $1000
    call copy

    ld a, BANK(ShowWorldMap)
    SWAP_BANK
    call ShowWorldMap

    ;set lcdc
    ld a, LCDCF_ON | LCDCF_BLK01 | LCDCF_BG9C00 | LCDCF_BGON
    ldh [rLCDC], a

    ;set palette
    ld a, %00011110
    ldh [rBGP], a
    ld [$c80d], a

    xor a
    ret


Call_000_3afd:
    ldh a, [rLY]
    cp $91
    jr nc, jr_000_3b06

    nop
    jr Call_000_3afd

jr_000_3b06:
    xor a
    ldh [rLCDC], a

    ;fill scrn1 with ff
    ld a, $ff
    ld hl, _SCRN1
    ld bc, _SRAM-_SCRN1
    .jr_000_3b11:
    ld a, $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, .jr_000_3b11

    xor a
    ld [$c803], a
    ld [$c804], a

    ret


Call_000_3b21:
    call Call_000_3c43
    call CheckPad
    ld a, [$c803]
    ld [$c805], a
    ld [$c807], a
    ld a, [$c804]
    ld [$c806], a
    ld [$c808], a
    ld hl, unk_ffa1
    set 0, [hl]
    halt

jr_000_3b3f:
    call Call_000_0c2e
    ld hl, unk_ffa1
    bit 1, [hl]
    jr z, jr_000_3b3f

    res 1, [hl]
    ldh a, [INPUT_PRESS]
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
    ld a, [sceneState]
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
    ld a, [sceneState]
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
    ld hl, unk_pointers_thing
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

unk_tiles_thing:
    db 13, 12
    db $0E,$08,$09,$0A,$04,$05,$06,$00,$80,$FF,$FF,$FF,$FF
    db $FF,$02,$01,$00,$06,$05,$04,$0A,$09,$08,$0D,$0C,$80
    db $80,$80,$80,$FF,$04,$00,$08,$01,$05,$09,$02,$06,$0A
    db $03,$07,$0B,$80,$FF,$FF,$FF,$00,$01,$02,$04,$05,$06
    db $08,$09,$0A,$0C,$0D,$0E,$80,$FF,$FF,$FF,$05,$00,$01
    db $02,$04,$06,$08,$09,$0A,$0C,$0D,$0E,$80,$80,$FF,$FF
    db $09,$08,$0A,$0B,$04,$05,$06,$07,$00,$01,$02,$03,$80
    db $80,$FF,$FF,$0E,$0D,$0F,$09,$0A,$0B,$05,$06,$07,$01
    db $02,$03,$80,$80,$FF,$FF,$07,$03,$0B,$02,$06,$0A,$01
    db $05,$09,$00,$04,$08,$80,$FF,$FF,$FF,$01,$0D,$01,$0C
    db $04,$0C,$05,$0C,$06,$0C,$FF,$FF,$01,$01,$04,$01,$07
    db $01,$0A,$01,$01,$04,$04,$04,$07,$04,$0A,$04,$01,$07

unk_tiles_thing_2:
    db 4, 7
    db $07,$07,$0A,$07
    db $01,$0A,$04,$0A
    db $07,$0A,$0A,$0A
    db $01,$0C,$07,$0B
    db $0D,$0C,$0F,$08
    db $09,$07,$03,$08
    db $02,$04,$08,$02

unk_pointers_thing:
    dw $6451
    dw $64A1
    dw $645B
    dw $64AB
    dw $6465
    dw $64B5
    dw $646F
    dw $64BF
    dw $6479
    dw $64C9
    dw $6483
    dw $64D3
    dw $648D
    dw $64DD
    dw $6497
    dw $64E7
    dw $61C7
    dw $616A
    dw $6172
    dw $617A
    dw $6182
    dw $618A
    dw $6192
    dw $619A
    dw $61A2
    dw $61BF

sceneState12_init:
    SWAP_AND_CALL jr_005_4c60
    ret

sceneState13_init:
    ld a, [procState]
    cp $03
    jp c, Jump_000_3e22

    cp $0a
    jp c, Jump_000_3e17

    cp $0d
    jp c, Jump_000_3e22

    cp $13
    jp nc, Jump_000_3e22

Jump_000_3e17:
    ldh a, [INPUT_HOLD]
    and PADF_START | PADF_A
    jr z, Jump_000_3e22

    ld a, $13
    ld [procState], a

Jump_000_3e22:
    SWAP_AND_CALL jr_005_6a92
    ret

sceneState14_init:
    SWAP_AND_CALL jr_005_7431
    ret

unk_thing_thing:
db 4, 2
db $CA,$CB,$CC,$CD
db $8E,$8F,$CE,$CF

db 4, 2
db $FF,$FF,$FF,$FF
db $FF,$FF,$FF,$FF

db 4, 2
db $FF,$FF,$FF,$FF
db $F2,$F3,$F3,$F4

db 4, 2
db $FF,$FF,$FF,$FF
db $F5,$F6,$F6,$F7

db 4, 2
db $F2,$F3,$F3,$F4
db $F5,$F6,$F6,$F7

;exits???
db $0A,$FF,$FF,$0A
db $FF,$00,$0A,$01
db $00,$0A,$01,$01
db $00,$FF,$FF,$00
db $FF,$00,$00,$01
db $00,$00,$01,$01
db $05,$01,$00,$05
db $01,$01,$05,$02
db $01,$05,$02,$02
db $05,$FE,$FE,$05
db $FE,$FF,$05,$FF
db $FF,$05,$FF,$00