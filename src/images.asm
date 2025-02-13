SECTION "Images 1", ROMX[$4000], BANK[$12]
bank_img_stage1: INCBIN "disassembly/gfx/bank_img_stage1.2bpp"
bank_img_stage2: INCBIN "disassembly/gfx/bank_img_stage2.2bpp"
bank_img_stage3: INCBIN "disassembly/gfx/bank_img_stage3.2bpp"
bank_img_stage4: INCBIN "disassembly/gfx/bank_img_stage4.2bpp"
SECTION "Images 2", ROMX[$4000], BANK[$13]
bank_img_stage5: INCBIN "disassembly/gfx/bank_img_stage5.2bpp"
bank_img_stage6: INCBIN "disassembly/gfx/bank_img_stage6.2bpp"
bank_img_stage7: INCBIN "disassembly/gfx/bank_img_stage7.2bpp"
bank_img_stage8: INCBIN "disassembly/gfx/bank_img_stage8.2bpp"
SECTION "Images 3", ROMX[$4000], BANK[$14]
bank_img_stage1_boss: INCBIN "disassembly/gfx/bank_img_stage1_boss.2bpp"
bank_img_stage2_boss: INCBIN "disassembly/gfx/bank_img_stage2_boss.2bpp"
bank_img_stage3_boss: INCBIN "disassembly/gfx/bank_img_stage3_boss.2bpp"
bank_img_stage4_boss: INCBIN "disassembly/gfx/bank_img_stage4_boss.2bpp"
SECTION "Images 4", ROMX[$4000], BANK[$15]
bank_img_stage5_boss: INCBIN "disassembly/gfx/bank_img_stage5_boss.2bpp"
bank_img_stage6_boss: INCBIN "disassembly/gfx/bank_img_stage6_boss.2bpp"
bank_img_stage7_boss: INCBIN "disassembly/gfx/bank_img_stage7_boss.2bpp"
bank_img_stage8_boss: INCBIN "disassembly/gfx/bank_img_stage8_boss.2bpp"
SECTION "Images 5", ROMX[$4000], BANK[$16]
bank_img_title: INCBIN "disassembly/gfx/bank_img_title.2bpp"
bank_img_password: INCBIN "disassembly/gfx/bank_img_password.2bpp"
bank_img_stageTransition: INCBIN "disassembly/gfx/bank_img_stageTransition.2bpp"
bank_img_font: INCBIN "disassembly/gfx/bank_img_font.2bpp"
SECTION "Images 6", ROMX[$4000], BANK[$17]
bank_img_levelMap: INCBIN "disassembly/gfx/bank_img_levelMap.2bpp"
bank_img_unusedLevelMap: INCBIN "disassembly/gfx/bank_img_unusedLevelMap.2bpp"

levelmap_bgTiles:
    db 20, 18
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

levelmap_1Tiles:
    db 3, 2
    db $20, $21, $22
    db $40, $41, $42

levelmap_2Tiles:
    db 3, 2
    db $23, $24, $25
    db $43, $44, $45

levelmap_3Tiles:
    db 3, 2
    db $26, $27, $28
    db $46, $47, $48

levelmap_4Tiles:
    db 3, 2
    db $29, $2a, $2b
    db $49, $4a, $4b

levelmap_5Tiles:
    db 3, 2
    db $2c, $2d, $2e
    db $4c, $4d, $4e

levelmap_6Tiles:
    db 3, 2
    db $2f, $30, $31
    db $4f, $50, $51

levelmap_7Tiles:
    db 3, 2
    db $32, $33, $34
    db $52, $53, $54

levelmap_8Tiles:
    db 3, 2
    db $35, $36, $37
    db $55, $56, $57

levelmap_unusedChalvoTiles:
    db 1, 1
    db $14

levelmap_diamondTiles:
    db 2, 2
    db $1a, $1b
    db $3a, $3b

levelmap_ditherSquareTiles:
    db 2, 2
    db $16, $16
    db $16, $16

levelmap_whiteSquareTiles:
    db 2, 2
    db $15, $15
    db $15, $15

levelmap_9Tiles:
    db 3, 2
    db $67, $68, $69
    db $87, $88, $89

levelmap_0Tiles:
    db 3, 2
    db $6a, $6b, $6c
    db $8a, $8b, $8c

levelmap_bossWarningTiles:
    db 11, 11
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

