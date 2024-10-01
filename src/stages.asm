SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

INCLUDE "../src/stage1/stage1.asm"

pad1:: ds $1088
INCLUDE "../src/demos/1.asm"
pad2:: ds $6B0
INCLUDE "../src/demos/2.asm"
pad3:: ds $718
INCLUDE "../src/demos/3.asm"

SECTION "Stage 2", ROMX[$4000], BANK[$7]
INCLUDE "../src/stage2/stage2.asm"
SECTION "Stage 3", ROMX[$4000], BANK[$8]
INCLUDE "../src/stage3/stage3.asm"
SECTION "Stage 4", ROMX[$4000], BANK[$9]
INCLUDE "../src/stage4/stage4.asm"
SECTION "Stage 5", ROMX[$4000], BANK[$a]
INCLUDE "../src/stage5/stage5.asm"
SECTION "Stage 6", ROMX[$4000], BANK[$b]
INCLUDE "../src/stage6/stage6.asm"
SECTION "Stage 7", ROMX[$4000], BANK[$c]
INCLUDE "../src/stage7/stage7.asm"
SECTION "Stage 8", ROMX[$4000], BANK[$d]
INCLUDE "../src/stage8/stage8.asm"