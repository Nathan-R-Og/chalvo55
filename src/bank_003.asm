; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld a, $1c
    ld [$c82d], a
    ld bc, actors
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
    ld hl, actors+(1*ACTOR_sizeof)
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
    ld de, FrameDefs2
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
    ld de, FrameDefs2
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


FrameDefs2::
    dw FRAME_DEF_Chalvo_Walk1
    dw FRAME_DEF_Chalvo_Stand
    dw FRAME_DEF_Chalvo_Walk2
    dw FRAME_DEF_Chalvo_BallUp
    dw FRAME_DEF_Chalvo_BallDown
    dw FRAME_DEF_Chalvo_BallDie
    dw FRAME_DEF_Chalvo_Fall
    dw FRAME_DEF_Chalvo_Die
    dw FRAME_DEF_Chalvo_Jump
    dw FRAME_DEF_Chalvo_Push1
    dw FRAME_DEF_Stage_PushCart
    dw FRAME_DEF_Stage_SpringCart
    dw FRAME_DEF_Stage_MovingBlock
    dw FRAME_DEF_Chalvo_Push1_Copy
    dw FRAME_DEF_Chalvo_PushStand
    dw FRAME_DEF_Chalvo_Push2
    dw FRAME_DEF_Chalvo_DashDust
    dw FRAME_DEF_Stage_OneHitEnemy1
    dw FRAME_DEF_Stage_OneHitEnemy2
    dw FRAME_DEF_Stage_OneHitEnemyDie
    dw FRAME_DEF_Stage_TwoHitEnemy1
    dw FRAME_DEF_Stage_TwoHitEnemy2
    dw FRAME_DEF_Stage_TwoHitEnemyDie
    dw FRAME_DEF_Stage_NoHitEnemy1
    dw FRAME_DEF_Stage_NoHitEnemy2
    dw FRAME_DEF_Stage_NoHitEnemyDie
    dw FRAME_DEF_Chalvo_Ouch
    dw FRAME_DEF_Stage_SpringCart2
    dw FRAME_DEF_nothing
    dw FRAME_DEF_Chalvo_PushSweat1
    dw FRAME_DEF_Chalvo_PushSweat2
    dw FRAME_DEF_unkTilesBF
    dw FRAME_DEF_unkTilesBF
    dw FRAME_DEF_unkTilesBE
    dw FRAME_DEF_unkTilesBD
    dw FRAME_DEF_unkTilesBC
    dw FRAME_DEF_unkTilesBB
    dw FRAME_DEF_unkTilesC5
    dw FRAME_DEF_unkTilesC4
    dw FRAME_DEF_unkTilesC3
    dw FRAME_DEF_unkTilesC2
    dw FRAME_DEF_unkTilesC1
    dw FRAME_DEF_unkTilesC0
    dw FRAME_DEF_unkTilesA8
    dw FRAME_DEF_unkTilesA7
    dw FRAME_DEF_unkTilesA6
    dw FRAME_DEF_unkTilesA6_copy
    dw FRAME_DEF_unkTiles92
    dw FRAME_DEF_unkTiles93
    dw FRAME_DEF_unkTiles72
    dw FRAME_DEF_unkTiles73
    dw FRAME_DEF_unkTiles64
    dw FRAME_DEF_unkTiles63
    dw FRAME_DEF_unkTiles62
    dw FRAME_DEF_unkTiles62_copy
    dw FRAME_DEF_unkTiles4F
    dw FRAME_DEF_unkTiles4E
    dw FRAME_DEF_unkTiles5A
    dw FRAME_DEF_unkTiles59
    dw FRAME_DEF_unkTiles4D
    dw FRAME_DEF_unkTiles2F
    dw FRAME_DEF_unkTiles2E
    dw FRAME_DEF_unkTiles2D
    dw FRAME_DEF_unkTiles2C
    dw FRAME_DEF_unkTiles2B
    dw FRAME_DEF_unkTiles2A
    dw FRAME_DEF_unkTiles2A_copy
    dw FRAME_DEF_unkTiles123
    dw FRAME_DEF_unkTiles122
    dw FRAME_DEF_unkTiles10
    dw FRAME_DEF_unkTilesF
    dw FRAME_DEF_unkTilesE
    dw FRAME_DEF_unkTilesF_copy
    dw FRAME_DEF_unkTiles29
    dw FRAME_DEF_unkTilesC
    dw FRAME_DEF_unkTiles9
    dw FRAME_DEF_unkTiles8
    dw FRAME_DEF_unkTiles7
    dw FRAME_DEF_unkTiles6
    dw FRAME_DEF_unkTiles5
    dw FRAME_DEF_unkTiles4
    dw FRAME_DEF_unkTiles3
    dw FRAME_DEF_unkTiles2
    dw FRAME_DEF_unkTiles
    dw FRAME_DEF_unkTiles23
    dw FRAME_DEF_unkTiles24
    dw FRAME_DEF_unkTiles25
    dw FRAME_DEF_unkTiles26
    dw FRAME_DEF_unkTiles27
    dw FRAME_DEF_unkTiles28
    dw $4503
    dw $4507
    dw $4507
    dw $4507
    dw $4507
    dw $4507
    dw $4507
    dw $452c
    dw $4551
    dw $4576
    dw $459b
    dw $45c0
    dw $45e5
    dw $460a
    dw $462f
    dw $4654
    dw $4665
    dw $4676
    dw $4687
    dw $4698
    dw $46a9
    dw $46ce
    dw $46f3
    dw $4718
    dw $473d
    dw $4762
    dw $4787
    dw $47ac
    dw $47d1
    dw $47f6
    dw $4807
    dw $4818
    dw $4829
    dw $483a
    dw -1

MACRO frame_def
	db \1, \2
    dw \3