levelmap_questionMarkTiles:
    db 11, 11
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

levelMapTilesPointers:
    dw levelmap_bgTiles
    dw levelmap_1Tiles
    dw levelmap_2Tiles
    dw levelmap_3Tiles
    dw levelmap_4Tiles
    dw levelmap_5Tiles
    dw levelmap_6Tiles
    dw levelmap_7Tiles
    dw levelmap_8Tiles
    dw levelmap_unusedChalvoTiles
    dw levelmap_diamondTiles
    dw levelmap_ditherSquareTiles
    dw levelmap_whiteSquareTiles
    dw levelmap_9Tiles
    dw levelmap_0Tiles
    dw levelmap_bossWarningTiles
    dw levelmap_questionMarkTiles

unusedLevelMap_bgTiles:
    db 20, 18
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

unusedLevelMap_1Tiles:
    db 4, 2
    db $20, $21, $22, $23
    db $40, $41, $42, $43

unusedLevelMap_2Tiles:
    db 4, 2
    db $24, $25, $26, $27
    db $44, $45, $46, $47

unusedLevelMap_3Tiles:
    db 4, 2
    db $28, $29, $2a, $2b
    db $48, $49, $4a, $4b

unusedLevelMap_4Tiles:
    db 4, 2
    db $2c, $2d, $2e, $2f
    db $4c, $4d, $4e, $4f

unusedLevelMap_5Tiles:
    db 4, 2
    db $30, $31, $32, $33
    db $50, $51, $52, $53

unusedLevelMap_6Tiles:
    db 4, 2
    db $34, $35, $36, $37
    db $54, $55, $56, $57

unusedLevelMap_7Tiles:
    db 4, 2
    db $60, $61, $62, $63
    db $80, $81, $82, $83

unusedLevelMap_8Tiles:
    db 4, 2
    db $64, $65, $66, $67
    db $84, $85, $86, $87

unusedLevelMap_1darkTiles:
    db 4, 2
    db $68, $69, $6a, $6b
    db $88, $89, $8a, $8b

unusedLevelMap_2darkTiles:
    db 4, 2
    db $6c, $6d, $6e, $6f
    db $8c, $8d, $8e, $8f

unusedLevelMap_3darkTiles:
    db 4, 2
    db $70, $71, $72, $73
    db $90, $91, $92, $93

unusedLevelMap_4darkTiles:
    db 4, 2
    db $74, $75, $76, $77
    db $94, $95, $96, $97

unusedLevelMap_5darkTiles:
    db 4, 2
    db $a0, $a1, $a2, $a3
    db $c0, $c1, $c2, $c3

unusedLevelMap_6darkTiles:
    db 4, 2
    db $a4, $a5, $a6, $a7
    db $c4, $c5, $c6, $c7

unusedLevelMap_7darkTiles:
    db 4, 2
    db $a8, $a9, $aa, $ab
    db $c8, $c9, $ca, $cb

unusedLevelMap_8darkTiles:
    db 4, 2
    db $ac, $ad, $ae, $af
    db $cc, $cd, $ce, $cf

unusedLevelMapPointers:
    dw unusedLevelMap_bgTiles
    dw unusedLevelMap_1Tiles
    dw unusedLevelMap_2Tiles
    dw unusedLevelMap_3Tiles
    dw unusedLevelMap_4Tiles
    dw unusedLevelMap_5Tiles
    dw unusedLevelMap_6Tiles
    dw unusedLevelMap_7Tiles
    dw unusedLevelMap_8Tiles
    dw unusedLevelMap_1darkTiles
    dw unusedLevelMap_2darkTiles
    dw unusedLevelMap_3darkTiles
    dw unusedLevelMap_4darkTiles
    dw unusedLevelMap_5darkTiles
    dw unusedLevelMap_6darkTiles
    dw unusedLevelMap_7darkTiles
    dw unusedLevelMap_8darkTiles


SECTION "Empty 5", ROMX[$4000], BANK[$18]
SECTION "Images 7", ROMX[$4000], BANK[$19]
bank_img_intro1: INCBIN "disassembly/gfx/bank_img_intro1.2bpp"
bank_img_intro2: INCBIN "disassembly/gfx/bank_img_intro2.2bpp"
bank_img_ending: INCBIN "disassembly/gfx/bank_img_ending.2bpp"
bank_img_jss: INCBIN "disassembly/gfx/bank_img_jss.2bpp"
