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
    dw MAYBE_FRAME_DEF_unk1
    dw MAYBE_FRAME_DEF_unk2
    dw MAYBE_FRAME_DEF_unk2
    dw MAYBE_FRAME_DEF_unk2
    dw MAYBE_FRAME_DEF_unk2
    dw MAYBE_FRAME_DEF_unk2
    dw MAYBE_FRAME_DEF_unk2
    dw MAYBE_FRAME_DEF_unk3
    dw MAYBE_FRAME_DEF_unk4
    dw MAYBE_FRAME_DEF_unk5
    dw MAYBE_FRAME_DEF_unk6
    dw MAYBE_FRAME_DEF_unk7
    dw MAYBE_FRAME_DEF_unk8
    dw MAYBE_FRAME_DEF_unk9
    dw MAYBE_FRAME_DEF_unkA
    dw MAYBE_FRAME_DEF_unkB
    dw MAYBE_FRAME_DEF_unkC
    dw MAYBE_FRAME_DEF_unkD
    dw MAYBE_FRAME_DEF_unkE
    dw MAYBE_FRAME_DEF_unkF
    dw MAYBE_FRAME_DEF_unk10
    dw MAYBE_FRAME_DEF_unk11
    dw MAYBE_FRAME_DEF_unk12
    dw MAYBE_FRAME_DEF_unk13
    dw MAYBE_FRAME_DEF_unk14
    dw MAYBE_FRAME_DEF_unk15
    dw MAYBE_FRAME_DEF_unk16
    dw MAYBE_FRAME_DEF_unk17
    dw MAYBE_FRAME_DEF_unk18
    dw MAYBE_FRAME_DEF_unk19
    dw MAYBE_FRAME_DEF_unk1A
    dw MAYBE_FRAME_DEF_unk1B
    dw MAYBE_FRAME_DEF_unk1C
    dw MAYBE_FRAME_DEF_unk1D
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
MAYBE_FRAME_DEF_unk1:: frame_def 0, 0, unkTilesD7

MAYBE_FRAME_DEF_unk2::
    db $09, $e8, $f4, $12
    db $00, $e8, $fc, $13
    db $00, $e8, $04, $14
    db $00, $f0, $f4, $32
    db $00, $f0, $fc, $33
    db $00, $f0, $04, $34
    db $00, $f8, $f4, $52
    db $00, $f8, $fc, $53
    db $00, $f8, $04, $54
    db $00

MAYBE_FRAME_DEF_unk3::
    db $09, $e9, $f5, $12, $00, $e9, $fc, $13, $00, $e9, $03, $14, $00, $f0, $f5, $32
    db $00, $f0, $fc, $33, $00, $f0, $03, $34, $00, $f7, $f5, $52, $00, $f7, $fc, $53
    db $00, $f7, $03, $54, $00

MAYBE_FRAME_DEF_unk4::
    db $09, $ea, $f6, $12, $00, $ea, $fc, $13, $00, $ea, $02, $14, $00, $f0, $f6, $32
    db $00, $f0, $fc, $33, $00, $f0, $02, $34, $00, $f6, $f6, $52, $00, $f6, $fc, $53
    db $00, $f6, $02, $54, $00

MAYBE_FRAME_DEF_unk5::
    db $09, $eb, $f7, $12, $00, $eb, $fc, $13, $00, $eb, $01, $14, $00, $f0, $f7, $32
    db $00, $f0, $fc, $33, $00, $f0, $01, $34, $00, $f5, $f7, $52, $00, $f5, $fc, $53
    db $00, $f5, $01, $54, $00

MAYBE_FRAME_DEF_unk6::
    db $09, $ec, $f8, $12, $00, $ec, $fc, $13, $00, $ec, $00, $14, $00, $f0, $f8, $32
    db $00, $f0, $fc, $33, $00, $f0, $00, $34, $00, $f4, $f8, $52, $00, $f4, $fc, $53
    db $00, $f4, $00, $54, $00

MAYBE_FRAME_DEF_unk7::
    db $09, $ed, $f9, $12, $00, $ed, $fc, $13, $00, $ed, $ff, $14, $00, $f0, $f9, $32
    db $00, $f0, $fc, $33, $00, $f0, $ff, $34, $00, $f3, $f9, $52, $00, $f3, $fc, $53
    db $00, $f3, $ff, $54, $00

MAYBE_FRAME_DEF_unk8::
    db $09, $ee, $fa, $12, $00, $ee, $fc, $13, $00, $ee, $fe, $14, $00, $f0, $fa, $32
    db $00, $f0, $fc, $33, $00, $f0, $fe, $34, $00, $f2, $fa, $52, $00, $f2, $fc, $53
    db $00, $f2, $fe, $54, $00

MAYBE_FRAME_DEF_unk9::
    db $09, $ef, $fb, $12, $00, $ef, $fc, $13, $00, $ef, $fd, $14, $00, $f0, $fb, $32
    db $00, $f0, $fc, $33, $00, $f0, $fd, $34, $00, $f1, $fb, $52, $00, $f1, $fc, $53
    db $00, $f1, $fd, $54, $00