ENDM
;y offset, x offset, pointerToTiles
FRAME_DEF_Chalvo_Walk1:: frame_def -24, -12, Chalvo_Walk1Tiles
FRAME_DEF_Chalvo_Stand:: frame_def -24, -12, Chalvo_StandTiles
FRAME_DEF_Chalvo_Walk2:: frame_def -24, -12, Chalvo_Walk2Tiles
FRAME_DEF_Chalvo_BallUp:: frame_def -16,  -8, Chalvo_BallUpTiles
FRAME_DEF_Chalvo_BallDown:: frame_def -16,  -8, Chalvo_BallDownTiles
FRAME_DEF_Chalvo_BallDie:: frame_def -16,  -8, Chalvo_BallDieTiles
FRAME_DEF_Chalvo_Fall:: frame_def -24, -12, Chalvo_FallTiles
FRAME_DEF_Chalvo_Die:: frame_def -24, -12, Chalvo_DieTiles
FRAME_DEF_Chalvo_Jump:: frame_def -24, -12, Chalvo_JumpTiles
FRAME_DEF_Chalvo_Push1:: frame_def -24, -12, Chalvo_Push1Tiles
FRAME_DEF_Stage_PushCart:: frame_def -16,  -8, Stage_PushCartTiles
FRAME_DEF_Stage_SpringCart:: frame_def -16,  -8, Stage_SpringCartTiles
FRAME_DEF_Stage_MovingBlock:: frame_def -16,  -8, Stage_MovingBlockTiles
FRAME_DEF_Chalvo_Push1_Copy:: frame_def -24, -12, Chalvo_Push1Tiles
FRAME_DEF_Chalvo_PushStand:: frame_def -24, -12, Chalvo_PushStandTiles
FRAME_DEF_Chalvo_Push2:: frame_def -24, -12, Chalvo_Push2Tiles
FRAME_DEF_Chalvo_DashDust:: frame_def  -8,  -4, Chalvo_DashDustTiles
FRAME_DEF_Stage_OneHitEnemy1:: frame_def -16,  -8, Stage_OneHitEnemy1Tiles
FRAME_DEF_Stage_OneHitEnemy2:: frame_def -16,  -8, Stage_OneHitEnemy2Tiles
FRAME_DEF_Stage_OneHitEnemyDie:: frame_def -16,  -8, Stage_OneHitEnemyDieTiles
FRAME_DEF_Stage_TwoHitEnemy1:: frame_def -16,  -8, Stage_TwoHitEnemy1Tiles
FRAME_DEF_Stage_TwoHitEnemy2:: frame_def -16,  -8, Stage_TwoHitEnemy2Tiles
FRAME_DEF_Stage_TwoHitEnemyDie:: frame_def -16,  -8, Stage_TwoHitEnemyDieTiles
FRAME_DEF_Stage_NoHitEnemy1:: frame_def -16,  -8, Stage_NoHitEnemy1Tiles
FRAME_DEF_Stage_NoHitEnemy2:: frame_def -16,  -8, Stage_NoHitEnemy2Tiles
FRAME_DEF_Stage_NoHitEnemyDie:: frame_def -16,  -8, Stage_NoHitEnemyDieTiles
FRAME_DEF_Chalvo_Ouch:: frame_def -16,  -8, Chalvo_OuchTiles
FRAME_DEF_Stage_SpringCart2:: frame_def -16,  -8, unkTiles11B
FRAME_DEF_nothing:: frame_def -16,  -8, unkTiles10D
FRAME_DEF_Chalvo_PushSweat1:: frame_def  -8,  -4, Chalvo_PushSweat1Tiles
FRAME_DEF_Chalvo_PushSweat2:: frame_def  -8,  -4, Chalvo_PushSweat2Tiles
FRAME_DEF_unkTilesBF:: frame_def -24, -12, unkTilesBF
FRAME_DEF_unkTilesBE:: frame_def -24, -12, unkTilesBE
FRAME_DEF_unkTilesBD:: frame_def -24, -12, unkTilesBD
FRAME_DEF_unkTilesBC:: frame_def -24, -12, unkTilesBC
FRAME_DEF_unkTilesBB:: frame_def -24, -12, unkTilesBB
FRAME_DEF_unkTilesC5:: frame_def -32, -16, unkTilesC5
FRAME_DEF_unkTilesC4:: frame_def -32, -16, unkTilesC4
FRAME_DEF_unkTilesC3:: frame_def  -8,  -8, unkTilesC3
FRAME_DEF_unkTilesC2:: frame_def  -8,  -8, unkTilesC2
FRAME_DEF_unkTilesC1:: frame_def  -8,  -8, unkTilesC1
FRAME_DEF_unkTilesC0:: frame_def  -8,  -8, unkTilesC0
FRAME_DEF_unkTilesA8:: frame_def -32, -24, unkTilesA8
FRAME_DEF_unkTilesA7:: frame_def -32, -24, unkTilesA7
FRAME_DEF_unkTilesA6:: frame_def -32, -24, unkTilesA6
FRAME_DEF_unkTilesA6_copy:: frame_def -32, -24, unkTilesA6
FRAME_DEF_unkTiles92:: frame_def -16,  -8, unkTiles92
FRAME_DEF_unkTiles93:: frame_def -16,  -8, unkTiles93
FRAME_DEF_unkTiles72:: frame_def -16,  -8, unkTiles72
FRAME_DEF_unkTiles73:: frame_def -16,  -8, unkTiles73
FRAME_DEF_unkTiles64:: frame_def -16, -12, unkTiles64
FRAME_DEF_unkTiles63:: frame_def -16, -12, unkTiles63
FRAME_DEF_unkTiles62:: frame_def -16, -12, unkTiles62
FRAME_DEF_unkTiles62_copy:: frame_def -16, -12, unkTiles62
FRAME_DEF_unkTiles4F:: frame_def -32, -16, unkTiles4F
FRAME_DEF_unkTiles4E:: frame_def -32, -16, unkTiles4E
FRAME_DEF_unkTiles5A:: frame_def -32, -16, unkTiles5A
FRAME_DEF_unkTiles59:: frame_def -32, -16, unkTiles59
FRAME_DEF_unkTiles4D:: frame_def -32, -16, unkTiles4D
FRAME_DEF_unkTiles2F:: frame_def -32, -24, unkTiles2F
FRAME_DEF_unkTiles2E:: frame_def -32, -24, unkTiles2E
FRAME_DEF_unkTiles2D:: frame_def -32, -24, unkTiles2D
FRAME_DEF_unkTiles2C:: frame_def -32, -24, unkTiles2C
FRAME_DEF_unkTiles2B:: frame_def -32, -24, unkTiles2B
FRAME_DEF_unkTiles2A:: frame_def -32, -24, unkTiles2A
FRAME_DEF_unkTiles2A_copy:: frame_def -32, -24, unkTiles2A
FRAME_DEF_unkTiles123:: frame_def -16,  -8, unkTiles123
FRAME_DEF_unkTiles122:: frame_def -16,  -8, unkTiles122
FRAME_DEF_unkTiles10:: frame_def -32, -24, unkTiles10
FRAME_DEF_unkTilesF:: frame_def -32, -24, unkTilesF
FRAME_DEF_unkTilesE:: frame_def -32, -24, unkTilesE
FRAME_DEF_unkTilesF_copy:: frame_def -32, -24, unkTilesF
FRAME_DEF_unkTiles29:: frame_def -24,  -8, unkTiles29
FRAME_DEF_unkTilesC:: frame_def   0,   0, unkTilesC
FRAME_DEF_unkTiles9:: frame_def -24, -12, unkTiles9
FRAME_DEF_unkTiles8:: frame_def -24, -12, unkTiles8
FRAME_DEF_unkTiles7:: frame_def -24, -12, unkTiles7
FRAME_DEF_unkTiles6:: frame_def -24, -12, unkTiles6
FRAME_DEF_unkTiles5:: frame_def -24, -12, unkTiles5
FRAME_DEF_unkTiles4:: frame_def -24, -12, unkTiles4
FRAME_DEF_unkTiles3:: frame_def -24, -12, unkTiles3
FRAME_DEF_unkTiles2:: frame_def -24, -12, unkTiles2
FRAME_DEF_unkTiles:: frame_def -24, -12, unkTiles
FRAME_DEF_unkTiles23:: frame_def -56, -16, unkTiles23
FRAME_DEF_unkTiles24:: frame_def -56, -16, unkTiles24
FRAME_DEF_unkTiles25:: frame_def -56, -16, unkTiles25
FRAME_DEF_unkTiles26:: frame_def -56, -16, unkTiles26
FRAME_DEF_unkTiles27:: frame_def -56, -16, unkTiles27
FRAME_DEF_unkTiles28:: frame_def -56, -16, unkTiles28
    
    db $00, $00, $f3, $4a, $09, $e8, $f4, $12, $00, $e8, $fc, $13
    db $00, $e8, $04, $14, $00, $f0, $f4, $32, $00, $f0, $fc, $33, $00, $f0, $04, $34
    db $00, $f8, $f4, $52, $00, $f8, $fc, $53, $00, $f8, $04, $54, $00, $09, $e9, $f5
    db $12, $00, $e9, $fc, $13, $00, $e9, $03, $14, $00, $f0, $f5, $32, $00, $f0, $fc
    db $33, $00, $f0, $03, $34, $00, $f7, $f5, $52, $00, $f7, $fc, $53, $00, $f7, $03
    db $54, $00, $09, $ea, $f6, $12, $00, $ea, $fc, $13, $00, $ea, $02, $14, $00, $f0
    db $f6, $32, $00, $f0, $fc, $33, $00, $f0, $02, $34, $00, $f6, $f6, $52, $00, $f6
    db $fc, $53, $00, $f6, $02, $54, $00, $09, $eb, $f7, $12, $00, $eb, $fc, $13, $00
    db $eb, $01, $14, $00, $f0, $f7, $32, $00, $f0, $fc, $33, $00, $f0, $01, $34, $00
    db $f5, $f7, $52, $00, $f5, $fc, $53, $00, $f5, $01, $54, $00, $09, $ec, $f8, $12
    db $00, $ec, $fc, $13, $00, $ec, $00, $14, $00, $f0, $f8, $32, $00, $f0, $fc, $33
    db $00, $f0, $00, $34, $00, $f4, $f8, $52, $00, $f4, $fc, $53, $00, $f4, $00, $54
    db $00, $09, $ed, $f9, $12, $00, $ed, $fc, $13, $00, $ed, $ff, $14, $00, $f0, $f9
    db $32, $00, $f0, $fc, $33, $00, $f0, $ff, $34, $00, $f3, $f9, $52, $00, $f3, $fc
    db $53, $00, $f3, $ff, $54, $00, $09, $ee, $fa, $12, $00, $ee, $fc, $13, $00, $ee
    db $fe, $14, $00, $f0, $fa, $32, $00, $f0, $fc, $33, $00, $f0, $fe, $34, $00, $f2
    db $fa, $52, $00, $f2, $fc, $53, $00, $f2, $fe, $54, $00, $09, $ef, $fb, $12, $00
    db $ef, $fc, $13, $00, $ef, $fd, $14, $00, $f0, $fb, $32, $00, $f0, $fc, $33, $00
    db $f0, $fd, $34, $00, $f1, $fb, $52, $00, $f1, $fc, $53, $00, $f1, $fd, $54, $00
    db $09, $f0, $fc, $12, $00, $f0, $fc, $13, $00, $f0, $fc, $14, $00, $f0, $fc, $32
    db $00, $f0, $fc, $33, $00, $f0, $fc, $34, $00, $f0, $fc, $52, $00, $f0, $fc, $53
    db $00, $f0, $fc, $54, $00, $04, $f0, $f8, $04, $00, $f0, $00, $05, $00, $f8, $f8
    db $24, $00, $f8, $00, $25, $00, $04, $f1, $f9, $04, $00, $f1, $ff, $05, $00, $f7
    db $f9, $24, $00, $f7, $ff, $25, $00, $04, $f2, $fa, $04, $00, $f2, $fe, $05, $00
    db $f6, $fa, $24, $00, $f6, $fe, $25, $00, $04, $f3, $fb, $04, $00, $f3, $fd, $05
    db $00, $f5, $fb, $24, $00, $f5, $fd, $25, $00, $04, $f4, $fc, $04, $00, $f4, $fc
    db $05, $00, $f4, $fc, $24, $00, $f4, $fc, $25, $00, $09, $e8, $f4, $14, $20, $e8
    db $fc, $13, $20, $e8, $04, $12, $20, $f0, $f4, $34, $20, $f0, $fc, $33, $20, $f0
    db $04, $32, $20, $f8, $f4, $54, $20, $f8, $fc, $53, $20, $f8, $04, $52, $20, $09
    db $e9, $f5, $14, $20, $e9, $fc, $13, $20, $e9, $03, $12, $20, $f0, $f5, $34, $20
    db $f0, $fc, $33, $20, $f0, $03, $32, $20, $f7, $f5, $54, $20, $f7, $fc, $53, $20
    db $f7, $03, $52, $20, $09, $ea, $f6, $14, $20, $ea, $fc, $13, $20, $ea, $02, $12
    db $20, $f0, $f6, $34, $20, $f0, $fc, $33, $20, $f0, $02, $32, $20, $f6, $f6, $54
    db $20, $f6, $fc, $53, $20, $f6, $02, $52, $20, $09, $eb, $f7, $14, $20, $eb, $fc
    db $13, $20, $eb, $01, $12, $20, $f0, $f7, $34, $20, $f0, $fc, $33, $20, $f0, $01
    db $32, $20, $f5, $f7, $54, $20, $f5, $fc, $53, $20, $f5, $01, $52, $20, $09, $ec
    db $f8, $14, $20, $ec, $fc, $13, $20, $ec, $00, $12, $20, $f0, $f8, $34, $20, $f0
    db $fc, $33, $20, $f0, $00, $32, $20, $f4, $f8, $54, $20, $f4, $fc, $53, $20, $f4
    db $00, $52, $20, $09, $ed, $f9, $14, $20, $ed, $fc, $13, $20, $ed, $ff, $12, $20
    db $f0, $f9, $34, $20, $f0, $fc, $33, $20, $f0, $ff, $32, $20, $f3, $f9, $54, $20
    db $f3, $fc, $53, $20, $f3, $ff, $52, $20, $09, $ee, $fa, $14, $20, $ee, $fc, $13
    db $20, $ee, $fe, $12, $20, $f0, $fa, $34, $20, $f0, $fc, $33, $20, $f0, $fe, $32
    db $20, $f2, $fa, $54, $20, $f2, $fc, $53, $20, $f2, $fe, $52, $20, $09, $ef, $fb
    db $14, $20, $ef, $fc, $13, $20, $ef, $fd, $12, $20, $f0, $fb, $34, $20, $f0, $fc
    db $33, $20, $f0, $fd, $32, $20, $f1, $fb, $54, $20, $f1, $fc, $53, $20, $f1, $fd
    db $52, $20, $09, $f0, $fc, $14, $20, $f0, $fc, $13, $20, $f0, $fc, $12, $20, $f0
    db $fc, $34, $20, $f0, $fc, $33, $20, $f0, $fc, $32, $20, $f0, $fc, $54, $20, $f0
    db $fc, $53, $20, $f0, $fc, $52, $20, $04, $f0, $f8, $05, $20, $f0, $00, $04, $20
    db $f8, $f8, $25, $20, $f8, $00, $24, $20, $04, $f1, $f9, $05, $20, $f1, $ff, $04
    db $20, $f7, $f9, $25, $20, $f7, $ff, $24, $20, $04, $f2, $fa, $05, $20, $f2, $fe
    db $04, $20, $f6, $fa, $25, $20, $f6, $fe, $24, $20, $04, $f3, $fb, $05, $20, $f3
    db $fd, $04, $20, $f5, $fb, $25, $20, $f5, $fd, $24, $20, $04, $f4, $fc, $05, $20
    db $f4, $fc, $04, $20, $f4, $fc, $25, $20, $f4, $fc, $24, $20

