.segment1
db $fe, $dc
db $fd, $00
db $fc, $c0
db $f3, $05
db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $11
db $f6, $03

db $80, $0c, $0c
db $80, $18, $18
db $f1, $01, $06
.segment1_loop:
db $3d, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
db $3d, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
db $3c, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
db $3c, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
   music_jumpto .segment1_loop
db $81
.segment2:
db $fc, $c0
db $f3, $04
db $f6, $0d

db $f1, $01, $06

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $22

db $80, $0c, $0c
.segment2_loop:
db $3d, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
db $3d, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
db $3c, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
db $3c, $18, $18
db $80, $18, $18
db $40, $18, $18
db $80, $18, $18
db $39, $18, $18
db $80, $18, $18
db $3b, $18, $18
db $80, $18, $18
   music_jumpto .segment2_loop
db $81
.segment3:

db $f5, $86, $22

db $f7, $40
db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $44

db $80, $0c, $09
.segment3_loop:
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $19, $18, $ff
db $19, $0c, $09
db $19, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $14, $18, $ff
db $14, $0c, $09
db $14, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $19, $18, $ff
db $19, $0c, $09
db $19, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $14, $18, $ff
db $14, $0c, $09
db $14, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $18, $18, $ff
db $18, $0c, $09
db $18, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $13, $18, $ff
db $13, $0c, $09
db $13, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $18, $18, $ff
db $18, $0c, $09
db $18, $0c, $09
db $10, $18, $ff
db $10, $0c, $09
db $10, $0c, $09
db $13, $18, $ff
db $13, $0c, $09
db $13, $0c, $09
   music_jumpto .segment3_loop
db $81
.segment4:

db $80, $c0, $c0
db $81