MAYBE_FRAME_DEF_unkA::
    db $09, $f0, $fc, $12, $00, $f0, $fc, $13, $00, $f0, $fc, $14, $00, $f0, $fc, $32
    db $00, $f0, $fc, $33, $00, $f0, $fc, $34, $00, $f0, $fc, $52, $00, $f0, $fc, $53
    db $00, $f0, $fc, $54, $00

MAYBE_FRAME_DEF_unkB::
    db $04, $f0, $f8, $04, $00, $f0, $00, $05, $00, $f8, $f8, $24, $00, $f8, $00, $25
    db $00

MAYBE_FRAME_DEF_unkC::
    db $04, $f1, $f9, $04, $00, $f1, $ff, $05, $00, $f7, $f9, $24, $00, $f7, $ff, $25
    db $00

MAYBE_FRAME_DEF_unkD::
    db $04, $f2, $fa, $04, $00, $f2, $fe, $05, $00, $f6, $fa, $24, $00, $f6, $fe, $25
    db $00

MAYBE_FRAME_DEF_unkE::
    db $04, $f3, $fb, $04, $00, $f3, $fd, $05, $00, $f5, $fb, $24, $00, $f5, $fd, $25
    db $00

MAYBE_FRAME_DEF_unkF::
    db $04, $f4, $fc, $04, $00, $f4, $fc, $05, $00, $f4, $fc, $24, $00, $f4, $fc, $25
    db $00

MAYBE_FRAME_DEF_unk10::
    db $09, $e8, $f4, $14, $20, $e8, $fc, $13, $20, $e8, $04, $12, $20, $f0, $f4, $34
    db $20, $f0, $fc, $33, $20, $f0, $04, $32, $20, $f8, $f4, $54, $20, $f8, $fc, $53
    db $20, $f8, $04, $52, $20

MAYBE_FRAME_DEF_unk11::
    db $09, $e9, $f5, $14, $20, $e9, $fc, $13, $20, $e9, $03, $12, $20, $f0, $f5, $34
    db $20, $f0, $fc, $33, $20, $f0, $03, $32, $20, $f7, $f5, $54, $20, $f7, $fc, $53
    db $20, $f7, $03, $52, $20

MAYBE_FRAME_DEF_unk12::
    db $09, $ea, $f6, $14, $20, $ea, $fc, $13, $20, $ea, $02, $12, $20, $f0, $f6, $34
    db $20, $f0, $fc, $33, $20, $f0, $02, $32, $20, $f6, $f6, $54, $20, $f6, $fc, $53
    db $20, $f6, $02, $52, $20

MAYBE_FRAME_DEF_unk13::
    db $09, $eb, $f7, $14, $20, $eb, $fc, $13, $20, $eb, $01, $12, $20, $f0, $f7, $34
    db $20, $f0, $fc, $33, $20, $f0, $01, $32, $20, $f5, $f7, $54, $20, $f5, $fc, $53
    db $20, $f5, $01, $52, $20

MAYBE_FRAME_DEF_unk14::
    db $09, $ec, $f8, $14, $20, $ec, $fc, $13, $20, $ec, $00, $12, $20, $f0, $f8, $34
    db $20, $f0, $fc, $33, $20, $f0, $00, $32, $20, $f4, $f8, $54, $20, $f4, $fc, $53
    db $20, $f4, $00, $52, $20

MAYBE_FRAME_DEF_unk15::
    db $09, $ed, $f9, $14, $20, $ed, $fc, $13, $20, $ed, $ff, $12, $20, $f0, $f9, $34
    db $20, $f0, $fc, $33, $20, $f0, $ff, $32, $20, $f3, $f9, $54, $20, $f3, $fc, $53
    db $20, $f3, $ff, $52, $20

MAYBE_FRAME_DEF_unk16::
    db $09, $ee, $fa, $14, $20, $ee, $fc, $13, $20, $ee, $fe, $12, $20, $f0, $fa, $34
    db $20, $f0, $fc, $33, $20, $f0, $fe, $32, $20, $f2, $fa, $54, $20, $f2, $fc, $53
    db $20, $f2, $fe, $52, $20

MAYBE_FRAME_DEF_unk17::
    db $09, $ef, $fb, $14, $20, $ef, $fc, $13, $20, $ef, $fd, $12, $20, $f0, $fb, $34
    db $20, $f0, $fc, $33, $20, $f0, $fd, $32, $20, $f1, $fb, $54, $20, $f1, $fc, $53
    db $20, $f1, $fd, $52, $20

MAYBE_FRAME_DEF_unk18::
    db $09, $f0, $fc, $14, $20, $f0, $fc, $13, $20, $f0, $fc, $12, $20, $f0, $fc, $34
    db $20, $f0, $fc, $33, $20, $f0, $fc, $32, $20, $f0, $fc, $54, $20, $f0, $fc, $53
    db $20, $f0, $fc, $52, $20