Chalvo_BallUpTiles::
    db $02, $02
    db $00, $01
    db $20, $21

Chalvo_BallDownTiles::
    db $02, $02
    db $02, $03
    db $22, $23

Chalvo_BallDieTiles::
    db $02, $02
    db $04, $05
    db $24, $25

Chalvo_Walk1Tiles::
    db $03, $03
    db $06, $07, $08
    db $26, $27, $28
    db $46, $47, $48

Chalvo_StandTiles::
    db $03, $03
    db $06, $07, $08
    db $29, $2a, $2b
    db $49, $4a, $4b

Chalvo_Walk2Tiles::
    db $03, $03
    db $06, $07, $08
    db $2c, $2d, $2e
    db $4c, $4d, $4e

Chalvo_FallTiles::
    db $03, $03
    db $0f, $10, $11
    db $2f, $30, $31
    db $4f, $50, $51

Chalvo_DieTiles::
    db $03, $03
    db $12, $13, $14
    db $32, $33, $34
    db $52, $53, $54

Chalvo_JumpTiles::
    db $03, $03
    db $15, $16, $17
    db $35, $36, $37
    db $55, $56, $57

Chalvo_Push1Tiles::
    db $03, $03
    db $18, $19, $1a
    db $38, $39, $3a
    db $58, $59, $5a

