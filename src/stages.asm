SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

INCLUDE "../src/stage1/stage1.asm"

pad1:: ds 4232 ; 0x1088
INCLUDE "../src/demos/1.asm"
pad2:: ds 1712 ; 0x6B0
INCLUDE "../src/demos/2.asm"
pad3:: ds 1816 ; 0x718
INCLUDE "../src/demos/3.asm"
pad4:: ds 3616 ; 0xE20

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]
INCLUDE "../src/stage2/stage2.asm"
bank7pad:: ds 11632 ; 0x2D70

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]
INCLUDE "../src/stage3/stage3.asm"
bank8pad:: ds 11880 ; 0x2E68

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]
INCLUDE "../src/stage4/stage4.asm"
bank9pad:: ds 11896 ; 0x2E78

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]
INCLUDE "../src/stage5/stage5.asm"
bankApad:: ds 11632 ; 0x2D70

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]
INCLUDE "../src/stage6/stage6.asm"
bankBpad:: ds 11632 ; 0x2D70

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]
INCLUDE "../src/stage7/stage7.asm"
bankCpad:: ds 11632 ; 0x2D70

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]
INCLUDE "../src/stage8/stage8.asm"
bankDpad:: ds 11888 ; 0x2E70