MAYBE_FRAME_DEF_unk19::
    db $04, $f0, $f8, $05, $20, $f0, $00, $04, $20, $f8, $f8, $25, $20, $f8, $00, $24
    db $20

MAYBE_FRAME_DEF_unk1A::
    db $04, $f1, $f9, $05, $20, $f1, $ff, $04, $20, $f7, $f9, $25, $20, $f7, $ff, $24
    db $20

MAYBE_FRAME_DEF_unk1B::
    db $04, $f2, $fa, $05, $20, $f2, $fe, $04, $20, $f6, $fa, $25, $20, $f6, $fe, $24
    db $20

MAYBE_FRAME_DEF_unk1C::
    db $04, $f3, $fb, $05, $20, $f3, $fd, $04, $20, $f5, $fb, $25, $20, $f5, $fd, $24
    db $20

MAYBE_FRAME_DEF_unk1D::
    db $04, $f4, $fc, $05, $20, $f4, $fc, $04, $20, $f4, $fc, $25, $20, $f4, $fc, $24
    db $20

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
    ;x offset, y offset, width, height
    ;width & height extend leftward and negative offsets move right
    ;therefore, the origin is somewhere in the bottom right
    ;either world origin or sprite origin
    ;to convert it to standard top left cartesian, flip the x and y offset
    ;cant really do that with width and height but im sure negative numbers have got your back

    ;only boss rooms
    ;Chalvo_Walk1
    db -7, -24, 13, 23
    ;Chalvo_Walk1, fight start
    db -7, -24, 13, 23

    ;Chalvo_Stand
    db -7, -24, 13, 23
    ;Chalvo_Stand, fight start
    db -7, -24, 13, 23

    ;Chalvo_Walk2
    db -7, -24, 13, 23
    ;Chalvo_Walk2, fight start
    db -7, -24, 13, 23

    ;Chalvo_BallUp
    db -7, -16, 13, 15
    ;Chalvo_BallUp, fight start
    db -7, -16, 13, 15

    ;Chalvo_BallDown
    db -7, -16, 13, 15
    ;Chalvo_BallDown, fight start
    db -7, -16, 13, 15

    ;Chalvo_BallDie (unused)
    db -7, -16, 13, 15
    ;Chalvo_BallDown, fight start (unused)
    db -7, -16, 13, 15

    ;Chalvo_Fall
    db -7, -24, 13, 23
    ;Chalvo_Fall, fight start
    db -7, -24, 13, 23

    ;Chalvo_Die (unused)
    db -7, -24, 13, 23
    ;Chalvo_Die, fight start (unused)
    db -7, -24, 13, 23

    ;Chalvo_Jump
    db -7, -16, 13, 15
    ;Chalvo_Jump, fight start
    db -7, -24, 13, 23

    ;Chalvo_Push1 (unused?)
    db -7, -24, 13, 23
    ;Chalvo_Push1, fight start (unused?)
    db -8, -24, 15, 23

    ;Stage_PushCart (unused?)
    db -8, -16, 15, 15
    ;Stage_PushCart, fight start (unused?)
    db -8, -16, 15, 15

    ;Stage_SpringCart (unused?)
    db -8, -16, 15, 15
    ;Stage_SpringCart, fight start  (unused?)
    db -8, -16, 15, 15

    ;Stage_MovingBlock (unused?)
    db -8, -16, 15, 15
    ;Stage_MovingBlock, fight start  (unused?)
    db -8, -16, 15, 15

    ;Chalvo_Push1_Copy
    db -7, -24, 13, 23
    ;Chalvo_Push1_Copy, fight start
    db -7, -24, 13, 23

    ;Chalvo_PushStand
    db -7, -24, 13, 23
    ;Chalvo_PushStand, fight start
    db -7, -24, 13, 23

    ;Chalvo_Push2
    db -7, -24, 13, 23
    ;Chalvo_Push2, fight start
    db -7, -24, 13, 23

    ;Chalvo_DashDust
    db 0, 0, 0, 0
    ;Chalvo_DashDust, fight start
    db 0, 0, 0, 0

    ;Stage_OneHitEnemy1
    db -6, -14, 11, 11
    ;Stage_OneHitEnemy1, fight start
    db $f8, $f0, $0f, $0f

    ;Stage_OneHitEnemy2
    db -6, -14, 11, 11
    ;Stage_OneHitEnemy2, fight start
    db $f8, $f0, $0f, $0f

    ;Stage_OneHitEnemyDie
    db 0, 0, 0, 0
    ;Stage_OneHitEnemyDie, fight start
    db 0, 0, 0, 0

    ;Stage_TwoHitEnemy1
    db -6, -14, 11, 11
    ;Stage_TwoHitEnemy1, fight start
    db $f8, $f0, $0f, $0f

    ;Stage_TwoHitEnemy2
    db -6, -14, 11, 11
    ;Stage_TwoHitEnemy2, fight start
    db $f8, $f0, $0f, $0f

    ;Stage_TwoHitEnemyDie
    db 0, 0, 0, 0
    ;Stage_TwoHitEnemyDie, fight start
    db 0, 0, 0, 0

    ;Stage_NoHitEnemy1
    db -6, -14, 11, $0b
    ;Stage_NoHitEnemy1, fight start
    db $f8, $f0, $0f, $0f

    ;Stage_NoHitEnemy2
    db $fa, $f2, $0b, $0b
    ;Stage_NoHitEnemy2, fight start
    db $f8, $f0, $0f, $0f

    ;Stage_NoHitEnemyDie
    db $00, $00, $00, $00
    ;Stage_NoHitEnemyDie, fight start
    db $00, $00, $00, $00

    ;Chalvo_Ouch
    db $00, $00, $00, $00
    ;Chalvo_Ouch, fight start
    db $00, $00, $00, $00

    ;Stage_SpringCart2
    db $f8, $f0, $0f, $0f
    ;Stage_SpringCart2, fight start
    db $f8, $f0, $0f, $0f

    ;nothing
    db $f8, $f0, $0f, $0f
    ;nothing, fight start
    db $f8, $f0, $0f, $0f

    ;Chalvo_PushSweat1
    db $00, $00, $00, $00
    ;Chalvo_PushSweat1, fight start
    db $00, $00, $00, $00

    ;Chalvo_PushSweat2
    db $00, $00, $00, $00
    ;Chalvo_PushSweat2, fight start
    db $00, $00, $00, $00

    ;unkTilesBF
    db $00, $00, $00, $00
    ;unkTilesBF, fight start
    db $00, $00, $00, $00

    ;unkTilesBF
    db $00, $00, $00, $00
    ;unkTilesBF, fight start
    db $00, $00, $00, $00

    ;unkTilesBE
    db $00, $00, $00, $00
    ;unkTilesBE, fight start
    db $00, $00, $00, $00

    ;unkTilesBD
    db $00, $00, $00, $00
    ;unkTilesBD, fight start
    db $00, $00, $00, $00

    ;unkTilesBC
    db $00, $00, $00, $00
    ;unkTilesBC, fight start
    db $00, $00, $00, $00

    ;unkTilesBB
    db $00, $00, $00, $00
    ;unkTilesBB, fight start
    db $00, $00, $00, $00

    ;unkTilesC5
    db $f0, $e0, $1f, $1f
    ;unkTilesC5, fight start
    db $f0, $e0, $1f, $1f

    ;unkTilesC4
    db $f0, $e0, $1f, $1f
    ;unkTilesC4, fight start
    db $f0, $e0, $1f, $1f

    ;unkTilesC3
    db $00, $00, $00, $00
    ;unkTilesC3, fight start
    db $00, $00, $00, $00

    ;unkTilesC2
    db $00, $00, $00, $00
    ;unkTilesC2, fight start
    db $00, $00, $00, $00

    ;unkTilesC1
    db $00, $00, $00, $00
    ;unkTilesC1, fight start
    db $00, $00, $00, $00

    ;unkTilesC0
    db $00, $00, $00, $00
    ;unkTilesC0, fight start
    db $00, $00, $00, $00

    ;unkTilesA8
    db $e8, $e0, $2f, $1f
    ;unkTilesA8, fight start
    db $e8, $e0, $2f, $1f

    ;unkTilesA7
    db $e8, $e0, $2f, $1f
    ;unkTilesA7, fight start
    db $e8, $e0, $2f, $1f

    ;unkTilesA6
    db $e8, $e0, $2f, $1f
    ;unkTilesA6, fight start
    db $e8, $e0, $2f, $1f
    
    ;unkTilesA6_copy
    db $e8, $e0, $2f, $1f
    ;unkTilesA6_copy, fight start
    db $0c, $e0, $0b, $0f

    ;unkTiles92
    db $f8, $f0, $0f, $0f
    ;unkTiles92, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles93
    db $f8, $f0, $0f, $0f
    ;unkTiles93, fight start
    db $f8, $f0, $0f, $0f
    
    ;unkTiles72
    db $f8, $f0, $0f, $0f
    ;unkTiles72, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles73
    db $f8, $f0, $0f, $0f
    ;unkTiles73, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles64
    db $f8, $f0, $0f, $0f
    ;unkTiles64, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles63
    db $f8, $f0, $0f, $0f
    ;unkTiles63, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles62
    db $f8, $f0, $0f, $0f
    ;unkTiles62, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles62_copy
    db $f8, $f0, $0f, $0f
    ;unkTiles62_copy, fight start
    db $f8, $f0, $0f, $0f

    ;unkTiles4F
    db $f0, $e0, $1f, $1f
    ;unkTiles4F, fight start
    db $f0, $e0, $1f, $1f

    ;unkTiles4E
    db $f0, $e0, $1f, $1f
    ;unkTiles4E, fight start
    db $f0, $e0, $1f, $1f

    ;unkTiles5A
    db $f0, $e0, $1f, $1f
    ;unkTiles5A, fight start
    db $f0, $e0, $1f, $1f
    
    ;unkTiles59
    db $f0, $e0, $1f, $1f
    ;unkTiles59, fight start
    db $f0, $e0, $1f, $1f

    ;unkTiles4D
    db $f0, $e0, $1f, $1f
    ;unkTiles4D, fight start
    db $f0, $e0, $1f, $1f

    ;unkTiles2F
    db $e8, $e0, $2f, $1f
    ;unkTiles2F, fight start
    db $e8, $e0, $2f, $1f

    ;unkTiles2E
    db $e8, $e0, $2f, $1f
    ;unkTiles2E, fight start
    db $e8, $e0, $2f, $1f
    
    ;unkTiles2D
    db $e8, $e0, $2f, $1f
    ;unkTiles2D, fight start
    db $e8, $e0, $2f, $1f

    ;unkTiles2C
    db $e8, $e0, $2f, $1f
    ;unkTiles2C, fight start
    db $e8, $e0, $2f, $1f

    ;unkTiles2B
    db $e8, $e0, $2f, $1f
    ;unkTiles2B, fight start
    db $e8, $e0, $2f, $1f

    ;unkTiles2A
    db $e8, $e0, $2f, $1f
    ;unkTiles2A, fight start
    db $e8, $e0, $2f, $1f

    ;unkTiles2A_copy
    db $00, $df, $17, $20
    ;unkTiles2A_copy, fight start
    db $e8, $e0, $0b, $17

    ;unkTiles123
    db $fc, $f4, $07, $07
    ;unkTiles123, fight start
    db $fc, $f4, $07, $07

    ;unkTiles122
    db $fc, $f4, $07, $07
    ;unkTiles122, fight start
    db $fc, $f4, $07, $07

    ;unkTiles10
    db $e8, $e0, $2f, $1f
    ;unkTiles10, fight start
    db $e8, $e0, $2f, $1f

    ;unkTilesF
    db $e8, $e0, $2f, $1f
    ;unkTilesF, fight start
    db $e8, $e0, $2f, $1f

    ;unkTilesE
    db $e8, $e0, $2f, $1f
    ;unkTilesE, fight start
    db $e8, $e0, $2f, $1f

    ;unkTilesF_copy
    db $00, $e0, $17, $1f
    ;unkTilesF_copy, fight start
    db $e8, $e0, $0b, $0f

    db $00, $00, $00, $32
    db $28, $1e, $14, $0a
    db $1b, $1c, $3b, $3c
    db $1d, $1e, $3d, $3e
    db $1b, $1c, $3b, $3c
    db $1d, $1e, $3d, $3e
    db $1b, $1c, $3b, $3c
    db $1d, $1e, $3d, $3e
    db $00, $00, $00, $0a
    db $0a, $0a, $0a, $0a
    db $80, $81, $a0, $a1
    db $82, $83, $a2, $a3
    db $80, $81, $a0, $a1
    db $82, $83, $a2, $a3
    db $80, $81, $a0, $a1
    db $82, $83, $a2, $a3
    db $00, $00, $00, $14
    db $28, $50, $28, $14
    db $40, $41, $60, $61
    db $42, $43, $62, $63
    db $40, $41, $60, $61
    db $42, $43, $62, $63
    db $40, $41, $60, $61
    db $42, $43, $62, $63

