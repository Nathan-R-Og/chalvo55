; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

bank_img_title::
    INCBIN "gfx/bank_img_title.2bpp"

bank_img_password::
    INCBIN "gfx/bank_img_password.2bpp"

bank_img_stageTransition::
    INCBIN "gfx/bank_img_stageTransition.2bpp"

bank_img_font::
    INCBIN "gfx/bank_img_font.2bpp"
