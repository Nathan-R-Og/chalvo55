SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

SwitchOnTileContact::
    pop hl
    pop af
    push af
    push hl

; basically a switch case
; the names speak for themselves

    cp TILE_BLACKHOLE
    jp z, BlackHole

    cp TILE_SPIKEUP
    jp z, SpikeUp

    cp TILE_SPIKEDOWN
    jp z, SpikeDown

    cp TILE_LASTHITBREAKABLE
    jp z, LastHitBreakable

    cp TILE_FIRSTHITBREAKABLE
    jp z, FirstHitBreakable

    cp TILE_INVISIBLEGLASS
    jp z, InvisibleGlass

    cp TILE_SPRINGBLOCK
    jp z, SpringBlock

    cp TILE_WARPBOX
    jp z, WarpBox

    cp TILE_INVINCIBILITYPICKUP
    jp z, InvincibilityPickup

    cp TILE_UPBOUNCEPICKUP
    jp z, UpBouncePickup

    cp TILE_DIAMONDPICKUP_SETFLAG0
    jp z, DiamondPickup_SetFlag0

    cp TILE_DIAMONDPICKUP_SETFLAG1
    jp z, DiamondPickup_SetFlag1

    cp TILE_DIAMONDPICKUP_SETFLAG2
    jp z, DiamondPickup_SetFlag2

    cp TILE_DIAMONDPICKUP_SETFLAG3
    jp z, DiamondPickup_SetFlag3

    cp TILE_DIAMONDPICKUP_SETFLAG4
    jp z, DiamondPickup_SetFlag4

    cp TILE_GOALCARD
    jp z, GoalCard

    cp TILE_GOALCARD2
    jp z, GoalCardDupe

    cp TILE_GOALWALL_DUPE2
    jp z, GoalWall

    cp TILE_BOUNCEBALL
    jp z, BounceBall

    cp TILE_CONVEYORRIGHT
    jp z, ConveyorRight

    cp TILE_CONVEYORLEFT
    jp z, ConveyorLeft

    cp TILE_LIFEPICKUP_SETFLAG0
    jp z, LifePickup_SetFlag0

    cp TILE_LIFEPICKUP_SETFLAG1
    jp z, LifePickup_SetFlag1

    cp TILE_LIFEPICKUP_SETFLAG2
    jp z, LifePickup_SetFlag2

    cp TILE_LIFEPICKUP_SETFLAG3
    jp z, LifePickup_SetFlag3

    cp TILE_LIFEPICKUP_SETFLAG4
    jp z, LifePickup_SetFlag4

    cp TILE_LIFEPICKUP_SETFLAG5
    jp z, LifePickup_SetFlag5

    cp TILE_LIFEPICKUP_SETFLAG6
    jp z, LifePickup_SetFlag6

    cp TILE_LIFEPICKUP_SETFLAG7
    jp z, LifePickup_SetFlag7

    cp TILE_BOSSBLOCKTRIGGER
    jp z, BossBlockTrigger

    cp TILE_BOSSAIRTRIGGER
    jp z, BossAirTrigger

    cp TILE_BOSSBUTTONLEFT
    jp z, BossButtonLeft

    cp TILE_BOSSBUTTONRIGHT
    jp z, BossButtonRight

    jp Jump_002_5b86

02:528b BlackHole
02:5309 SpikeUp
02:532c SpikeDown
02:534f LastHitBreakable
02:53c2 FirstHitBreakable
02:5464 InvisibleGlass
02:5445 SpringBlock
02:548a WarpBox
02:5498 InvincibilityPickup
02:54d8 UpBouncePickup

02:5510 DiamondPickup_SetFlag0
02:5562 DiamondPickup_SetFlag1
02:55b4 DiamondPickup_SetFlag2
02:5606 DiamondPickup_SetFlag3
02:5658 DiamondPickup_SetFlag4

02:56aa GoalCard
02:5713 GoalCardDupe
02:577c GoalWall
02:57e5 BounceBall
02:586d ConveyorRight
02:5898 ConveyorLeft

02:58c3 LifePickup_SetFlag0
02:5902 LifePickup_SetFlag1
02:5941 LifePickup_SetFlag2
02:5980 LifePickup_SetFlag3
02:59bf LifePickup_SetFlag4
02:59fe LifePickup_SetFlag5
02:5a3d LifePickup_SetFlag6
02:5a7c LifePickup_SetFlag7

02:5abb BossBlockTrigger
02:5b36 BossAirTrigger
02:5b79 BossButtonLeft
02:5b7f BossButtonRight
02:5b8d Tile_DefaultCaseHandler



; load last checkpoint position
; and it with itself to set flag z inverse
; if z == false (meaning result is not 0), return
; else set mask for new checkpoint, return

; if(chalvoPosCheckpointX != 0) return;
; chalvoPosCheckpointX = -1;

SetCheckpointOnTouch::
    ld a, [chalvoPosCheckpointX]
    and a
    jr nz, ReturnIfInvalidCheckpoint

    ld a, $ff
    ld [chalvoPosCheckpointX], a

ReturnIfInvalidCheckpoint::
    ret