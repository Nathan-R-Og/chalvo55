.segment1
db $fe, $d2
db $fd, $00
db $fc, $00
db $f3, $00
db $f6, $0b

db $f1, $02, $06

db $fb, $02
db $fa, $1f
db $f9, $08
db $f8, $00
db $f2, $11

db $80, $0c, $0a
.segment1_loop:
db $34, $0c, $0a
db $34, $0c, $0a
db $34, $0c, $0a
db $34, $30, $2a
db $30, $0c, $0a
db $30, $0c, $0a
db $34, $0c, $0a
db $30, $0c, $0a
db $34, $0c, $0a
db $37, $0c, $0a
db $37, $0c, $0a
db $37, $0c, $0a
db $37, $0c, $ff
db $37, $30, $ff
db $37, $0c, $0a
db $37, $0c, $0a
db $36, $0c, $0a
db $35, $0c, $0a
   music_jumpto .segment1_loop
db $81
.segment2:
db $fc, $00
db $f3, $00
db $f6, $0c

db $f1, $02, $06

db $fb, $02
db $fa, $1f
db $f9, $08
db $f8, $00
db $f2, $22

db $80, $0c, $0a
.segment2_loop:
db $37, $0c, $0a
db $37, $0c, $0a
db $37, $0c, $0a
db $37, $30, $2a
db $2b, $0c, $0a
db $34, $0c, $0a
db $37, $0c, $0a
db $34, $0c, $0a
db $37, $0c, $0a
db $3a, $0c, $0a
db $3a, $0c, $0a
db $3a, $0c, $0a
db $3a, $0c, $ff
db $3a, $30, $ff
db $3a, $0c, $0a
db $3a, $0c, $0a
db $39, $0c, $0a
db $38, $0c, $0a
   music_jumpto .segment2_loop
db $81
.segment3:

db $f5, $b6, $22

db $f7, $60

db $f1, $01, $01

db $fb, $02
db $fa, $1f
db $f9, $08
db $f8, $01
db $f2, $44

db $80, $0c, $0a
.segment3_loop:
db $43, $0c, $0a
db $43, $0c, $0a
db $43, $0c, $0a
db $43, $30, $2a
db $37, $0c, $0a
db $40, $0c, $0a
db $43, $0c, $0a
db $40, $0c, $0a
db $43, $0c, $0a
db $46, $0c, $0a
db $46, $0c, $0a
db $46, $0c, $0a
db $46, $0c, $ff
db $46, $30, $ff
db $46, $0c, $0a
db $46, $0c, $0a
db $45, $0c, $0a
db $44, $0c, $0a
   music_jumpto .segment3_loop
db $81
.segment4:
db $f6, $0a
db $f4, $df
db $f3, $01
db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $88

db $80, $0c, $0c
.segment4_loop:
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $06, $06
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
db $30, $0c, $0c
   music_jumpto .segment4_loop
db $81

