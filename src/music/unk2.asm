.segment1
db $fe, $de
db $fd, $00
db $f2, $11
db $f6, $0b
db $f3, $05

db $f1, $00, $00

db $fc, $40
db $fb, $00
db $fa, $00
db $f9, $00

db $80, $0c, $09
.segment1_loop:
db $18, $18, $12
db $80, $18, $12
db $13, $18, $ff
db $13, $0c, $09
db $18, $0c, $09
db $80, $18, $12
db $18, $18, $12
db $13, $30, $24
db $15, $18, $12
db $80, $18, $12
db $10, $18, $ff
db $10, $0c, $09
db $15, $0c, $09
db $80, $18, $12
db $15, $18, $12
db $10, $30, $24
db $11, $18, $12
db $80, $18, $12
db $0c, $18, $ff
db $0c, $0c, $09
db $11, $0c, $09
db $80, $18, $12
db $11, $18, $12
db $0c, $30, $24
db $13, $18, $12
db $80, $18, $12
db $0e, $18, $ff
db $0e, $0c, $09
db $13, $0c, $09
db $80, $18, $12
db $13, $18, $12
db $0e, $30, $24
db $18, $18, $12
db $80, $18, $12
db $13, $18, $ff
db $13, $0c, $09
db $18, $0c, $09
db $80, $18, $12
db $18, $18, $12
db $13, $30, $24
db $15, $18, $12
db $80, $18, $12
db $10, $18, $ff
db $10, $0c, $09
db $15, $0c, $09
db $80, $18, $12
db $15, $18, $12
db $10, $30, $24
db $11, $18, $12
db $80, $18, $12
db $0c, $18, $ff
db $0c, $0c, $09
db $11, $0c, $09
db $80, $18, $12
db $13, $18, $12
db $0e, $30, $24
db $18, $18, $12
db $80, $18, $12
db $13, $18, $ff
db $13, $0c, $09
db $18, $0c, $09
db $80, $18, $12
db $18, $18, $12
db $13, $18, $ff
db $13, $0c, $09
db $18, $0c, $09
db $11, $18, $12
db $80, $18, $12
db $0c, $18, $ff
db $0c, $0c, $09
db $11, $0c, $09
db $80, $18, $12
db $11, $18, $12
db $0c, $30, $24
db $18, $18, $12
db $80, $18, $12
db $13, $18, $ff
db $13, $0c, $09
db $18, $0c, $09
db $80, $18, $12
db $18, $18, $12
db $13, $30, $24
db $11, $18, $12
db $80, $18, $12
db $0c, $18, $ff
db $0c, $0c, $09
db $11, $0c, $09
db $80, $18, $12
db $13, $18, $12
db $0e, $30, $24
db $18, $18, $12
db $80, $18, $12
db $13, $18, $ff
db $13, $0c, $09
db $18, $0c, $09
db $80, $18, $12
db $18, $18, $12
db $17, $30, $24
db $15, $18, $12
db $80, $18, $12
db $10, $18, $ff
db $10, $0c, $09
db $15, $0c, $09
db $80, $18, $12
db $15, $18, $12
db $10, $30, $24
db $11, $18, $12
db $80, $18, $12
db $0c, $18, $ff
db $0c, $0c, $09
db $11, $0c, $09
db $80, $18, $12
db $11, $18, $12
db $0c, $30, $24
db $13, $18, $12
db $80, $18, $12
db $0e, $18, $ff
db $0e, $0c, $09
db $13, $0c, $09
db $80, $18, $12
db $13, $18, $12
db $0e, $30, $24
db $13, $18, $12
db $80, $18, $12
db $0e, $18, $ff
db $0e, $0c, $09
db $13, $0c, $09
db $80, $18, $12
db $13, $18, $12
db $0e, $18, $ff
db $0e, $0c, $09
db $13, $0c, $09
   music_jumpto .segment1_loop
db $81
.segment2:
db $f8, $00
db $f2, $22
db $f6, $0b

