SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]
bank_img_stageTransition2:: INCBIN "gfx/bank_img_stageTransition2.2bpp"
bank_img_worldMap:: INCBIN "gfx/bank_img_worldMap.2bpp"

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]
INCLUDE "../src/specialStage/specialStage.asm"

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]
INCLUDE "../src/stageBoss/stageBoss.asm"