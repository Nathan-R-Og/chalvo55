IMAGE_DEPS = gfx/bank_img_stage1.2bpp gfx/bank_img_stage2.2bpp gfx/bank_img_stage3.2bpp gfx/bank_img_stage4.2bpp gfx/bank_img_stage5.2bpp gfx/bank_img_stage6.2bpp gfx/bank_img_stage7.2bpp gfx/bank_img_stage8.2bpp gfx/bank_img_stage1_boss.2bpp gfx/bank_img_stage2_boss.2bpp gfx/bank_img_stage3_boss.2bpp gfx/bank_img_stage4_boss.2bpp gfx/bank_img_stage5_boss.2bpp gfx/bank_img_stage6_boss.2bpp gfx/bank_img_stage7_boss.2bpp gfx/bank_img_stage8_boss.2bpp gfx/bank_img_title.2bpp gfx/bank_img_password.2bpp gfx/bank_img_stageTransition.2bpp gfx/bank_img_font.2bpp gfx/bank_img_levelMap.2bpp gfx/bank_img_unkMap.2bpp gfx/bank_img_intro1.2bpp gfx/bank_img_intro2.2bpp gfx/bank_img_ending.2bpp gfx/bank_img_jss.2bpp gfx/bank_img_stageTransition2.2bpp gfx/bank1dpad.2bpp gfx/bank_img_last.2bpp

all: game.gb

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

game.o: game.asm bank_*.asm $(IMAGE_DEPS)
	rgbasm --preserve-ld --nop-after-halt -o game.o game.asm

game.gb: game.o
	rgblink -n game.sym -m game.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f game.o game.gb game.sym game.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +