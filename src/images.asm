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
    db $14, $12
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $60, $61, $62, $63, $64, $65, $66
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $80, $81, $82, $83, $84, $85, $86
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $a0, $a1, $a2, $a3, $a4, $a5, $a6
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $c0, $c1, $c2, $c3, $c4, $c5, $c6
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $0b, $0c, $00, $04, $02, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $13, $13, $13, $13, $13, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $07, $06, $03, $02, $ff, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $13, $13, $13, $13, $13, $ff
    db $ff, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $18, $19, $18, $19, $18, $19, $18, $19, $18, $19, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $38, $39, $38, $39, $38, $39, $38, $39, $38, $39, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $00, $11, $ff, $0e, $08, $0a, $07, $01, $10, $00, $09, $ff
    db $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $0b, $0c, $00, $0a, $0c, $11, $ff, $02, $0f, $06, $0c, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

    db $03, $02
    db $20, $21, $22, $40, $41, $42

    db $03, $02
    db $23, $24, $25, $43, $44, $45

    db $03, $02
    db $26, $27, $28, $46, $47, $48

    db $03, $02
    db $29, $2a, $2b, $49, $4a, $4b

    db $03, $02
    db $2c, $2d, $2e, $4c, $4d, $4e

    db $03, $02
    db $2f, $30, $31, $4f, $50, $51

    db $03, $02
    db $32, $33, $34, $52, $53, $54

    db $03, $02
    db $35, $36, $37, $55, $56, $57

    db $01, $01
    db $14

    db $02, $02
    db $1a, $1b, $3a, $3b

    db $02, $02
    db $16, $16, $16, $16

    db $02, $02
    db $15, $15, $15, $15

    db $03, $02
    db $67, $68, $69, $87, $88, $89

    db $03, $02
    db $6a, $6b, $6c, $8a, $8b, $8c

    db $0b, $0b
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $70, $71, $72, $73, $74, $75, $76, $77, $78, $17
    db $17, $90, $91, $92, $93, $94, $95, $96, $97, $98, $17
    db $17, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17

    db $0b, $0b
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $6d, $6e, $6f, $17, $17, $17, $17
    db $17, $17, $17, $17, $8d, $8e, $8f, $17, $17, $17, $17
    db $17, $17, $17, $17, $ad, $ae, $af, $17, $17, $17, $17
    db $17, $17, $17, $17, $cd, $ce, $cf, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17
    db $17, $17, $17, $17, $17, $17, $17, $17, $17, $17, $17

levelMapConstTilesPointers::
    dw $6000
    dw $616a
    dw $6172
    dw $617a
    dw $6182
    dw $618a
    dw $6192
    dw $619a
    dw $61a2
    dw $61aa
    dw $61ad
    dw $61b3
    dw $61b9
    dw $61bf
    dw $61c7
    dw $61cf
    dw $624a

unusedTiles::
    db $14, $12
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $ff, $ff, $ff, $ff, $ff, $ff, $b3, $b4, $ac, $ad, $ae, $af, $ff, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $ff, $ff, $ff, $ff, $ff, $ff, $d3, $d4, $cc, $cd, $ce, $cf, $ff, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $ff, $ff, $a8, $a9, $aa, $ab, $f3, $f4, $e4, $14, $14, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $c8, $c9, $ca, $cb, $b5, $b6, $e8, $14, $14, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $e0, $b0, $b1, $b2, $d5, $d6, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $d6, $d0, $d1, $d2, $ff, $98, $99, $a0, $a1, $a2, $a3, $9a, $9b, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $a4, $a5, $a6, $a7, $b8, $b9, $c0, $c1, $c2, $c3, $ba, $bb, $74, $75, $76, $77, $ff
    db $ff, $ff, $ff, $c4, $c5, $c6, $c7, $d8, $d9, $e4, $14, $14, $e7, $da, $db, $94, $95, $96, $97, $ff
    db $ff, $ff, $ff, $e0, $14, $14, $e3, $f8, $f9, $e8, $14, $14, $eb, $fa, $fb, $9c, $9d, $14, $ef, $ff
    db $ff, $ff, $ff, $ff, $ff, $98, $99, $6c, $6d, $6e, $6f, $9a, $9b, $ff, $ff, $bc, $bd, $ff, $ff, $ff
    db $ff, $68, $69, $6a, $6b, $b8, $b9, $8c, $8d, $8e, $8f, $ba, $bb, $70, $71, $72, $73, $ff, $ff, $ff
    db $ff, $88, $89, $8a, $8b, $d8, $d9, $e4, $14, $14, $e7, $da, $db, $90, $91, $92, $93, $ff, $ff, $ff
    db $ff, $e0, $14, $14, $e3, $f8, $f9, $e8, $14, $14, $eb, $fa, $fb, $ec, $14, $14, $ef, $ff, $ff, $ff
    db $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $00, $11, $ff, $0b, $0c, $00, $04, $02, $10, $00, $09, $7f
    db $ff, $ff, $ff, $09, $0d, $0b, $05, $12, $0b, $0c, $00, $0a, $0c, $11, $ff, $02, $0f, $06, $0c, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

    db $04, $02
    db $20, $21, $22, $23, $40, $41, $42, $43
    
    db $04, $02
    db $24, $25, $26, $27, $44, $45, $46, $47

    db $04, $02
    db $28, $29, $2a, $2b, $48, $49, $4a, $4b

    db $04, $02
    db $2c, $2d, $2e, $2f, $4c, $4d, $4e, $4f

    db $04, $02
    db $30, $31, $32, $33, $50, $51, $52, $53

    db $04, $02
    db $34, $35, $36, $37, $54, $55, $56, $57

    db $04, $02
    db $60, $61, $62, $63, $80, $81, $82, $83

    db $04, $02
    db $64, $65, $66, $67, $84, $85, $86, $87
    
    db $04, $02
    db $68, $69, $6a, $6b, $88, $89, $8a, $8b

    db $04, $02
    db $6c, $6d, $6e, $6f, $8c, $8d, $8e, $8f

    db $04, $02
    db $70, $71, $72, $73, $90, $91, $92, $93

    db $04, $02
    db $74, $75, $76, $77, $94, $95, $96, $97
    
    db $04, $02
    db $a0, $a1, $a2, $a3, $c0, $c1, $c2, $c3

    db $04, $02
    db $a4, $a5, $a6, $a7, $c4, $c5, $c6, $c7
    
    db $04, $02
    db $a8, $a9, $aa, $ab, $c8, $c9, $ca, $cb

    db $04, $02
    db $ac, $ad, $ae, $af, $cc, $cd, $ce, $cf

unusedTilesPointers::
    dw $62e7
    dw $6451
    dw $645b
    dw $6465
    dw $646f
    dw $6479
    dw $6483
    dw $648d
    dw $6497
    dw $64a1
    dw $64ab
    dw $64b5
    dw $64bf
    dw $64c9
    dw $64d3
    dw $64dd
    dw $64e7

bank17pad:: ds 6893 ; 0x1AED

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]
empty5:: ds 16384 ; 0x4000

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]
bank_img_intro1:: INCBIN "gfx/bank_img_intro1.2bpp"
bank_img_intro2:: INCBIN "gfx/bank_img_intro2.2bpp"
bank_img_ending:: INCBIN "gfx/bank_img_ending.2bpp"
bank_img_jss:: INCBIN "gfx/bank_img_jss.2bpp"