whatCode::
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

    ;init boss stage 1
    ;load actor at index 2
    ld de, actors+(2*ACTOR_sizeof)

    ;set direction
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a

    ;set screenposX to $48
    ld a, b
    add $10
    ld hl, $0004
    add hl, de
    ld [hl], a

    ;set screenposX to $90
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a

    ;set actortype to $12
    ld a, $12
    ld hl, $0001
    add hl, de
    ld [hl], a

    ;set frame to $26
    ld a, $26
    ld hl, $0002
    add hl, de
    ld [hl], a

    ;set 6 to 0
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a

    ;set 7 to 8
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a

    ;set 1a to $10
    ld a, $10
    ld hl, $001a
    add hl, de
    ld [hl], a

    ;set 1b to $20
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a

    ret

    ;init boss stage 2
    ;load actor at index 2
    ld de, actors+(2*ACTOR_sizeof)

    ;set direction
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a

    ;set screenposX to $A5
    ld a, b
    add $18
    ld hl, $0004
    add hl, de
    ld [hl], a

    ;set screenposY to $D0
    ld a, c
    add $20
    ld hl, $0005
    add hl, de
    ld [hl], a

    ;set actortype to $13
    ld a, $13
    ld hl, $0001
    add hl, de
    ld [hl], a

    ;set frame to $2c
    ld a, $2c
    ld hl, $0002
    add hl, de
    ld [hl], a

    ;set $17 to $2c
    ld hl, $0017
    add hl, de
    ld [hl], a

    ;set $18 to $2e
    ld a, $2e
    ld hl, $0018
    add hl, de
    ld [hl], a

    ;set 6 to 0
    ld a, $00
    ld hl, $0006
    add hl, de
    ld [hl], a

    ;set 7 to 8
    ld a, $08
    ld hl, $0007
    add hl, de
    ld [hl], a

    ;set 1a to $18
    ld a, $18
    ld hl, $001a
    add hl, de
    ld [hl], a

    ;set 1b to $20
    ld a, $20
    ld hl, $001b
    add hl, de
    ld [hl], a

    ;set amount of hits to 4
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


    ld a, [procState]
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


    call StartActorCleanup
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $10
    ld [currentStage], a
    call Call_000_2d07
    xor a
    ld [currentStage], a
    call StartActorCleanup
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
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ldh a, [INPUT_HOLD]
    and $30
    jr nz, jr_003_6537

    xor a
    ld [$c83d], a

