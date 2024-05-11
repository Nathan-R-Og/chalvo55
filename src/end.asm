SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]
bank_img_stageTransition2:: INCBIN "gfx/bank_img_stageTransition2.2bpp"
bank_img_worldMap:: INCBIN "gfx/bank_img_worldMap.2bpp"
bank1dpad:: ds 8192; 0x2000

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]
INCLUDE "../src/stageUnk/stageUnk.asm"
bank1epad:: ds 16; 0x10. lmfao

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]
INCLUDE "../src/stageBoss/stageBoss.asm"
bank1fpad:: ds 4096; 0x1000