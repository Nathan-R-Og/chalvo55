; constants wip
; tile ids
; these are used for rooms as well as contact detection

; default air block
def TILE_NONE equ 0 ; 0x0

; the last hit of a breakable block as a tile
def TILE_LASTHITBREAKABLE equ 1 ; 0x1
; the full health breakable block
def TILE_FIRSTHITBREAKABLE equ 2 ; 0x2

; default solid block that cannot be broken (not walls)
def TILE_SOLIDBLOCK equ 3 ; 0x3

; ground conveyor that will push non-ball chalvo (right)
def TILE_CONVEYORRIGHT equ 4 ; 0x4

; a spring but you can push it!!!
def TILE_PUSHABLE_SPRING equ 5 ; 0x5
; a BLOCK but you can push it!!!
def TILE_PUSHABLE_BLOCK equ 6 ; 0x6

; elevator block tile
; all elevator block tiles' names are formatted 'TILE_EVEVATOR_<x>,<y>' inclusive
def TILE_ELEVATOR_0_4 equ 7 ; 0x7

; the ground-based spring
def TILE_SPRINGBLOCK equ 8 ; 0x8

; invisible glass block
; is also used for invisible walls by removing the glass texture
def TILE_INVISIBLEGLASS equ 9 ; 0x9

; bouncy ball! (mostly seen in stage 2)
def TILE_BOUNCEBALL equ 10 ; 0xA

; spike tile facing up
def TILE_SPIKEUP equ 11 ; 0xB

; blackhole tile that will KILL chalvo
def TILE_BLACKHOLE equ 12 ; 0xC

; tile that will send chalvo to a specific area
def TILE_WARPBOX equ 13 ; 0xD

; spawn location for the default 'single hit' enemy of the stage
def TILE_SINGLEHIT_ENEMYSPAWN equ 14 ; 0xE
; spawn location for the default 'double hit' enemy of the stage
def TILE_DOUBLEHIT_ENEMYSPAWN equ 15 ; 0xF
; spawn location for the impossible to hit enemy (should be global iirc)
def TILE_CANTHIT_ENEMYSPAWN equ 16 ; 0x10

; invincibility pickup tile
def TILE_INVINCIBILITYPICKUP equ 17 ; 0x11

; pickup that will increase your bounce height (says UP)
def TILE_UPBOUNCEPICKUP equ 18 ; 0x12

; diamond pickups. each set a different flag with different scripts
; i know WHY there are flags but the fact the boss entrance doesnt use them kinda sucks
def TILE_DIAMONDPICKUP_SETFLAG0 equ 19 ; 0x13
def TILE_DIAMONDPICKUP_SETFLAG1 equ 20 ; 0x14
def TILE_DIAMONDPICKUP_SETFLAG2 equ 21 ; 0x15
def TILE_DIAMONDPICKUP_SETFLAG3 equ 22 ; 0x16
def TILE_DIAMONDPICKUP_SETFLAG4 equ 23 ; 0x17

; 'GOAL' pickup to clear X blocks out of the way
def TILE_GOALCARD equ 24 ; 0x18
; said X blocks
def TILE_GOALWALL equ 25 ; 0x19

; different sets of GOAL assets to mix and match flags
def TILE_GOALCARD2 equ 26 ; 0x1A
def TILE_GOALWALL_DUPE equ 27 ; 0x1B
def TILE_GOALWALL_DUPE2 equ 28 ; 0x1C
def TILE_GOALWALL_DUPE3 equ 29 ; 0x1D

; ground conveyor that will push non-ball chalvo (left)
def TILE_CONVEYORLEFT equ 30 ; 0x1E

; spike tile facing down
def TILE_SPIKEDOWN equ 31 ; 0x1F

; the demon looking face blocking the entrance of each stage (needs diamonds!)
def TILE_BOSSENTRANCE equ 32 ; 0x20

; see TILE_ELEVATOR_0_4
def TILE_ELEVATOR_0_7 equ 33 ; 0x21
def TILE_ELEVATOR_0_9 equ 34 ; 0x22
def TILE_ELEVATOR_4_0 equ 35 ; 0x23
def TILE_ELEVATOR_7_0 equ 36 ; 0x24
def TILE_ELEVATOR_10_0 equ 37 ; 0x25

; mostly used for bonus rooms. push to break
def TILE_PUSHBREAKBLOCK equ 38 ; 0x26

; life pickup that sets flag 0
def TILE_LIFEPICKUP_SETFLAG0 equ 39 ; 0x27