Chalvo_PushStandTiles::
    db $03, $03
    db $18, $19, $1a
    db $68, $69, $6a
    db $88, $89, $8a

Chalvo_Push2Tiles::
    db $03, $03
    db $18, $19, $1a
    db $6b, $6c, $6d
    db $8b, $8c, $8d

Chalvo_OuchTiles::
    db $02, $02
    db $e7, $e8
    db $e9, $ea

Chalvo_DashDustTiles::
    db $01, $01
    db $eb

Chalvo_PushSweat1Tiles::
    db $01, $01
    db $ed

Chalvo_PushSweat2Tiles::
    db $01, $01
    db $ee

Chalvo_TilePointers::
    dw Chalvo_BallUpTiles
    dw Chalvo_BallDownTiles
    dw Chalvo_BallDieTiles
    dw Chalvo_Walk1Tiles
    dw Chalvo_StandTiles
    dw Chalvo_Walk2Tiles
    dw Chalvo_FallTiles
    dw Chalvo_DieTiles
    dw Chalvo_JumpTiles
    dw Chalvo_Push1Tiles
    dw Chalvo_PushStandTiles
    dw Chalvo_Push2Tiles
    dw Chalvo_OuchTiles
    dw Chalvo_DashDustTiles
    dw Chalvo_PushSweat1Tiles
    dw Chalvo_PushSweat2Tiles

unkTiles12D::
    db $02, $02
    db $66, $67
    db $86, $87

unkTiles12C::
    db $02, $02
    db $a6, $a7
    db $c6, $c7

Stage_PushCartTiles::
    db $02, $02
    db $a8, $a9
    db $96, $97

unkTiles12A::
    db $02, $02
    db $a8, $a9
    db $c8, $c9

unkTiles129::
    db $02, $02
    db $7e, $7f
    db $9e, $9f

unkTiles128::
    db $02, $02
    db $c0, $c1
    db $c8, $c9

Stage_MovingBlockTiles::
    db $02, $02
    db $74, $75
    db $94, $95

unkTiles126::
    db $02, $02
    db $70, $71
    db $90, $91

unkTiles125::
    db $02, $02
    db $72, $73
    db $92, $93

unkTiles124::
    db $02, $02
    db $7a, $7b
    db $1f, $3f

unkTiles123::
    db $02, $02
    db $7c, $7d
    db $9c, $9d

unkTiles122::
    db $02, $02
    db $76, $77
    db $78, $79

unkTiles121::
    db $02, $02
    db $f1, $f2
    db $11, $12

unkTiles120::
    db $02, $02
    db $f3, $f4
    db $13, $14

unkTiles11F::
    db $02, $02
    db $f5, $f6
    db $15, $16

unkTiles11E::
    db $02, $02
    db $f7, $f8
    db $17, $18

unkTiles11D::
    db $02, $02
    db $0d, $0e
    db $ce, $cf

Stage_SpringCartTiles::
    db $02, $02
    db $70, $71
    db $98, $99

unkTiles11B::
    db $02, $02
    db $72, $73
    db $9a, $9b

unkTiles11A::
    db $02, $02
    db $b0, $b1
    db $d0, $d1

unkTiles119::
    db $02, $02
    db $b2, $b3
    db $d2, $d3

unkTiles118::
    db $02, $02
    db $a8, $a9
    db $ac, $ad

unkTiles117::
    db $02, $02
    db $b4, $b5
    db $d4, $d5

