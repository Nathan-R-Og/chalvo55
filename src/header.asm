; $0000 - $003F: RST handlers.
;each 0x8 in size
RST_00::
    jp Jump_000_0377
    nop
    nop
    nop
    nop
    nop
RST_08::
    jp $f080
Call_000_000b:
    nop
    nop
    nop
    nop
    nop
RST_10::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
RST_18::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
RST_20::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
RST_28::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
RST_30::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
RST_38::
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_0238
    nop
    nop
    nop
    nop
    nop
LCDCInterrupt::
    jp Jump_000_2f43
    nop
    nop
    nop
    nop
    nop
TimerOverflowInterrupt::
    jp Jump_000_0c10
    nop
    nop
    nop
    nop
    nop
SerialTransferCompleteInterrupt::
    reti
    nop
    nop
    nop
    nop
    nop
    nop
    nop
JoypadTransitionInterrupt::
    reti
    nop
    nop
    nop
    nop
    nop
    nop
    nop

ds $98

Boot::
    nop
    jp code_boot

HeaderLogo::
    NINTENDO_LOGO

HeaderTitle::
    db "CHALVO55"
    ds 3

HeaderManufacturerCode::
    ds 4

HeaderGBCFlag::
    db CART_COMPATIBLE_DMG

HeaderNewLicenseeCode::
    db "8K"

HeaderSGBFlag::
    db CART_INDICATOR_GB

HeaderCartridgeType::
    db CART_ROM_MBC1

HeaderROMSize::
    db CART_ROM_512KB

HeaderRAMSize::
    db CART_SRAM_NONE

HeaderDestinationCode::
    db CART_DEST_JAPANESE

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $05

HeaderGlobalChecksum::
    db $a7, $aa