; the boss shutter protecting the mob bros for every odd numbered stage (left)
def TILE_BOSSSHUTTERLEFT equ 40 ; 0x28

; the control panel the mob bros use to control enemies
def TILE_BOSSCONTROLPANEL equ 41 ; 0x29

; the button to push to beat boss 1 (as far as i'm aware)
def TILE_BOSSBUTTONLEFT equ 42 ; 0x2A
def TILE_BOSSBUTTONRIGHT equ 43 ; 0x2B

; the position (top left) in which a boss enemy will spawn on the grid
def TILE_BOSSOBJECTSPAWN equ 44 ; 0x2C

; the block used (on contact) to start the boss fight
def TILE_BOSSBLOCKTRIGGER equ 45 ; 0x2D

; blocks that appear when you beat an odd numbered boss (so you can escape)
def TILE_BOSSWINBLOCK equ 46 ; 0x2E

; the boss shutter protecting the mob bros for every odd numbered stage (right)
def TILE_BOSSSHUTTERRIGHT equ 47 ; 0x2F

; tile that appears once the boss activates
def TILE_BOSSDOOR equ 48 ; 0x30

; tile position (top left) to spawn the mob bro on odd numbered stages
def TILE_BOSSMOBBROPOSITION equ 49 ; 0x31

; the air block used (on contact) to start the boss fight
def TILE_BOSSAIRTRIGGER equ 50 ; 0x32

; O machine block part used in machine bosses
def TILE_BOSSMACHINEO equ 51 ; 0x33
; X machine block part used in machine bosses
def TILE_BOSSMACHINEX equ 52 ; 0x34

def TILE_UNUSED35 equ 53 ; 0x35

; that weird block that pushes a thing out on machine bosses
def TILE_BOSSMACHINEPUSHERRIGHT equ 54 ; 0x36
def TILE_BOSSMACHINEPUSHERLEFT equ 55 ; 0x37

; the 2x2 machine eye used in machine bosses (4 parts)
def TILE_BOSSMACHINEEYE1 equ 56 ; 0x38
def TILE_BOSSMACHINEEYE2 equ 57 ; 0x39
def TILE_BOSSMACHINEEYE3 equ 58 ; 0x3A
def TILE_BOSSMACHINEEYE4 equ 59 ; 0x3B

; machine boss long piece (horizontal)
def TILE_BOSSMACHINELONG equ 60 ; 0x3C

; machine boss long piece ender
def TILE_BOSSMACHINELONGENDER equ 61 ; 0x3D

; 1x2 machine boss thruster(?) thing (2 parts)
def TILE_BOSSMACHINETHRUSTER1 equ 62 ; 0x3E
def TILE_BOSSMACHINETHRUSTER2 equ 63 ; 0x3F

; the 2x2 machine wheel used in machine bosses (4 parts)
def TILE_BOSSMACHINEWHEEL1 equ 64 ; 0x40
def TILE_BOSSMACHINEWHEEL2 equ 65 ; 0x41
def TILE_BOSSMACHINEWHEEL3 equ 66 ; 0x42
def TILE_BOSSMACHINEWHEEL4 equ 67 ; 0x43

; 2x1 machine gun (2 parts)
def TILE_BOSSMACHINEGUN1 equ 68 ; 0x44
def TILE_BOSSMACHINEGUN2 equ 69 ; 0x45

; its just a rock
def TILE_BOSSROCK equ 70 ; 0x46

; life pickups that set specific flags (so you can't get them again)
def TILE_LIFEPICKUP_SETFLAG1 equ 71 ; 0x47
def TILE_LIFEPICKUP_SETFLAG2 equ 72 ; 0x48
def TILE_LIFEPICKUP_SETFLAG3 equ 73 ; 0x49
def TILE_LIFEPICKUP_SETFLAG4 equ 74 ; 0x4A
def TILE_LIFEPICKUP_SETFLAG5 equ 75 ; 0x4B
def TILE_LIFEPICKUP_SETFLAG6 equ 76 ; 0x4C
def TILE_LIFEPICKUP_SETFLAG7 equ 77 ; 0x4D

; demo stuff
; arguments: inputs, time_frames
; inputs the inputs or'd together
; time_frames the amount of time for this input in frames
MACRO demo_input
	db \1, \2
ENDM

def PADF_NONE equ 0 ; 0x0

; input
def INPUT_HOLD equ $9B ; held input poller at $FF9B
def INPUT_PRESS equ $9C ; press input poller at $FF9C

; actor stuff
def MAX_ACTORS equ 28 ; incredibly arbitrary, especially since the game will probably never try to process this many guys at once
def ACTOR_sizeof equ $20


; typedef struct Actor {
; 0x0 db effect;  probably a bit thing
; 0x1 db actorType; 2 == player
; 0x2 db framedef; is the frame for this actor. check bank 3 FRAME_DEFs. (*2) + FrameDefs2
; 0x3 db unk;
; 0x4 db screenX; position relative to top left of the screen (camera)
; 0x5 db screenY;
; 0x6 db userVariable; ?
;

;}Actor;

; player stuff
def STARTING_LIVES equ 5 ; self explanatory


; anim stuff
; as far as i know,
def ANIM_FRAME_Chalvo_Walk1 EQU 0
def ANIM_FRAME_Chalvo_Stand EQU 1
def ANIM_FRAME_Chalvo_Walk2 EQU 2
def ANIM_FRAME_Chalvo_BallUp EQU 3
def ANIM_FRAME_Chalvo_BallDown EQU 4
def ANIM_FRAME_Chalvo_BallDie EQU 5
def ANIM_FRAME_Chalvo_Fall EQU 6
def ANIM_FRAME_Chalvo_Die EQU 7
def ANIM_FRAME_Chalvo_Jump EQU 8
def ANIM_FRAME_Chalvo_Push1 EQU 9
def ANIM_FRAME_Stage_PushCart EQU $A
def ANIM_FRAME_Stage_SpringCart EQU $B
def ANIM_FRAME_Stage_MovingBlock EQU $C
def ANIM_FRAME_Chalvo_Push1_Copy EQU $D
def ANIM_FRAME_Chalvo_PushStand EQU $E
def ANIM_FRAME_Chalvo_Push2 EQU $F
def ANIM_FRAME_Chalvo_DashDust EQU $10
def ANIM_FRAME_Stage_OneHitEnemy1 EQU $11
def ANIM_FRAME_Stage_OneHitEnemy2 EQU $12
def ANIM_FRAME_Stage_OneHitEnemyDie EQU $13
def ANIM_FRAME_Stage_TwoHitEnemy1 EQU $14
def ANIM_FRAME_Stage_TwoHitEnemy2 EQU $15
def ANIM_FRAME_Stage_TwoHitEnemyDie EQU $16
def ANIM_FRAME_Stage_NoHitEnemy1 EQU $17
def ANIM_FRAME_Stage_NoHitEnemy2 EQU $18
def ANIM_FRAME_Stage_NoHitEnemyDie EQU $19
def ANIM_FRAME_Chalvo_Ouch EQU $1A
def ANIM_FRAME_Stage_SpringCart2 EQU $1B
def ANIM_FRAME_nothing EQU $1C
def ANIM_FRAME_Chalvo_PushSweat1 EQU $1D
def ANIM_FRAME_Chalvo_PushSweat2 EQU $1E

; each 'frame' is 4 bytes, half denoting time and the other denoting the frame
; negative ones are commands, otherwise it is the length of the 'frame' in cpu frames
def ANIM_COMMAND_STOP EQU $00ff
; loop(0) == infinite
def ANIM_COMMAND_LOOP EQU $00fe
def ANIM_COMMAND_INDEFINITE EQU $00fd


def MUSICID_stage1 equ 0
def MUSICID_stage2 equ 1
def MUSICID_stage3 equ 2
def MUSICID_stage4 equ 3
def MUSICID_stage5 equ 4
def MUSICID_stage6 equ 5
def MUSICID_stage7 equ 6
def MUSICID_stage8 equ 7
def MUSICID_boss_0 equ 8
def MUSICID_boss_1 equ 9
def MUSICID_boss_2 equ 10
def MUSICID_boss_3 equ 11
def MUSICID_boss_4 equ 12
def MUSICID_boss_5 equ 13
def MUSICID_boss_6 equ 14
def MUSICID_finalBoss equ 15
def MUSICID_die equ 16
def MUSICID_invincibility equ 17
def MUSICID_stageClear equ 18
def MUSICID_password equ 19
def MUSICID_ending equ 20
def MUSICID_unk1 equ 21
def MUSICID_gameOver equ 22
def MUSICID_title equ 23
def MUSICID_stageStart equ 24
def MUSICID_continue equ 25
def MUSICID_intro1 equ 26
def MUSICID_specialStage equ 27
def MUSICID_intro2 equ 28
def MUSICID_unk2 equ 29
def MUSICID_worldMap equ 30