unkTiles116::
    db $02, $02
    db $aa, $ab
    db $ca, $cb

unkTiles115::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTiles114::
    db $02, $02
    db $6e, $6f
    db $8e, $8f

unkTiles113::
    db $02, $02
    db $cc, $cd
    db $ae, $af

unkTiles112::
    db $02, $02
    db $5b, $5c
    db $5d, $5e

unkTiles111::
    db $02, $02
    db $e0, $e1
    db $e2, $ff

unkTiles110::
    db $02, $02
    db $b6, $b7
    db $d6, $d7

unkTiles10F::
    db $02, $02
    db $ff, $ff
    db $ff, $5f

unkTiles10E::
    db $02, $02
    db $e3, $e4
    db $e5, $e6

unkTiles10D::
    db $02, $02
    db $b8, $b9
    db $d8, $d9

unkTiles10C::
    db $02, $02
    db $ba, $bb
    db $da, $db

unkTiles10B::
    db $02, $02
    db $bc, $bd
    db $dc, $dd

unkTiles10A::
    db $02, $02
    db $bd, $bd
    db $dd, $dd

unkTiles109::
    db $02, $02
    db $bd, $be
    db $dd, $de

unkTiles108::
    db $02, $02
    db $dc, $dd
    db $dc, $dd

unkTiles107::
    db $02, $02
    db $dd, $dd
    db $dd, $dd

unkTiles106::
    db $02, $02
    db $dd, $de
    db $dd, $de

unkTiles105::
    db $02, $02
    db $dc, $dd
    db $fc, $fd

unkTiles104::
    db $02, $02
    db $dd, $dd
    db $fd, $fd

unkTiles103::
    db $02, $02
    db $dd, $de
    db $fd, $fe

unkTiles102::
    db $02, $02
    db $bc, $bd
    db $fc, $fd

unkTiles101::
    db $02, $02
    db $bd, $bd
    db $fd, $fd

unkTiles100::
    db $02, $02
    db $bd, $be
    db $fd, $fe

unkTilesFF::
    db $02, $02
    db $bc, $be
    db $dc, $de

unkTilesFE::
    db $02, $02
    db $dc, $de
    db $dc, $de

unkTilesFD::
    db $02, $02
    db $dc, $de
    db $fc, $fe

unkTilesFC::
    db $02, $02
    db $ef, $f0
    db $f1, $f2

unkTilesFB::
    db $02, $02
    db $dc, $f0
    db $fc, $fd

unkTilesFA::
    db $02, $02
    db $bc, $bd
    db $dc, $f2

unkTilesF9::
    db $02, $02
    db $ef, $f0
    db $fd, $fd

unkTilesF8::
    db $02, $02
    db $bd, $bd
    db $f1, $f2

unkTilesF7::
    db $02, $02
    db $ef, $de
    db $fd, $fe

unkTilesF6::
    db $02, $02
    db $bd, $be
    db $f1, $de

unkTilesF5::
    db $02, $02
    db $bd, $be
    db $f1, $de

unkTilesF4::
    db $02, $02
    db $bc, $bd
    db $dc, $f2

unkTilesF3::
    db $02, $02
    db $ef, $de
    db $f1, $de

unkTilesF2::
    db $02, $02
    db $dc, $f0
    db $dc, $f2

unkTilesF1::
    db $02, $02
    db $ef, $de
    db $fd, $fe

unkTilesF0::
    db $02, $02
    db $dc, $f0
    db $fc, $fd

unkTilesEF::
    db $02, $02
    db $ef, $dd
    db $dd, $dd

unkTilesEE::
    db $02, $02
    db $ef, $f0
    db $dd, $dd

unkTilesED::
    db $02, $02
    db $dd, $f0
    db $dd, $dd

unkTilesEC::
    db $02, $02
    db $ef, $dd
    db $f1, $dd

unkTilesEB::
    db $02, $02
    db $dd, $f0
    db $dd, $f2

unkTilesEA::
    db $02, $02
    db $dd, $dd
    db $f1, $dd

unkTilesE9::
    db $02, $02
    db $dd, $dd
    db $f1, $f2

unkTilesE8::
    db $02, $02
    db $dd, $dd
    db $dd, $f2

unkTilesE7::
    db $02, $02
    db $ef, $de
    db $dd, $de

unkTilesE6::
    db $02, $02
    db $dc, $f0
    db $dc, $dd

unkTilesE5::
    db $02, $02
    db $dd, $de
    db $f1, $de

unkTilesE4::
    db $02, $02
    db $dc, $dd
    db $dc, $f2

unkTilesE3::
    db $02, $02
    db $dd, $f0
    db $fd, $fd

unkTilesE2::
    db $02, $02
    db $bd, $bd
    db $dd, $f2

unkTilesE1::
    db $02, $02
    db $ef, $dd
    db $fd, $fd

unkTilesE0::
    db $02, $02
    db $bd, $bd
    db $f1, $dd

unkTilesDF::
    db $02, $02
    db $f3, $f4
    db $dd, $dd

unkTilesDE::
    db $02, $02
    db $dd, $dd
    db $f5, $f6

unkTilesDD::
    db $02, $02
    db $f9, $dd
    db $fa, $dd

unkTilesDC::
    db $02, $02
    db $dd, $f7
    db $dd, $f8

unkTilesDB::
    db $02, $02
    db $f3, $f4
    db $fd, $fd

unkTilesDA::
    db $02, $02
    db $bd, $bd
    db $f5, $f6

unkTilesD9::
    db $02, $02
    db $f9, $de
    db $fa, $de

unkTilesD8::
    db $02, $02
    db $dc, $f7
    db $dc, $f8

unkTilesD7::
    db $01, $01
    db $fb

