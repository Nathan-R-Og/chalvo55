; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ld a, $14
    call Call_000_0903
    ld hl, CreditsTilePointers
    ld c, $08

Jump_004_400a:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    push de
    pop hl
    ld de, $9800
    call Call_000_0756
    ld a, $01
    ld d, $01
    call Call_000_2df8
    ld a, $93
    ldh [rLCDC], a

jr_004_4023:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_4023

    ld c, $02

jr_004_4031:
    ld b, $83

jr_004_4033:
    push bc
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    pop bc
    dec b
    jr nz, jr_004_4033

    dec c
    jr nz, jr_004_4031

    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_404a:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_404a

    ld a, $01
    ld hl, $6c89
    call Call_000_08ae
    pop hl
    pop bc
    dec c
    jp nz, Jump_004_400a

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

    ld a, [currentStage]
    cp $08
    jr nz, jr_004_4bda

    ld a, $93
    ldh [rLCDC], a
    ret


jr_004_4bda:
    ld b, $00
    rlca
    ld c, a
    ld hl, unkbank4TilePointers
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9800
    call Call_000_0756
    ld a, $01
    ld d, $01
    call Call_000_2df8
    ld a, $93
    ldh [rLCDC], a

jr_004_4bf6:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_4bf6

    ld c, $3c

jr_004_4c04:
    push bc
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    pop bc
    ldh a, [$9c]
    and $09
    jr nz, jr_004_4c17

    dec c
    jr nz, jr_004_4c04

jr_004_4c17:
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_4c1e:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_4c1e

    ret

;stage 1 screen
unkbank4Tiles1::
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

;stage 2 screen
unkbank4Tiles2::
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

;stage 3 screen
unkbank4Tiles3::
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

;stage 4 screen
unkbank4Tiles4::
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

;stage 5 screen
unkbank4Tiles5::
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

;stage 6 screen
unkbank4Tiles6::
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

;stage 7 screen
unkbank4Tiles7::
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

;stage 8 screen
unkbank4Tiles8::
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

;game over screen
unkbank4Tiles9::
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

;stage 1 clear
unkbank4TilesA::
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

;stage 2 clear
unkbank4TilesB::
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

;stage 3 clear
unkbank4TilesC::
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

;stage 4 clear
unkbank4TilesD::
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

;stage 5 clear
unkbank4TilesE::
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

;stage 6 clear
unkbank4TilesF::
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

;stage 7 clear
unkbank4Tiles10::
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

;stage 8 clear
unkbank4Tiles11::
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
unkbank4Tiles12::
    db 2, 3
    db $c4, $c5
    db $e4, $e5
    db $ac, $ad

unkbank4TilePointers::
    dw unkbank4Tiles1
    dw unkbank4Tiles2
    dw unkbank4Tiles3
    dw unkbank4Tiles4
    dw unkbank4Tiles5
    dw unkbank4Tiles6
    dw unkbank4Tiles7
    dw unkbank4Tiles8
    dw unkbank4Tiles9
    dw unkbank4TilesA
    dw unkbank4TilesB
    dw unkbank4TilesC
    dw unkbank4TilesD
    dw unkbank4TilesE
    dw unkbank4TilesF
    dw unkbank4Tiles10
    dw unkbank4Tiles11
    dw unkbank4Tiles12

    ld hl, unkbank4Tiles13
    ld de, $9800
    call Call_000_0756
    ld a, $01
    ld d, $01
    call Call_000_2df8
    ld a, $93
    ldh [rLCDC], a

jr_004_6475:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_6475

    ld a, $19
    call Call_000_0903
    ld c, $00
    call Call_004_650f
    ld b, $3c

jr_004_648d:
    push bc
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    pop bc
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_64b6

    bit 1, a
    jr nz, jr_004_64a4

    dec b
    jr nz, jr_004_648d

jr_004_64a4:
    inc c
    ld a, $0a
    cp c
    jr z, jr_004_64bb

    ld a, $19
    call Call_000_0903
    call Call_004_650f
    ld b, $3c
    jr jr_004_648d

jr_004_64b6:
    call Call_004_64f6
    xor a
    ret


jr_004_64bb:
    call Call_004_64f6
    or $01
    ret


    ld hl, unkbank4Tiles9
    ld de, $9800
    call Call_000_0756
    ld a, $16
    call Call_000_0903
    ld a, $01
    ld d, $01
    call Call_000_2df8
    ld a, $93
    ldh [rLCDC], a

jr_004_64da:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_64da

jr_004_64e6:
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    ldh a, [$9c]
    and $09
    jr nz, jr_004_64f6

    jr jr_004_64e6

