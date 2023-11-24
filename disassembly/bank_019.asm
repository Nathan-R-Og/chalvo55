; Disassembly of "chalvo.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

bank_img_intro1::
    INCBIN "gfx/bank_img_intro1.2bpp"

bank_img_intro2::
    INCBIN "gfx/bank_img_intro2.2bpp"

bank_img_ending::
    INCBIN "gfx/bank_img_ending.2bpp"

bank_img_jss::
    INCBIN "gfx/bank_img_jss.2bpp"