db $f1, $00, $00

db $f3, $02
db $fc, $40
db $fb, $00
db $fa, $00
db $f9, $00

db $80, $0c, $0c
.segment2_loop:
db $2b, $18, $18
db $2b, $18, $18
db $2b, $18, $ff
db $2b, $0c, $0c
db $2b, $0c, $ff
db $2b, $18, $18
db $2b, $18, $18
db $2b, $18, $ff
db $2b, $0c, $0c
db $2b, $0c, $0c
db $28, $18, $18
db $28, $18, $18
db $28, $18, $ff
db $28, $0c, $0c
db $28, $0c, $ff
db $28, $18, $18
db $28, $18, $18
db $28, $18, $ff
db $28, $0c, $0c
db $28, $0c, $0c
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $2d, $0c, $ff
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $2d, $0c, $0c
db $2f, $18, $18
db $2f, $18, $18
db $2f, $18, $ff
db $2f, $0c, $0c
db $2f, $0c, $ff
db $2f, $18, $18
db $2f, $18, $18
db $2f, $18, $ff
db $2f, $0c, $0c
db $2f, $0c, $0c
db $2b, $18, $18
db $2b, $18, $18
db $2b, $18, $ff
db $2b, $0c, $0c
db $2b, $0c, $ff
db $2b, $18, $18
db $2b, $18, $18
db $2b, $18, $ff
db $2b, $0c, $0c
db $2b, $0c, $0c
db $28, $18, $18
db $28, $18, $18
db $28, $18, $ff
db $28, $0c, $0c
db $28, $0c, $ff
db $28, $18, $18
db $28, $18, $18
db $28, $18, $ff
db $28, $0c, $0c
db $28, $0c, $0c
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $26, $0c, $ff
db $26, $18, $18
db $26, $18, $18
db $26, $18, $ff
db $26, $0c, $0c
db $26, $0c, $0c
db $29, $18, $18
db $2b, $18, $18
db $30, $18, $ff
db $30, $0c, $0c
db $28, $0c, $ff
db $28, $18, $18
db $2b, $18, $18
db $30, $18, $ff
db $30, $0c, $0c
db $28, $0c, $0c
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $2d, $0c, $ff
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $2d, $0c, $0c
db $2b, $18, $18
db $2b, $18, $18
db $2b, $18, $ff
db $2b, $0c, $0c
db $2b, $0c, $ff
db $2b, $18, $18
db $2b, $18, $18
db $2b, $18, $ff
db $2b, $0c, $0c
db $2b, $0c, $0c
db $24, $18, $18
db $24, $18, $18
db $24, $18, $ff
db $24, $0c, $0c
db $26, $0c, $ff
db $26, $18, $18
db $26, $18, $18
db $26, $18, $ff
db $26, $0c, $0c
db $26, $0c, $0c
db $28, $18, $18
db $28, $18, $18
db $28, $18, $ff
db $28, $0c, $0c
db $28, $0c, $ff
db $28, $18, $18
db $28, $18, $18
db $26, $18, $ff
db $26, $0c, $0c
db $26, $0c, $0c
db $24, $18, $18
db $24, $18, $18
db $24, $18, $ff
db $24, $0c, $0c
db $24, $0c, $ff
db $24, $18, $18
db $24, $18, $18
db $24, $18, $ff
db $24, $0c, $0c
db $24, $0c, $0c
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $2d, $0c, $ff
db $2d, $18, $18
db $2d, $18, $18
db $2d, $18, $ff
db $2d, $0c, $0c
db $2d, $0c, $0c
db $2f, $18, $18
db $2f, $18, $18
db $2f, $18, $ff
db $2f, $0c, $0c
db $2f, $0c, $ff
db $2f, $18, $18
db $2f, $18, $18
db $2f, $18, $ff
db $2f, $0c, $0c
db $2f, $0c, $0c
db $30, $18, $18
db $32, $18, $18
db $37, $18, $ff
db $37, $0c, $0c
db $2f, $0c, $ff
db $2f, $18, $18
db $32, $18, $18
db $37, $18, $ff
db $37, $0c, $0c
db $2f, $0c, $0c
   music_jumpto .segment2_loop