jr_003_6537:
    ldh a, [INPUT_PRESS]
    bit PADB_RIGHT, a
    jr nz, jr_003_6553

    ldh a, [INPUT_HOLD]
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
    ldh a, [INPUT_PRESS]
    bit 5, a
    jr nz, jr_003_657c

    ldh a, [INPUT_HOLD]
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
    ldh a, [INPUT_PRESS]
    bit PADB_A, a
    jr z, jr_003_6595

    ld a, [currentStage]
    call Call_000_0903

jr_003_6595:
    ldh a, [INPUT_PRESS]
    bit PADB_B, a
    jr z, jr_003_65a0

    ld a, $20
    call Call_000_0a84

jr_003_65a0:
    ldh a, [INPUT_PRESS]
    bit PADB_START, a
    jr z, jr_003_65b4

    call Call_000_0a65
    ld a, $02
    ld [sceneState], a
    xor a
    ld [procState], a
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
    ld de, randomTilePointers
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
    ld de, randomTilePointers
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9803
    call Call_000_244a

jr_003_65e5:
    ret


randomTilePointers::
    dw randomTilePointer1
    dw randomTilePointer2
    dw randomTilePointer3
    dw randomTilePointer4
    dw randomTilePointer5
    dw randomTilePointer6
    dw randomTilePointer7
    dw randomTilePointer8
    dw randomTilePointer9
    dw randomTilePointerA

