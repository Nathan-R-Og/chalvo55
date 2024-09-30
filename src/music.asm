;music commands are 2 bytes long. first is the command, next is the arg.
;exceptions to this are $f1, $ff, and $f5, which all take 3.
def MUSIC_CMD_PAN EQU $f2 ; bit flag. bit 0 == right, bit 4 == left. both == centered. two bools half half???
def MUSIC_CMD_FADE EQU $f3 ; fade mode, in, out, etc
def MUSIC_CMD_VOLUME EQU $f6 ; volume for each part, split between each half(?)
def MUSIC_CMD_DETUNE EQU $f8 ; very literal. unsigned, in cents(?). only can go up though
def MUSIC_CMD_UNK3 EQU $f9 ; ??
def MUSIC_CMD_UNK2 EQU $fa ; ??
def MUSIC_CMD_UNK EQU $fb ; ??
def MUSIC_CMD_WIDTH EQU $fc ; width of pulse
def MUSIC_CMD_LIMIT EQU $fd ; note limit???? needs more research
def MUSIC_CMD_TEMPO EQU $fe ; tempo is defined as higher numbers == more cycles per frame

;notes are 3 bytes long. defined as note/command, arg, arg2
;PLAY == note == pitch, arg == length/time, arg2 == hold,
;pitch is indexed from c0 == 0xc
;from here, each note is += 1
; so d0 == 0xd, c1 == 0x18, etc
; if arg2 is <= 0, it will perform a full hold. in other words, arg2 will == arg

def MUSIC_NOTE_LOOP EQU $FF ; arg == offset from ?, arg2 == ?
;could it just be one arg as a dw pointer?

;0x81 usually denotes a section/instrument end.

;TODO: cleanup asm's and get a player/editor working

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]
MUSIC_stage1:: INCLUDE "../src/music/stage1.asm" ;song 0
MUSIC_boss:: INCLUDE "../src/music/boss.asm" ;song 8 (goes till 14)
MUSIC_die:: INCLUDE "../src/music/die.asm" ;song 16
MUSIC_invincibility:: INCLUDE "../src/music/invincibility.asm" ;song 17
MUSIC_stageClear:: INCLUDE "../src/music/stageClear.asm" ;song 18
MUSIC_password:: INCLUDE "../src/music/password.asm" ;song 19
MUSIC_stage2:: INCLUDE "../src/music/stage2.asm" ;song 1
MUSIC_ending:: INCLUDE "../src/music/ending.asm" ;song 20
SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]
MUSIC_gameOver:: INCLUDE "../src/music/gameOver.asm" ;song 22
MUSIC_stage8:: INCLUDE "../src/music/stage8.asm" ;song 7
MUSIC_stage4:: INCLUDE "../src/music/stage4.asm" ;song 3
MUSIC_stage5:: INCLUDE "../src/music/stage5.asm" ;song 4
MUSIC_stage3:: INCLUDE "../src/music/stage3.asm" ;song 2
MUSIC_stage7:: INCLUDE "../src/music/stage7.asm" ;song 6
MUSIC_unk1:: INCLUDE "../src/music/unk1.asm" ;song 21
MUSIC_finalBoss:: INCLUDE "../src/music/finalBoss.asm" ;song 15
SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]
MUSIC_specialStage:: INCLUDE "../src/music/specialStage.asm" ;song 27
MUSIC_intro2:: INCLUDE "../src/music/intro2.asm" ;song 28
MUSIC_stageStart:: INCLUDE "../src/music/stageStart.asm" ;song 24
MUSIC_continue:: INCLUDE "../src/music/continue.asm" ;song 25
MUSIC_intro1:: INCLUDE "../src/music/intro1.asm" ;song 26
MUSIC_unk2:: INCLUDE "../src/music/unk2.asm" ;song 29
MUSIC_stage6:: INCLUDE "../src/music/stage6.asm" ;song 5
MUSIC_title:: INCLUDE "../src/music/title.asm" ;song 23
MUSIC_worldMap:: INCLUDE "../src/music/worldMap.asm" ;song 30