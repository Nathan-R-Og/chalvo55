; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

bank_img_stage1::
    INCBIN "gfx/bank_img_stage1.2bpp"

bank_img_stage2::
    INCBIN "gfx/bank_img_stage2.2bpp"

bank_img_stage3::
    INCBIN "gfx/bank_img_stage3.2bpp"

bank_img_stage4::
    INCBIN "gfx/bank_img_stage4.2bpp"