randomTilePointer1::
    db $03, $02
    db $6a, $6b, $6c
    db $8a, $8b, $8c

randomTilePointer2::
    db $03, $02
    db $20, $21, $22
    db $40, $41, $42

randomTilePointer3::
    db $03, $02
    db $23, $24, $25
    db $43, $44, $45

randomTilePointer4::
    db $03, $02
    db $26, $27, $28
    db $46, $47, $48

randomTilePointer5::
    db $03, $02
    db $29, $2a, $2b
    db $49, $4a, $4b

randomTilePointer6::
    db $03, $02
    db $2c, $2d, $2e
    db $4c, $4d, $4e

randomTilePointer7::
    db $03, $02
    db $2f, $30, $31
    db $4f, $50, $51

randomTilePointer8::
    db $03, $02
    db $32, $33, $34
    db $52, $53, $54

randomTilePointer9::
    db $03, $02
    db $35, $36, $37
    db $55, $56, $57

randomTilePointerA::
    db $03, $02
    db $67, $68, $69
    db $87, $88, $89

whatCode2::
    ld a, [procState]
    ld de, procJumpStart
    push de
    rst $00
    sub e
    ld h, [hl]

procJumpList::
    dw Pre_Init_Stage
    dw Init_Stage
    dw Normal_Process
    dw Use_Exit
    dw $69A1
    dw $69FC
    dw $405D
    dw $6A18
    dw $6A38
    dw $6B0D
    dw $6B15
    dw $6B5B
    dw $6BA7
    dw $6C14
    dw $6C5E
    dw $405D
    dw $405D
    dw $405D
    dw $6CC2
    dw $6CF6
    dw $6DA3
    dw $6DCB
    dw $6DED
    dw $6E45
    dw $6E61
    dw $6E83
    dw $6ED7
    dw $405D
    dw $405D
    dw $405D
    dw $6EF3

procJumpStart::
    ret

PrePre_Init_Stage::
    ;sets all these to 0
    xor a
    ld [playerState], a
    ld [levelDiamondsBitFlag], a
    ld [levelLivesBitFlag], a
    ld [diamonds], a
    ld [chalvoPosCheckpointX], a
    ;
    ld b, $10
    ld hl, $cb13

    jr_003_66a8:
        ld [hl+], a
        dec b
        jr nz, jr_003_66a8

    call StartActorCleanup
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    ld a, [procState]
    inc a
    ld [procState], a
    ret


