; symbols wip

SECTION "HRAM", HRAM
DMA_OAM_1: ds $a ;$ff80
unk_ff8a: ds 6
DMA_OAM_2: ds $a ;$ff90
unk_ff9a: db
INPUT_HOLD: db ; hold input poller at $FF9B
INPUT_PRESS: db ; press input poller at $FF9C
unk_ff9d: db
unk_ff9e: db
unk_ff9f: db
unk_ffa0: db
unk_ffa1: db
rIEStore: db ;$ffa2
unk_ffa3: db


SECTION "WRAM", WRAM0
SHADOW_OAM: ds (40 * 4) ;$c000

unk_c0a0: ds ($c100 - $c0a0)

actors: ds ACTOR_sizeof * MAX_ACTORS ;$c100

unk_c480: ds ($c80b - $c480)

; actual variables

; 00:c803 playerScreenX
; 00:c804 playerScreenY

sceneState: db ;$c80b
procState: db ;$c80c

unk_c80d: ds ($c815 - $c80b)


; the state of the player at any given time.
playerState: db ;$c817
currentStage: db ;$c818


unk_c819: ds ($c974 - $c819)

; 00:c81b playerScreenX_origindistance_copy
; 0:c81c playerScreenY_origindistance_copy

; unsigned value for how many diamonds you have
diamonds: db ;$c974
; the flags to determine which diamonds have been gotten in the single level
levelDiamondsBitFlag: db ;$c975

unk_c976: db

; the flags to determine which lives have been gotten in the single level
levelLivesBitFlag: db ;$c977

; these need way more research
; bytes containing where chalvo will respawn on death
chalvoPosCheckpointX: db ;$c978
screenPosCheckpointX: db ;$c979
chalvoPosCheckpointY: db ;$c97a
screenPosCheckpointY: db ;$c97b

unk_c97c: db
unk_c97d: db
unk_c97e: db
unk_c97f: db
unk_c980: ds ($c984 - $c980)
soundtest_i: db ;$c984
unk_c985: ds ($c98e - $c985)

;increments across this copied version to confirm whether or not it is valid
;technically size 6 but it doesnt know that
passwordStore: db ;$c98e

unk_c98f: ds ($c9f2 - $c98f)

cursorIndex: db ;$c9f2
passwordLetter: db ;$c9f3
currentPassword: db ;$c9f4
roomPointer: dw ;$c9f5

unk_c9f7: ds ($c9fc - $c9f7)

; the amount of lives the player has at a given time
playerLives: db ;$c9fc

unk_c9fd: db
unk_c9fe: db
unk_c9ff: ds ($cb23 - $c9ff)

; whether or not the demo for that stage is playing
demoing: db ;$cb23

; the time with no input in the title, so the demo can play
; little endian
titleDemoTimer: dw ;$cb24

unk_cb26: ds ($cb2a - $cb26)

holdTimer: db ;$cb2a
localInputHeld: db ;$cb2b

unk_cb2c: ds ($cbc0-$cb2c)

;vram tile queue pointers?????
unk_cbc0: dw
unk_cbc2: dw

unk_cbc4: ds ($cc00-$cbc4)

;is this a vram tile queue???????
unk_cc00: ds $200

SHADOW_OAM2: ds (40 * 4)