unkTilesPointersA::
    dw unkTiles12D
    dw unkTiles12C
    dw Stage_PushCartTiles
    dw unkTiles12A
    dw unkTiles129
    dw unkTiles128
    dw Stage_MovingBlockTiles
    dw unkTiles126
    dw unkTiles125
    dw unkTiles124
    dw unkTiles123
    dw unkTiles122
    dw unkTiles121
    dw unkTiles120
    dw unkTiles11F
    dw unkTiles11E
    dw unkTiles11D
    dw Stage_SpringCartTiles
    dw unkTiles11B
    dw unkTiles11A
    dw unkTiles119
    dw unkTiles118
    dw unkTiles117
    dw unkTiles116
    dw unkTiles115
    dw unkTiles114
    dw unkTiles113
    dw unkTiles112
    dw unkTiles111
    dw unkTiles110
    dw unkTiles10F
    dw unkTiles10E
    dw unkTiles10D
    dw unkTiles10C
    dw unkTiles10B
    dw unkTiles10A
    dw unkTiles109
    dw unkTiles108
    dw unkTiles107
    dw unkTiles106
    dw unkTiles105
    dw unkTiles104
    dw unkTiles103
    dw unkTiles102
    dw unkTiles101
    dw unkTiles100
    dw unkTilesFF
    dw unkTilesFE
    dw unkTilesFD
    dw unkTilesFC
    dw unkTilesFB
    dw unkTilesFA
    dw unkTilesF9
    dw unkTilesF8
    dw unkTilesF7
    dw unkTilesF6
    dw unkTilesF5
    dw unkTilesF4
    dw unkTilesF3
    dw unkTilesF2
    dw unkTilesF1
    dw unkTilesF0
    dw unkTilesEF
    dw unkTilesEE
    dw unkTilesED
    dw unkTilesEC
    dw unkTilesEB
    dw unkTilesEA
    dw unkTilesE9
    dw unkTilesE8
    dw unkTilesE7
    dw unkTilesE6
    dw unkTilesE5
    dw unkTilesE4
    dw unkTilesE3
    dw unkTilesE2
    dw unkTilesE1
    dw unkTilesE0
    dw unkTilesDF
    dw unkTilesDE
    dw unkTilesDD
    dw unkTilesDC
    dw unkTilesDB
    dw unkTilesDA
    dw unkTilesD9
    dw unkTilesD8
    dw unkTilesD7

Stage_OneHitEnemy1Tiles::
    db $02, $02
    db $1b, $1c
    db $3b, $3c

Stage_OneHitEnemy2Tiles::
    db $02, $02
    db $1d, $1e
    db $3d, $3e

Stage_OneHitEnemyDieTiles::
    db $02, $02
    db $c2, $c3
    db $c4, $c5

Stage_NoHitEnemy1Tiles::
    db $02, $02
    db $80, $81
    db $a0, $a1

Stage_NoHitEnemy2Tiles::
    db $02, $02
    db $82, $83
    db $a2, $a3

Stage_NoHitEnemyDieTiles::
    db $02, $02
    db $84, $85
    db $a4, $a5

Stage_TwoHitEnemy1Tiles::
    db $02, $02
    db $40, $41
    db $60, $61

Stage_TwoHitEnemy2Tiles::
    db $02, $02
    db $42, $43
    db $62, $63

Stage_TwoHitEnemyDieTiles::
    db $02, $02
    db $44, $45
    db $64, $65

unkTilesPointers9::
    dw Stage_OneHitEnemy1Tiles
    dw Stage_OneHitEnemy2Tiles
    dw Stage_OneHitEnemyDieTiles
    dw Stage_NoHitEnemy1Tiles
    dw Stage_NoHitEnemy2Tiles
    dw Stage_NoHitEnemyDieTiles
    dw Stage_TwoHitEnemy1Tiles
    dw Stage_TwoHitEnemy2Tiles
    dw Stage_TwoHitEnemyDieTiles

unkTilesCD::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTilesCB::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTilesCA::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTilesC9::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTilesC8::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTilesC7::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTilesC6::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTilesC5::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTilesC4::
    db $04, $04
    db $40, $41, $42, $43
    db $44, $45, $64, $65
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTilesC3::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTilesC2::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTilesC1::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTilesC0::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTilesBF::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTilesBE::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d
    db $5b, $5c, $5d

unkTilesBD::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTilesBC::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTilesBB::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTilesPointers8::
    dw unkTilesCD
    dw unkTilesCB
    dw unkTilesCA
    dw unkTilesC9
    dw unkTilesC8
    dw unkTilesC7
    dw unkTilesC6
    dw unkTilesC5
    dw unkTilesC4
    dw unkTilesC3
    dw unkTilesC2
    dw unkTilesC1
    dw unkTilesC0
    dw unkTilesBF
    dw unkTilesBE
    dw unkTilesBD
    dw unkTilesBC
    dw unkTilesBB

unkTilesBA::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTilesB9::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTilesB8::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTilesB7::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTilesB6::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTilesB5::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTilesB4::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTilesB3::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTilesB2::
    db $04, $04
    db $40, $41, $42, $43
    db $44, $45, $64, $65
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTilesB1::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTilesB0::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTilesAF::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTilesAE::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTilesAD::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTilesAC::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d
    db $5b, $5c, $5d

unkTilesAB::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTilesAA::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTilesA9::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTilesA8::
    db $06, $04
    db $40, $41, $42, $b1, $b2, $b3
    db $60, $61, $62, $d1, $d2, $d3
    db $80, $81, $82, $83, $84, $85
    db $a0, $a1, $a2, $a3, $a4, $a5

unkTilesA7::
    db $06, $04
    db $40, $41, $42, $43, $44, $45
    db $60, $61, $62, $63, $64, $65
    db $80, $81, $82, $83, $84, $85
    db $a0, $a1, $a2, $a3, $a4, $a5

unkTilesA6::
    db $06, $04
    db $40, $41, $42, $ae, $af, $b0
    db $60, $61, $62, $ce, $cf, $d0
    db $80, $81, $82, $83, $84, $85
    db $a0, $a1, $a2, $a3, $a4, $a5

unkTilesPointers7::
    dw unkTilesBA
    dw unkTilesB9
    dw unkTilesB8
    dw unkTilesB7
    dw unkTilesB6
    dw unkTilesB5
    dw unkTilesB4
    dw unkTilesB3
    dw unkTilesB2
    dw unkTilesB1
    dw unkTilesB0
    dw unkTilesAF
    dw unkTilesAE
    dw unkTilesAD
    dw unkTilesAC
    dw unkTilesAB
    dw unkTilesAA
    dw unkTilesA9
    dw unkTilesA8
    dw unkTilesA7
    dw unkTilesA6

unkTilesA5::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTilesA4::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTilesA3::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTilesA2::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTilesA1::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTilesA0::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTiles9F::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTiles9E::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles9D::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $44, $45, $63
    db $80, $64, $65, $83
    db $a0, $a1, $a2, $a3

unkTiles9C::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTiles9B::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTiles9A::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTiles99::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTiles98::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTiles97::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d
    db $5b, $5c, $5d

unkTiles96::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTiles95::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTiles94::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTiles93::
    db $02, $02
    db $b0, $b1
    db $d0, $d1

unkTiles92::
    db $02, $02
    db $74, $75
    db $94, $95

unkTiles91::
    db $02, $02
    db $b2, $b3
    db $d2, $d3

unkTiles90::
    db $02, $02
    db $b4, $b5
    db $d4, $d5

unkTiles8F::
    db $02, $02
    db $a6, $a7
    db $c6, $c7