Pre_Init_Stage::
    ld a, [currentStage]
    ld hl, $c982
    bit 1, [hl]
    ;skips add if bit 1 isnt set
    jr z, jr_003_66cc
    add $09
    jr_003_66cc:

    ;a *= 2
    add a

    ;load init positions
    ld hl, Stage_Inits
    ld b, $00
    ld c, a
    add hl, bc
    ld b, h
    ld c, l
    ;bc is now the current stage's init position (x, y)

    ;;;;;LOAD CHAVLO
    ;load the actor array at index 1
    ld de, actors+(1*ACTOR_sizeof)
    ;set actor type to 2
    ld a, $02
    ld hl, $0001
    add hl, de
    ld [hl], a

    ;set frame to 1
    ld a, ANIM_FRAME_Chalvo_Stand
    ld hl, $0002
    add hl, de
    ld [hl], a

    ;set effect/direction to 0xc
    ld a, $0c
    ld hl, $0000
    add hl, de
    ld [hl], a

    ;set screen x to stage init x
    ld a, [bc]
    inc bc
    ld hl, $0004
    add hl, de
    ld [hl], a

    ;set screen y to stage init y
    ld a, [bc]
    ld hl, $0005
    add hl, de
    ld [hl], a

    ;set 1b to $78
    ld a, $78
    ld hl, $001b
    add hl, de
    ld [hl], a

    ;set flag 1 in effects
    ld hl, $0000
    add hl, de
    set 1, [hl]

    ;reorient
    call Call_003_7038

    call Call_000_2705

    ;if zero, jump
    ld hl, $c982
    bit 1, [hl]
    jr z, jr_003_6723
    ;else

    ld a, [currentStage]
    ld d, $00
    ld e, a
    ld hl, whatwhatwhat2
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
    ld a, [procState]
    inc a
    ld [procState], a
    ret


Stage_Inits::
    db $80, $f0
    db $d0, $30
    db $18, $f0
    db $80, $30
    db $80, $f0
    db $80, $c0
    db $80, $f0
    db $18, $f0
    db $80, $e0
    db $e0, $f0
    db $80, $f0
    db $e0, $30
    db $e0, $24
    db $e0, $f0
    db $e0, $f0
    db $e0, $f0
    db $18, $f0
    db $20, $f0

whatwhatwhat2::
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    dec bc
    inc bc
    add hl, bc
    dec bc
    dec e

Init_Stage::
    ;loop until !z
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6784
    ;loop

    call Call_000_27cc

    ;set playerState bit 0
    ld hl, playerState
    set 0, [hl]
    ld hl, $cb2c
    res 5, [hl]
    ld a, [procState]
    inc a
    ld [procState], a

jr_003_6784:
    ret

Normal_Process::
    ;if not demoing, jump
    ld a, [demoing]
    and a
    jr z, jr_003_67b3
    ;else, act like a demo

    ldh a, [INPUT_PRESS]
    and $09
    jp nz, Jump_003_694a

jr_003_6792:
    ld hl, $cb2c
    res 5, [hl]
    ld a, [$cb2c]
    bit 7, a
    jr z, jr_003_67a6

    ldh a, [INPUT_HOLD]
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
    ;check if not select pressed
    ldh a, [INPUT_PRESS]
    bit PADB_SELECT, a
    jr z, jr_003_67c6
    ;else
    ld a, $04
    ldh [INPUT_HOLD], a
    call Call_000_263a
    ld a, $08
    ld [procState], a
    ret


jr_003_67c6:
    ;check if not start pressed
    ldh a, [INPUT_PRESS]
    bit PADB_START, a
    jr z, jr_003_67d9
    ;else
    ld a, $08
    ldh [INPUT_HOLD], a
    call Call_000_263a
    ld a, $0b
    ld [sceneState], a
    ret


jr_003_67d9:
    ;does some timer stuff idk
    call Call_000_263a
    jr jr_003_67e4

jr_003_67de:
    ldh a, [INPUT_PRESS]
    and $0c
    jr nz, jr_003_6792

jr_003_67e4:
    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ;if bit 5 of playerState, jump to ret
    ;disables camera?????
    ld hl, playerState
    bit 5, [hl]
    jp nz, Jump_003_6985
    ;else

    call Call_003_70c6

    ;if bit 2 of playerState, jump
    ;is warping
    ld a, [playerState]
    bit 2, a
    jp nz, Jump_003_68f0
    ;else
    
    ;if bit 6 of playerState, jump
    ;stage clear?
    bit 6, a
    jp nz, Jump_003_6890
    ;else

    ;if bit 3 of playerState, jump
    ;respawned/died?? respawns the room and gives you i frames
    bit 3, a
    jp nz, Jump_003_6935
    ;else

    ;checks?????
    call Call_003_6f22
    ;
    jr nz, jr_003_685e

    ld a, $01
    ld hl, $68f8
    call Call_000_08ae

    ;if checkpoint x != -1, jump
    ld a, [chalvoPosCheckpointX]
    cp $ff
    jp nz, Jump_003_6985
    ;else

    ;;;;;LOAD CHAVLO
    ;load the actor array at index 1
    ;get direction/effects
    ld bc, actors+(1*ACTOR_sizeof)
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
    ld a, [procState]
    inc a
    ld [procState], a
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
    ld [procState], a
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
    ld [procState], a
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
    ld [procState], a
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
    ld hl, procState
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
    ;if not demoing, remove a life
    ld a, [demoing]
    and a
    jr z, Chalvo_RemoveLife
    ;else
    ld a, [$cb2c]
    bit 7, a
    jr nz, Chalvo_Respawn