Call_004_64f6:
jr_004_64f6:
    ld a, $10
    call Call_000_0a84
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_6502:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_6502

    ret


Call_004_650f:
    push af
    push bc
    push de
    push hl
    ld hl, unkbank4TilePointers2
    ld a, c
    inc a
    rlca
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ld de, $0909
    call Call_000_078e
    pop hl
    pop de
    pop bc
    pop af
    ret


unkbank4Tiles13::
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

unkbank4Tiles14::
    db 2, 3
    db $bc, $bd
    db $dc, $dd
    db $fc, $fd

unkbank4Tiles15::
    db 2, 3
    db $ba, $bb
    db $da, $db
    db $fa, $fb

unkbank4Tiles16::
    db 2, 3
    db $b8, $b9
    db $d8, $d9
    db $f8, $f9

unkbank4Tiles17::
    db 2, 3, 
    db $b6, $b7
    db $d6, $d7
    db $f6, $f7

unkbank4Tiles18::
    db 2, 3
    db $f2, $f3
    db $d4, $d5
    db $f4, $f5

unkbank4Tiles19::
    db 2, 3
    db $d0, $d1
    db $f0, $f1
    db $d2, $d3

unkbank4Tiles1A::
    db 2, 3
    db $0d, $0e
    db $ce, $cf
    db $1e, $ef

unkbank4Tiles1B::
    db 2, 3
    db $0b, $0c
    db $cc, $cd
    db $ae, $af

unkbank4Tiles1C::
    db 2, 3
    db $ff, $0a
    db $ff, $cb
    db $ff, $1b

unkbank4Tiles1D::
    db 2, 3
    db $66, $67
    db $86, $87
    db $a6, $a7

unkbank4Tiles1E::
    db 16, 3
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

unkbank4TilePointers2::
    dw unkbank4Tiles13
    dw unkbank4Tiles14
    dw unkbank4Tiles15
    dw unkbank4Tiles16
    dw unkbank4Tiles17
    dw unkbank4Tiles18
    dw unkbank4Tiles19
    dw unkbank4Tiles1A
    dw unkbank4Tiles1B
    dw unkbank4Tiles1C
    dw unkbank4Tiles1D
    dw unkbank4Tiles1E

    ld hl, $68b8
    ld de, $9c00
    call Call_000_0776
    ld a, [currentStage]
    cp $00
    jr z, jr_004_676b

    ld c, a

jr_004_6743:
    push bc
    ld a, c
    rlca
    rlca
    ld h, $00
    ld l, a
    ld de, $6c32
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    push hl
    ld a, c
    dec a
    rlca
    ld c, a
    ld b, $00
    ld hl, $68a0
    add hl, bc
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a
    pop hl
    call Call_000_0822
    pop bc
    dec c
    jr nz, jr_004_6743

jr_004_676b:
    ld a, [currentStage]
    rlca
    rlca
    ld h, $00
    ld l, a
    ld de, $6c38
    add hl, de
    ld a, [hl+]
    ld e, a
    ld [$c9ae], a
    ld a, [hl]
    ld d, a
    ld [$c9af], a
    ld a, [de]
    ld c, a
    inc de
    ld [$c9b2], a
    ld a, [de]
    ld [$c9b3], a
    ld l, c
    ld h, $00
    call Call_000_04a5
    ld c, l
    ld hl, $c9b4

jr_004_6795:
    ld a, $fe
    ld [hl+], a
    dec c
    jr nz, jr_004_6795

    ld a, [currentStage]
    rlca
    ld c, a
    ld b, $00
    ld hl, $68a0
    add hl, bc
    ld a, [hl+]
    ld [$c9b0], a
    ld a, [hl]
    ld [$c9b1], a
    ld a, $01
    ld d, $01
    call Call_000_2df8
    ld a, $99
    ldh [rLCDC], a

jr_004_67b9:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_67b9

    ld a, [sceneState]
    cp $02
    jr z, jr_004_67d1

    ld a, $1e
    call Call_000_0903

jr_004_67d1:
    ld hl, $68b0
    ld a, [currentStage]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld b, a
    ld a, $60
    ld c, a

jr_004_67e0:
    push bc
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    pop bc
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_6824

    bit 3, a
    jr nz, jr_004_6824

    ld a, [$c803]
    inc a
    ld [$c803], a
    dec c
    jr nz, jr_004_67e0

    ld c, b
    ld a, $60
    cp c
    jr z, jr_004_6824

jr_004_6804:
    push bc
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    pop bc
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_6824

    bit 3, a
    jr nz, jr_004_6824

    ld a, [$c803]
    dec a
    ld [$c803], a
    cp b
    jr nz, jr_004_6804

    jr jr_004_6828

