SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]
bank_img_stage1:: INCBIN "gfx/bank_img_stage1.2bpp"
bank_img_stage2:: INCBIN "gfx/bank_img_stage2.2bpp"
bank_img_stage3:: INCBIN "gfx/bank_img_stage3.2bpp"
bank_img_stage4:: INCBIN "gfx/bank_img_stage4.2bpp"

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]
bank_img_stage5:: INCBIN "gfx/bank_img_stage5.2bpp"
bank_img_stage6:: INCBIN "gfx/bank_img_stage6.2bpp"
bank_img_stage7:: INCBIN "gfx/bank_img_stage7.2bpp"
bank_img_stage8:: INCBIN "gfx/bank_img_stage8.2bpp"

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]
bank_img_stage1_boss::INCBIN "gfx/bank_img_stage1_boss.2bpp"
bank_img_stage2_boss::INCBIN "gfx/bank_img_stage2_boss.2bpp"
bank_img_stage3_boss::INCBIN "gfx/bank_img_stage3_boss.2bpp"
bank_img_stage4_boss::INCBIN "gfx/bank_img_stage4_boss.2bpp"

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]
bank_img_stage5_boss::INCBIN "gfx/bank_img_stage5_boss.2bpp"
bank_img_stage6_boss::INCBIN "gfx/bank_img_stage6_boss.2bpp"
bank_img_stage7_boss::INCBIN "gfx/bank_img_stage7_boss.2bpp"
bank_img_stage8_boss::INCBIN "gfx/bank_img_stage8_boss.2bpp"

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]
bank_img_title::INCBIN "gfx/bank_img_title.2bpp"
bank_img_password::INCBIN "gfx/bank_img_password.2bpp"
bank_img_stageTransition::INCBIN "gfx/bank_img_stageTransition.2bpp"
bank_img_font::INCBIN "gfx/bank_img_font.2bpp"


SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

bank_img_levelMap::INCBIN "gfx/bank_img_levelMap.2bpp"

bank_img_unkMap::INCBIN "gfx/bank_img_unkMap.2bpp"

levelMapConstTiles::
    db $14, $12, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $60
    db $61, $62, $63, $64, $65, $66, $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $ff, $80, $81, $82, $83, $84, $85, $86, $ff, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $ff, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $ff, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $c0, $c1, $c2, $c3, $c4
    db $c5, $c6, $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff
    db $0b, $0c, $00, $04, $02, $ff, $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $ff, $ff, $13, $13, $13, $13, $13, $ff, $ff, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $ff, $ff, $07, $06, $03, $02, $ff, $ff, $ff, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $ff, $ff, $13, $13, $13, $13, $13, $ff, $ff, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $18, $19, $18, $19, $18, $19, $18, $19, $18, $19, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $38, $39, $38, $39, $38, $39, $38, $39, $38
    db $39, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $09, $0d, $0b, $05, $12, $00, $11, $ff, $0e, $08, $0a, $07, $01, $10, $00
    db $09, $ff, $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $0b, $0c, $00, $0a, $0c, $11
    db $ff, $02, $0f, $06, $0c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

stageNumberTiles::
    db $03, $02, $20, $21, $22, $40, $41, $42

unkTiles0::
    db $03, $02, $23, $24, $25, $43, $44, $45

unkTiles1::
    db $03, $02, $26, $27, $28, $46, $47, $48

unkTiles2::
    db $03, $02, $29, $2a, $2b, $49, $4a, $4b

unkTiles3::
    db $03, $02, $2c, $2d, $2e, $4c, $4d, $4e

unkTiles4::
    db $03, $02, $2f, $30, $31, $4f, $50, $51

unkTiles5::
    db $03, $02, $32, $33, $34, $52, $53, $54

unkTiles6::
    db $03, $02, $35, $36, $37, $55, $56, $57

unkTiles7::
    db $01, $01, $14

unkTiles8::
    db $02, $02, $1a, $1b, $3a, $3b

unkTiles9::
    db $02, $02, $16, $16, $16, $16

unkTilesA::
    db $02, $02, $15, $15, $15, $15

unkTilesB::
    db $03, $02, $67, $68, $69, $87, $88, $89

unkTilesC::
    db $03, $02, $6a, $6b, $6c, $8a, $8b, $8c

unkTilesD_unused::
    db $0b, $0b, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $e0, $e1, $e2, $e3, $e4, $e5
    db $e6, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $70
    db $71, $72, $73, $74, $75, $76, $77, $78, $17, $17, $90, $91, $92, $93, $94, $95
    db $96, $97, $98, $17, $17, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17

unkTilesE_unused::
    db $0b, $0b, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $6d, $6e, $6f, $17, $17, $17, $17, $17, $17
    db $17, $17, $8d, $8e, $8f, $17, $17, $17, $17, $17, $17, $17, $17, $ad, $ae, $af
    db $17, $17, $17, $17, $17, $17, $17, $17, $cd, $ce, $cf, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17