db $81
.segment3:

db $f5, $86, $22

db $f7, $20

db $f1, $01, $12

db $fb, $03
db $fa, $26
db $f9, $08
db $f8, $00
db $f2, $44

db $80, $0c, $0a
.segment3_loop:
db $30, $18, $15
db $30, $18, $15
db $30, $18, $15
db $30, $0c, $0a
db $30, $0c, $ff
db $30, $18, $15
db $2f, $18, $15
db $2d, $18, $15
db $30, $18, $15
db $2d, $18, $15
db $2d, $18, $15
db $2d, $18, $15
db $2d, $0c, $0a
db $28, $0c, $ff
db $28, $60, $54
db $29, $18, $15
db $29, $18, $15
db $29, $18, $15
db $29, $0c, $0a
db $29, $0c, $ff
db $29, $18, $15
db $28, $18, $15
db $24, $18, $15
db $29, $18, $15
db $26, $30, $ff
db $26, $18, $15
db $28, $0c, $0a
db $29, $0c, $0a
db $2b, $60, $54
db $30, $18, $15
db $30, $18, $15
db $30, $18, $15
db $30, $0c, $0a
db $30, $0c, $ff
db $30, $18, $15
db $2f, $18, $15
db $2d, $18, $15
db $30, $18, $15
db $2d, $18, $15
db $2d, $18, $15
db $2d, $18, $15
db $2d, $0c, $0a
db $28, $0c, $ff
db $28, $60, $54
db $29, $18, $15
db $29, $18, $15
db $29, $18, $15
db $29, $0c, $0a
db $2f, $0c, $ff
db $2f, $18, $15
db $2d, $18, $15
db $2d, $18, $15
db $2f, $18, $15
db $30, $c0, $a8
db $30, $18, $15
db $30, $18, $15
db $30, $18, $15
db $2f, $0c, $0a
db $30, $0c, $ff
db $30, $60, $54
db $32, $18, $15
db $32, $18, $15
db $34, $18, $15
db $32, $0c, $0a
db $30, $0c, $ff
db $30, $30, $2a
db $2b, $30, $2a
db $2d, $18, $15
db $2d, $18, $15
db $2d, $18, $15
db $2f, $0c, $0a
db $30, $0c, $ff
db $30, $18, $15
db $2f, $18, $15
db $2f, $18, $ff
db $2f, $0c, $0a
db $30, $0c, $0a
db $2d, $18, $ff
db $2d, $0c, $0a
db $2b, $0c, $ff
db $2b, $30, $ff
db $2b, $30, $2a
db $29, $30, $2a
db $28, $60, $54
db $28, $18, $15
db $2d, $18, $15
db $2f, $18, $15
db $30, $18, $15
db $35, $30, $2a
db $34, $18, $ff
db $34, $0c, $0a
db $30, $0c, $ff
db $30, $30, $ff
db $30, $18, $15
db $30, $0c, $0a
db $31, $0c, $0a
db $32, $60, $ff
db $32, $30, $ff
db $32, $18, $15
db $34, $0c, $0a
db $35, $0c, $0a
db $37, $c0, $a8
   music_jumpto .segment3_loop
db $81
.segment4:
db $f6, $0b
db $f4, $df
db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $88

db $80, $0c, $0c
.segment4_loop:

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $1f, $0c, $0a

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $18, $12

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $30, $18, $06

db $f3, $01

db $30, $0c, $01
db $30, $0c, $01

db $f3, $02

db $1f, $18, $12

db $f3, $01

db $30, $0c, $01

db $f3, $02

db $30, $0c, $03
db $80, $18, $06
db $30, $18, $06
db $1f, $0c, $09
db $1f, $0c, $09
db $1f, $0c, $09
db $1f, $0c, $09
   music_jumpto .segment4_loop
db $81