unkTiles8E::
    db $02, $02
    db $66, $67
    db $86, $87

unkTiles8D::
    db $02, $02
    db $40, $41
    db $60, $61

unkTiles8C::
    db $02, $02
    db $42, $43
    db $62, $63

unkTiles8B::
    db $02, $02
    db $80, $81
    db $a0, $a1

unkTiles8A::
    db $02, $02
    db $82, $83
    db $a2, $a3

unkTiles89::
    db $02, $02
    db $40, $41
    db $60, $44

unkTiles88::
    db $02, $02
    db $42, $43
    db $45, $63

unkTiles87::
    db $02, $02
    db $80, $64
    db $a0, $a1

unkTiles86::
    db $02, $02
    db $65, $83
    db $a2, $a3

unkTilesPointers6::
    dw unkTilesA5
    dw unkTilesA4
    dw unkTilesA3
    dw unkTilesA2
    dw unkTilesA1
    dw unkTilesA0
    dw unkTiles9F
    dw unkTiles9E
    dw unkTiles9D
    dw unkTiles9C
    dw unkTiles9B
    dw unkTiles9A
    dw unkTiles99
    dw unkTiles98
    dw unkTiles97
    dw unkTiles96
    dw unkTiles95
    dw unkTiles94
    dw unkTiles93
    dw unkTiles92
    dw unkTiles91
    dw unkTiles90
    dw unkTiles8F
    dw unkTiles8E
    dw unkTiles8D
    dw unkTiles8C
    dw unkTiles8B
    dw unkTiles8A
    dw unkTiles89
    dw unkTiles88
    dw unkTiles87
    dw unkTiles86

unkTiles85::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTiles84::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTiles83::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTiles82::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTiles81::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTiles80::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTiles7F::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTiles7E::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles7D::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $44, $45, $63
    db $80, $64, $65, $83
    db $a0, $a1, $a2, $a3

unkTiles7C::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTiles7B::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTiles7A::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTiles79::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTiles78::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTiles77::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d
    db $5b, $5c, $5d

unkTiles76::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTiles75::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTiles74::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTiles73::
    db $02, $02
    db $b0, $b1
    db $d0, $d1

unkTiles72::
    db $02, $02
    db $74, $75
    db $94, $95

unkTiles71::
    db $02, $02
    db $b2, $b3
    db $d2, $d3

unkTiles70::
    db $02, $02
    db $b4, $b5
    db $d4, $d5

unkTiles6F::
    db $02, $02
    db $a6, $a7
    db $c6, $c7

unkTiles6E::
    db $02, $02
    db $66, $67
    db $86, $87

unkTiles6D::
    db $02, $02
    db $72, $73
    db $92, $93

unkTiles6C::
    db $02, $02
    db $6e, $6f
    db $8e, $8f

unkTiles6B::
    db $02, $02
    db $70, $71
    db $90, $91

unkTiles6A::
    db $02, $02
    db $40, $41
    db $60, $61

unkTiles69::
    db $02, $02
    db $42, $43
    db $62, $63

unkTiles68::
    db $02, $02
    db $80, $81
    db $a0, $a1

unkTiles67::
    db $02, $02
    db $82, $83
    db $a2, $a3

unkTiles66::
    db $02, $02
    db $44, $45
    db $64, $65

unkTiles65::
    db $02, $02
    db $7a, $7b
    db $9a, $9b

unkTiles64::
    db $03, $02
    db $1b, $1c, $1d
    db $3b, $3c, $3d

unkTiles63::
    db $03, $02
    db $1b, $1c, $1d
    db $f8, $f9, $fa

unkTiles62::
    db $03, $02
    db $1e, $1f, $7e
    db $3e, $3f, $9e

unkTilesPointers5::
    dw unkTiles85
    dw unkTiles84
    dw unkTiles83
    dw unkTiles82
    dw unkTiles81
    dw unkTiles80
    dw unkTiles7F
    dw unkTiles7E
    dw unkTiles7D
    dw unkTiles7C
    dw unkTiles7B
    dw unkTiles7A
    dw unkTiles79
    dw unkTiles78
    dw unkTiles77
    dw unkTiles76
    dw unkTiles75
    dw unkTiles74
    dw unkTiles73
    dw unkTiles72
    dw unkTiles71
    dw unkTiles70
    dw unkTiles6F
    dw unkTiles6E
    dw unkTiles6D
    dw unkTiles6C
    dw unkTiles6B
    dw unkTiles6A
    dw unkTiles69
    dw unkTiles68
    dw unkTiles67
    dw unkTiles66
    dw unkTiles65
    dw unkTiles64
    dw unkTiles63
    dw unkTiles62

unkTiles61::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTiles60::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTiles5F::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTiles5E::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTiles5D::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTiles5C::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTiles5B::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTiles5A::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles59::
    db $04, $04
    db $66, $67, $b0, $b1
    db $86, $87, $d0, $d1
    db $a6, $a7, $b2, $b3
    db $c6, $c7, $d2, $d3

unkTiles58::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTiles57::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTiles56::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTiles55::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTiles54::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTiles53::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d
    db $5b, $5c, $5d

unkTiles52::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTiles51::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTiles50::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTiles4F::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $72, $73
    db $80, $81, $92, $93
    db $a0, $a1, $a2, $a3

unkTiles4E::
    db $04, $04
    db $66, $67, $b0, $b1
    db $86, $87, $b4, $b5
    db $80, $81, $d4, $d5
    db $a0, $a1, $a2, $a3

unkTiles4D::
    db $04, $04
    db $66, $67, $b0, $b1
    db $86, $44, $45, $7f
    db $a6, $64, $65, $9f
    db $c6, $c7, $d2, $d3

unkTiles4C::
    db $02, $02
    db $b4, $b5
    db $d4, $d5

unkTiles4B::
    db $02, $02
    db $a6, $a7
    db $c6, $c7

unkTiles4A::
    db $02, $02
    db $66, $67
    db $86, $87

unkTiles49::
    db $02, $02
    db $40, $41
    db $60, $61

unkTiles48::
    db $02, $02
    db $42, $43
    db $62, $63

unkTiles47::
    db $02, $02
    db $80, $81
    db $a0, $a1

unkTiles46::
    db $02, $02
    db $82, $83
    db $a2, $a3

unkTiles45::
    db $02, $02
    db $40, $41
    db $60, $44

unkTiles44::
    db $02, $02
    db $42, $43
    db $45, $63

unkTiles43::
    db $02, $02
    db $80, $64
    db $a0, $a1

unkTiles42::
    db $02, $02
    db $65, $83
    db $a2, $a3