Jump_003_694a:
    call Call_000_0619
    ld hl, $cb2c
    res 5, [hl]
    ld a, $0e
    ld [sceneState], a
    xor a
    ld [procState], a
    ld a, $03
    ld [procState], a
    ld a, [currentStage]
    cp $07
    jr nc, jr_003_6985

    ld a, $10
    call Call_000_0a84
    jr jr_003_6985

Chalvo_RemoveLife::
    ;playerLives -= 1
    ld hl, playerLives
    dec [hl]

Chalvo_Respawn::
    ;is playerState a set of bitflags???
    ld hl, playerState
    set 1, [hl]
    res 0, [hl]
    ld a, $00
    ld d, $07
    ;set stuff to 0
    call Call_000_2df8
    ld a, $13
    ld [procState], a

Jump_003_6985:
jr_003_6985:
    ret

Use_Exit::
    ;loop until fade out
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_69a0
    ;loop


    ;io stuff?
    ld de, $ff40
    ld a, [de]
    and $7f

    call Call_000_240e
    call StartActorCleanup2

    ;procState += 1
    ld a, [procState]
    inc a
    ld [procState], a

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
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6a17

    ld a, $03
    ld [procState], a
    ld hl, playerState
    res 1, [hl]
    set 0, [hl]

jr_003_6a17:
    ret


    ld hl, actors
    ld de, $c480
    ld bc, $0380
    call Call_000_03b2
    ld a, [$c803]
    ld [$c809], a
    ld a, [$c804]
    ld [$c80a], a
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ldh a, [INPUT_HOLD]
    bit 2, a
    jp z, Jump_003_6aeb

    ld de, $0000
    ldh a, [INPUT_HOLD]
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
    ldh a, [INPUT_HOLD]
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
    ldh a, [INPUT_HOLD]
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
    ldh a, [INPUT_HOLD]
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
    ld bc, actors

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
    ld de, actors
    ld bc, $0380
    call Call_000_03b2
    ld a, [$c809]
    ld [$c803], a
    ld a, [$c80a]
    ld [$c804], a
    ld a, $03
    ld [procState], a
    ld a, $04
    ldh [INPUT_HOLD], a

jr_003_6b0c:
    ret


    ld a, [procState]
    inc a
    ld [procState], a
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
    ld a, [procState]
    inc a
    ld [procState], a

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
    call StartActorCleanup2
    ld a, [procState]
    inc a
    ld [procState], a

jr_003_6ba6:
    ret


    ld a, $00
    call ChangeRoom
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
    ld a, [procState]
    inc a
    ld [procState], a
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
    ld a, [procState]
    inc a
    ld [procState], a

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
    ld [procState], a
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
    call StartActorCleanup
    ld a, $01
    ld [sceneState], a
    xor a
    ld [procState], a
    jr jr_003_6cf5

jr_003_6ce2:
    ld de, $ff40
    ld a, [de]
    and $7f
    call Call_000_240e
    call StartActorCleanup2
    ld a, [procState]
    inc a
    ld [procState], a

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
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6dca

    ld a, $03
    ld [procState], a
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
    call StartActorCleanup2
    ld a, [procState]
    inc a
    ld [procState], a

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
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6e60

    ld a, $03
    ld [procState], a
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
    call StartActorCleanup2
    ld a, [procState]
    inc a
    ld [procState], a

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
    ld a, [procState]
    inc a
    ld [procState], a
    ret


    ld a, $02
    ld hl, $4001
    call Call_000_08ae
    ld a, $04
    call Call_000_2e61
    jr z, jr_003_6ef2

    ld a, $03
    ld [procState], a
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

    call StartActorCleanup
    ld a, [currentStage]
    inc a
    ld [currentStage], a
    ld a, $0c
    ld [sceneState], a
    xor a
    ld [procState], a

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
    call ChangeRoom
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
    call ChangeRoom
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
    call ChangeRoom
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
    call ChangeRoom
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
    ;;;;;LOAD CHAVLO
    ;load the actor array at index 1
    ld bc, actors+(1*ACTOR_sizeof)

    ;get screenposX and check if it is < $50
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $50
    jp c, Jump_003_706d
    ;else

    ;subtract and check if now < $60
    sub $50
    cp $60
    jp c, Jump_003_7061
    ;else

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
    ;store here
    ld [$c803], a

    ;set chalvo screenposX to $58
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
    ;get chalvo screenposY and check if < $54
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $54
    jp c, Jump_003_70aa
    ;else

    ;sub $54 and check if < $70
    sub $54
    cp $70
    jp c, Jump_003_709e
    ;else

    ;get original screenposY
    ld hl, $0005
    add hl, bc
    ld a, [hl]

    ;calc
    sub $70
    ;??? why
    add $10

    ;set to new result (shouldnt need to get teh same hl over and over)
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
    ;get screenposX
    ld hl, $0004
    add hl, bc
    ld a, [hl]

    ld [$c81b], a

    ;get screenPosY
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

bank3_pad:: ds $8000-bank3_pad