unkTilesF_unused::
    db $00, $60, $6a, $61, $72, $61, $7a, $61, $82, $61, $8a, $61, $92, $61, $9a, $61
    db $a2, $61, $aa, $61, $ad, $61, $b3, $61, $b9, $61, $bf, $61, $c7, $61, $cf, $61
    db $4a, $62, $14, $12, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $19, $1a, $1b, $1c, $1d, $1e, $1f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $39, $3a, $3b, $3c, $3d, $3e, $3f, $ff, $ff, $ff, $ff
    db $ff, $ff, $b3, $b4, $ac, $ad, $ae, $af, $ff, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $ff, $ff, $ff, $ff, $ff, $ff, $d3, $d4, $cc, $cd, $ce, $cf, $ff, $79, $7a, $7b
    db $7c, $7d, $7e, $7f, $ff, $ff, $a8, $a9, $aa, $ab, $f3, $f4, $e4, $14, $14, $9f
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c8, $c9, $ca, $cb, $b5, $b6
    db $e8, $14, $14, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e0, $b0
    db $b1, $b2, $d5, $d6, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $d6, $d0, $d1, $d2, $ff, $98, $99, $a0, $a1, $a2, $a3, $9a, $9b, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $a4, $a5, $a6, $a7, $b8, $b9, $c0, $c1, $c2
    db $c3, $ba, $bb, $74, $75, $76, $77, $ff, $ff, $ff, $ff, $c4, $c5, $c6, $c7, $d8
    db $d9, $e4, $14, $14, $e7, $da, $db, $94, $95, $96, $97, $ff, $ff, $ff, $ff, $e0
    db $14, $14, $e3, $f8, $f9, $e8, $14, $14, $eb, $fa, $fb, $9c, $9d, $14, $ef, $ff
    db $ff, $ff, $ff, $ff, $ff, $98, $99, $6c, $6d, $6e, $6f, $9a, $9b, $ff, $ff, $bc
    db $bd, $ff, $ff, $ff, $ff, $68, $69, $6a, $6b, $b8, $b9, $8c, $8d, $8e, $8f, $ba
    db $bb, $70, $71, $72, $73, $ff, $ff, $ff, $ff, $88, $89, $8a, $8b, $d8, $d9, $e4
    db $14, $14, $e7, $da, $db, $90, $91, $92, $93, $ff, $ff, $ff, $ff, $e0, $14, $14
    db $e3, $f8, $f9, $e8, $14, $14, $eb, $fa, $fb, $ec, $14, $14, $ef, $ff, $ff, $ff
    db $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $00, $11, $ff, $0b, $0c, $00, $04, $02
    db $10, $00, $09, $7f, $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $0b, $0c, $00, $0a
    db $0c, $11, $ff, $02, $0f, $06, $0c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $04, $02, $20, $21
    db $22, $23, $40, $41, $42, $43, $04, $02, $24, $25, $26, $27, $44, $45, $46, $47
    db $04, $02, $28, $29, $2a, $2b, $48, $49, $4a, $4b, $04, $02, $2c, $2d, $2e, $2f
    db $4c, $4d, $4e, $4f, $04, $02, $30, $31, $32, $33, $50, $51, $52, $53, $04, $02
    db $34, $35, $36, $37, $54, $55, $56, $57, $04, $02, $60, $61, $62, $63, $80, $81
    db $82, $83, $04, $02, $64, $65, $66, $67, $84, $85, $86, $87, $04, $02, $68, $69
    db $6a, $6b, $88, $89, $8a, $8b, $04, $02, $6c, $6d, $6e, $6f, $8c, $8d, $8e, $8f
    db $04, $02, $70, $71, $72, $73, $90, $91, $92, $93, $04, $02, $74, $75, $76, $77
    db $94, $95, $96, $97, $04, $02, $a0, $a1, $a2, $a3, $c0, $c1, $c2, $c3, $04, $02
    db $a4, $a5, $a6, $a7, $c4, $c5, $c6, $c7, $04, $02, $a8, $a9, $aa, $ab, $c8, $c9
    db $ca, $cb, $04, $02, $ac, $ad, $ae, $af, $cc, $cd, $ce, $cf, $e7, $62, $51, $64
    db $5b, $64, $65, $64, $6f, $64, $79, $64, $83, $64, $8d, $64, $97, $64, $a1, $64
    db $ab, $64, $b5, $64, $bf, $64, $c9, $64, $d3, $64, $dd, $64, $e7, $64

bank17pad:: ds 6893 ; 0x1AED

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]
empty5:: ds 16384 ; 0x4000

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]
bank_img_intro1:: INCBIN "gfx/bank_img_intro1.2bpp"
bank_img_intro2:: INCBIN "gfx/bank_img_intro2.2bpp"
bank_img_ending:: INCBIN "gfx/bank_img_ending.2bpp"
bank_img_jss:: INCBIN "gfx/bank_img_jss.2bpp"