jr_004_6824:
    ld a, b
    ld [$c803], a

jr_004_6828:
    ld c, $00
    call Call_004_6873
    ld b, $0f

jr_004_682f:
    push bc
    ld a, $01
    ld hl, $6cac
    call Call_000_08ae
    pop bc
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_004_6853

    bit 3, a
    jr nz, jr_004_6853

    dec b
    jr nz, jr_004_682f

    inc c
    ld a, $14
    cp c
    jr z, jr_004_6853

    call Call_004_6873
    ld b, $0f
    jr jr_004_682f

jr_004_6853:
    ld a, [sceneState]
    cp $02
    jr z, jr_004_685f

    ld a, $10
    call Call_000_0a84

jr_004_685f:
    ld a, $00
    ld d, $01
    call Call_000_2df8

jr_004_6866:
    ld a, $01
    ld hl, $6ca6
    call Call_000_08ae
    ld a, c
    or a
    jr z, jr_004_6866

    ret


Call_004_6873:
    push af
    push bc
    push de
    push hl
    bit 0, c
    jr z, jr_004_6888

    ld hl, $c9b2
    ld a, [$c9b0]
    ld d, a
    ld a, [$c9b1]
    ld e, a
    jr jr_004_6898

jr_004_6888:
    ld a, [$c9ae]
    ld l, a
    ld a, [$c9af]
    ld h, a
    ld a, [$c9b0]
    ld d, a
    ld a, [$c9b1]
    ld e, a

jr_004_6898:
    call Call_000_07f0
    pop hl
    pop de
    pop bc
    pop af
    ret

;????
    db $03, $07, $08, $07, $08, $0b, $0f, $0a, $0e, $07, $13, $07, $17, $06, $19, $03
    db $00, $00, $00, $38, $30, $58, $60, $60

unkbank4Tiles1F::
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

unkbank4Tiles20::
    db 5, 4
    db $fd, $fd, $fd, $fe, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe

unkbank4Tiles21::
    db 5, 4
    db $fd, $fd, $fd, $fe, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe

unkbank4Tiles22::
    db 5, 4
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe
    db $fe, $fe, $fd, $fe, $fe

unkbank4Tiles23::
    db 5, 4
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe
    db $fe, $fe, $fe, $fe, $fe

unkbank4Tiles24::
    db 7, 2
    db $fd, $fd, $fd, $fd, $fd, $fd, $fe
    db $fe, $fd, $fd, $fd, $fd, $fd, $fd

unkbank4Tiles25::
    db 7, 2
    db $fd, $fd, $fd, $fd, $fd, $fd, $fe
    db $fe, $fd, $fd, $fd, $fd, $fd, $fe

unkbank4Tiles26::
    db 5, 4
    db $fe, $fd, $fe, $fe, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd

unkbank4Tiles27::
    db 5, 4
    db $fe, $fe, $fe, $fe, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd

unkbank4Tiles28::
    db 5, 3
    db $fe, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fe

unkbank4Tiles29::
    db 5, 3
    db $fe, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd, $fe

unkbank4Tiles2A::
    db 4, 3
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fd

unkbank4Tiles2B::
    db 4, 3
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fe
    db $fd, $fd, $fd, $fe

unkbank4Tiles2C::
    db 5, 7
    db $fe, $fe, $fe, $fd, $fe
    db $fe, $fe, $fe, $fd, $fe
    db $fe, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fe, $fe

unkbank4Tiles2D::
    db 5, 7
    db $fe, $fe, $fe, $fe, $fe
    db $fe, $fe, $fe, $fe, $fe
    db $fe, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fe, $fe

unkbank4Tiles2E::
    db 3, 3
    db $fe, $fd, $fd
    db $fd, $fd, $fd
    db $fd, $fd, $fd
    
unkbank4Tiles2F::
    db 1, 1
    db $fe

unkbank4TilePointers3::
    dw unkbank4Tiles1F
    dw unkbank4Tiles20
    dw unkbank4Tiles21
    dw unkbank4Tiles22
    dw unkbank4Tiles23
    dw unkbank4Tiles24
    dw unkbank4Tiles25
    dw unkbank4Tiles26
    dw unkbank4Tiles27
    dw unkbank4Tiles28
    dw unkbank4Tiles29
    dw unkbank4Tiles2A
    dw unkbank4Tiles2B
    dw unkbank4Tiles2C
    dw unkbank4Tiles2D
    dw unkbank4Tiles2E
    dw unkbank4Tiles2E
