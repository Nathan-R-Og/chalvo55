.segment1
db $fe, $dc
db $fd, $00
db $fc, $c0
db $f3, $03
db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $11
db $f6, $08

db $80, $0c, $0c
db $f1, $01, $06
.segment1_loop:
db $39, $0c, $0c
db $3c, $0c, $0c
db $3f, $0c, $0c
db $43, $0c, $0c
db $3f, $0c, $0c
db $43, $0c, $0c
db $3f, $0c, $0c
db $3c, $0c, $0c
db $3f, $0c, $0c
db $3c, $0c, $0c
db $39, $0c, $0c
db $3c, $0c, $0c
   music_jumpto .segment1_loop
db $81
.segment2:
db $fc, $c0
db $f3, $03
db $f6, $0a

db $f1, $01, $06

db $fb, $0a
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $22

db $80, $0c, $0c
.segment2_loop:
db $30, $0c, $0c
db $35, $0c, $0c
db $39, $0c, $0c
db $3c, $0c, $0c
db $39, $0c, $0c
db $3c, $0c, $0c
db $39, $0c, $0c
db $35, $0c, $0c
db $39, $0c, $0c
db $35, $0c, $0c
db $30, $0c, $0c
db $35, $0c, $0c
   music_jumpto .segment2_loop
db $81
.segment3:

db $f5, $86, $22

db $f7, $40

db $f1, $01, $06

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $44

db $80, $0c, $0c
.segment3_loop:
db $29, $0c, $0c
db $2d, $0c, $0c
db $30, $0c, $0c
db $33, $0c, $0c
db $30, $0c, $0c
db $33, $0c, $0c
db $30, $0c, $0c
db $2d, $0c, $0c
db $30, $0c, $0c
db $2d, $0c, $0c
db $29, $0c, $0c
   music_jumpto .segment3_loop
db $81
.segment4:

db $80, $c0, $c0
db $81