unkTilesPointers4::
    dw unkTiles61
    dw unkTiles60
    dw unkTiles5F
    dw unkTiles5E
    dw unkTiles5D
    dw unkTiles5C
    dw unkTiles5B
    dw unkTiles5A
    dw unkTiles59
    dw unkTiles58
    dw unkTiles57
    dw unkTiles56
    dw unkTiles55
    dw unkTiles54
    dw unkTiles53
    dw unkTiles52
    dw unkTiles51
    dw unkTiles50
    dw unkTiles4F
    dw unkTiles4E
    dw unkTiles4D
    dw unkTiles4C
    dw unkTiles4B
    dw unkTiles4A
    dw unkTiles49
    dw unkTiles48
    dw unkTiles47
    dw unkTiles46
    dw unkTiles45
    dw unkTiles44
    dw unkTiles43
    dw unkTiles42

unkTiles41::
    db $02, $02
    db $84, $85
    db $a4, $a5

unkTiles40::
    db $04, $02
    db $f5, $f6, $f6, $f7
    db $f5, $f6, $f6, $f7

unkTiles3F::
    db $04, $02
    db $f2, $f3, $f3, $f4
    db $f5, $f6, $f6, $f7

unkTiles3E::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f5, $f6, $f6, $f7

unkTiles3D::
    db $04, $02
    db $ff, $ff, $ff, $ff
    db $f2, $f3, $f3, $f4

unkTiles3C::
    db $04, $02
    db $6e, $6f, $ae, $af
    db $8e, $8f, $ce, $cf

unkTiles3B::
    db $04, $02
    db $ca, $cb, $cc, $cd
    db $8e, $8f, $ce, $cf

unkTiles3A::
    db $04, $04
    db $40, $41, $42, $43
    db $60, $61, $62, $63
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles39::
    db $04, $04
    db $40, $41, $42, $43
    db $44, $45, $64, $65
    db $80, $81, $82, $83
    db $a0, $a1, $a2, $a3

unkTiles38::
    db $02, $02
    db $c3, $c4
    db $e3, $e4

unkTiles37::
    db $02, $02
    db $c5, $c2
    db $e5, $e6

unkTiles36::
    db $02, $02
    db $09, $0a
    db $0b, $0c

unkTiles35::
    db $02, $02
    db $0d, $0e
    db $aa, $ab

unkTiles34::
    db $03, $03
    db $1b, $1c, $1d
    db $b8, $b9, $ba
    db $d8, $d9, $da

unkTiles33::
    db $03, $03
    db $1b, $1c, $1d
    db $3b, $3c, $3d
    db $5b, $5c, $5d

unkTiles32::
    db $03, $03
    db $1b, $1c, $1d
    db $bb, $bc, $bd
    db $db, $dc, $dd

unkTiles31::
    db $03, $03
    db $1b, $1c, $1d
    db $f8, $f9, $fa
    db $fb, $fc, $fd

unkTiles30::
    db $03, $03
    db $1e, $1f, $7e
    db $3e, $3f, $9e
    db $de, $df, $be

unkTiles2F::
    db $06, $04
    db $1b, $1c, $1d, $40, $41, $42
    db $3b, $3c, $3d, $60, $61, $62
    db $5b, $5c, $5d, $80, $81, $82
    db $e0, $e1, $e2, $a0, $a1, $a2

unkTiles2E::
    db $06, $04
    db $1b, $1c, $1d, $43, $44, $45
    db $3b, $3c, $3d, $63, $64, $65
    db $5b, $5c, $5d, $83, $84, $85
    db $e0, $e1, $e2, $a3, $a4, $a5

unkTiles2D::
    db $06, $04
    db $1b, $1c, $1d, $40, $41, $42
    db $f8, $f9, $fa, $60, $61, $62
    db $fb, $fc, $fd, $80, $81, $82
    db $e0, $e1, $e2, $a0, $a1, $a2

unkTiles2C::
    db $06, $04
    db $1e, $1f, $7e, $40, $41, $42
    db $3e, $3f, $9e, $60, $61, $62
    db $de, $df, $be, $80, $81, $82
    db $e0, $e1, $e2, $a0, $a1, $a2

unkTiles2B::
    db $06, $04
    db $1e, $1f, $7e, $43, $44, $45
    db $3e, $3f, $9e, $63, $64, $65
    db $de, $df, $be, $83, $84, $85
    db $e0, $e1, $e2, $a3, $a4, $a5

unkTiles2A::
    db $06, $04
    db $1e, $1f, $7e, $40, $41, $42
    db $3e, $3f, $9e, $60, $61, $62
    db $de, $df, $be, $80, $66, $67
    db $e0, $e1, $e2, $a0, $86, $87

unkTilesPointers3::
    dw unkTiles41
    dw unkTiles40
    dw unkTiles3F
    dw unkTiles3E
    dw unkTiles3D
    dw unkTiles3C
    dw unkTiles3B
    dw unkTiles3A
    dw unkTiles39
    dw unkTiles38
    dw unkTiles37
    dw unkTiles36
    dw unkTiles35
    dw unkTiles34
    dw unkTiles33
    dw unkTiles32
    dw unkTiles31
    dw unkTiles30
    dw unkTiles2F
    dw unkTiles2E
    dw unkTiles2D
    dw unkTiles2C
    dw unkTiles2B
    dw unkTiles2A

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
    dw unkAnimSet1
    dw unkAnimSet2
    dw unkAnimSet3
    dw unkAnimSet4
    dw unkAnimSet5
    dw unkAnimSet6
    dw unkAnimSet7
    dw unkAnimSet8
    dw unkAnimSet9
    dw unkAnimSetA
    dw unkAnimSetB
    dw unkAnimSetC
    dw unkAnimSetD

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
    ;these 4 0x10 control the first boss' collision
    ;x offset, y offset, width, height
    ;width & height extend leftward and negative offsets move right
    ;therefore, the origin is somewhere in the bottom right
    ;either world origin or sprite origin
    ;to convert it to standard top left cartesian, flip the x and y offset
    ;cant really do that with width and height but im sure negative numbers have got your back

    db -7, -24, 13, 23
    db -7, -24, 13, 23
    db -7, -24, 13, 23
    db -7, -24, 13, 23

    db -7, -24, 13, 23
    db -7, -24, 13, 23
    db -7, -16, 13, 15
    db -7, -16, 13, 15

    db -7, -16, 13, 15
    db -7, -16, 13, 15
    db -7, -16, 13, 15
    db -7, -16, 13, 15

    db -7, -24, 13, 23
    db -7, -24, 13, 23
    db -7, -24, 13, 23
    db -7, -24, 13, 23

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
    
bank3_pad:: ds $8000-bank3_pad