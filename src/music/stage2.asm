.segment1
db $fe, $dc
db $fd, $00
db $fc, $40
db $f3, $05
db $f6, $0b

db $f1, $01, $04

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $11

db $80, $30, $24
.segment1_loop:
db $18, $30, $24
db $13, $18, $ff
db $13, $0c, $09
db $18, $18, $12
db $18, $0c, $09
db $13, $18, $12
db $10, $18, $12
db $13, $18, $12
db $15, $30, $24
db $10, $18, $ff
db $10, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1a, $30, $24
db $15, $18, $ff
db $15, $0c, $09
db $1a, $18, $12
db $1a, $0c, $09
db $18, $18, $12
db $17, $18, $12
db $15, $18, $12
db $13, $30, $24
db $13, $18, $ff
db $13, $0c, $09
db $13, $18, $12
db $13, $0c, $09
db $15, $18, $12
db $16, $18, $12
db $17, $18, $12
db $1c, $30, $24
db $16, $18, $ff
db $16, $0c, $09
db $1c, $18, $12
db $1c, $0c, $09
db $1a, $18, $12
db $19, $18, $12
db $16, $18, $12
db $15, $30, $24
db $10, $18, $ff
db $10, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1a, $30, $24
db $15, $18, $ff
db $15, $0c, $09
db $1a, $18, $12
db $1a, $0c, $09
db $18, $18, $12
db $17, $18, $12
db $15, $18, $12
db $13, $30, $24
db $1a, $30, $24
db $16, $30, $24
db $1d, $30, $24
db $18, $30, $24
db $13, $18, $ff
db $13, $0c, $09
db $18, $18, $12
db $18, $0c, $09
db $13, $18, $12
db $10, $18, $12
db $13, $18, $12
db $15, $30, $24
db $10, $18, $ff
db $10, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1a, $30, $24
db $15, $18, $ff
db $15, $0c, $09
db $1a, $18, $12
db $1a, $0c, $09
db $18, $18, $12
db $17, $18, $12
db $15, $18, $12
db $13, $30, $24
db $13, $18, $ff
db $13, $0c, $09
db $13, $18, $12
db $13, $0c, $09
db $15, $18, $12
db $16, $18, $12
db $17, $18, $12
db $1c, $30, $24
db $16, $18, $ff
db $16, $0c, $09
db $1c, $18, $12
db $1c, $0c, $09
db $1a, $18, $12
db $19, $18, $12
db $16, $18, $12
db $15, $30, $24
db $10, $18, $ff
db $10, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1a, $30, $24
db $15, $18, $ff
db $15, $0c, $09
db $13, $18, $12
db $13, $0c, $09
db $15, $18, $12
db $16, $18, $12
db $17, $18, $12
db $80, $18, $12
db $1a, $18, $ff
db $1a, $0c, $09
db $19, $18, $ff
db $19, $0c, $09
db $18, $18, $12
db $18, $18, $12
db $13, $18, $12
db $18, $18, $12
db $1a, $30, $24
db $15, $18, $ff
db $15, $0c, $09
db $13, $18, $12
db $13, $0c, $09
db $15, $18, $12
db $16, $18, $12
db $17, $18, $12
db $1c, $30, $24
db $17, $18, $ff
db $17, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1e, $30, $24
db $18, $18, $ff
db $18, $0c, $09
db $17, $18, $12
db $17, $0c, $09
db $18, $18, $12
db $1a, $18, $12
db $1b, $18, $12
db $1c, $30, $24
db $16, $18, $ff
db $16, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1a, $30, $24
db $15, $18, $ff
db $15, $0c, $09
db $13, $18, $12
db $13, $0c, $09
db $15, $18, $12
db $16, $18, $12
db $17, $18, $12
db $1c, $30, $24
db $17, $18, $ff
db $17, $0c, $09
db $15, $18, $12
db $15, $0c, $09
db $17, $18, $12
db $18, $18, $12
db $19, $18, $12
db $1e, $30, $24
db $18, $18, $ff
db $18, $0c, $09
db $17, $18, $12
db $17, $0c, $09
db $18, $18, $12
db $1a, $18, $12
db $1b, $18, $12
db $1c, $30, $24
db $19, $30, $24
db $1a, $30, $24
db $13, $30, $24
   music_jumpto .segment1_loop
db $81
.segment2:
db $fc, $80
db $f3, $04
db $f6, $0d

db $f1, $02, $06

db $fb, $02
db $fa, $2a
db $f9, $08
db $f8, $00
db $f2, $22

db $80, $30, $30
.segment2_loop:
db $34, $18, $18
db $2b, $18, $18
db $34, $18, $18
db $34, $0c, $0c
db $35, $18, $ff
db $35, $0c, $0c
db $34, $18, $18
db $32, $18, $18
db $30, $18, $18
db $2f, $18, $18
db $30, $18, $18
db $2f, $18, $18
db $2d, $30, $30
db $32, $18, $ff
db $32, $0c, $0c
db $34, $18, $ff
db $34, $0c, $0c
db $35, $18, $18
db $2d, $18, $18
db $35, $18, $18
db $35, $0c, $0c
db $37, $18, $ff
db $37, $0c, $0c
db $35, $18, $18
db $34, $18, $18
db $32, $18, $18
db $30, $18, $18
db $2f, $18, $18
db $30, $18, $18
db $32, $30, $30
db $34, $18, $ff
db $34, $0c, $0c
db $35, $18, $ff
db $35, $0c, $0c
db $37, $18, $18
db $2e, $18, $18
db $37, $18, $18
db $37, $0c, $0c
db $39, $18, $ff
db $39, $0c, $0c
db $37, $18, $18
db $35, $18, $18
db $34, $18, $18
db $32, $18, $18
db $34, $18, $18
db $32, $18, $18
db $31, $30, $30
db $34, $18, $ff
db $34, $0c, $0c
db $37, $18, $ff
db $37, $0c, $0c
db $37, $18, $18
db $35, $18, $18
db $35, $18, $18
db $34, $0c, $0c
db $34, $18, $ff
db $34, $0c, $0c
db $32, $18, $18
db $32, $18, $18
db $2d, $18, $18
db $30, $30, $30
db $2f, $30, $30
db $30, $30, $30
db $32, $30, $30
db $34, $18, $18
db $2b, $18, $18
db $34, $18, $18
db $34, $0c, $0c
db $35, $18, $ff
db $35, $0c, $0c
db $34, $18, $18
db $32, $18, $18
db $30, $18, $18
db $2f, $18, $18
db $30, $18, $18
db $2f, $18, $18
db $2d, $30, $30
db $32, $18, $ff
db $32, $0c, $0c
db $34, $18, $ff
db $34, $0c, $0c
db $35, $18, $18
db $2d, $18, $18
db $35, $18, $18
db $35, $0c, $0c
db $37, $18, $ff
db $37, $0c, $0c
db $35, $18, $18
db $34, $18, $18
db $32, $18, $18
db $30, $18, $18
db $2f, $18, $18
db $30, $18, $18
db $32, $30, $30
db $34, $18, $ff
db $34, $0c, $0c
db $35, $18, $ff
db $35, $0c, $0c
db $37, $18, $18
db $2e, $18, $18
db $37, $18, $18
db $37, $0c, $0c
db $39, $18, $ff
db $39, $0c, $0c
db $37, $18, $18
db $35, $18, $18
db $34, $18, $18
db $32, $18, $18
db $34, $18, $18
db $32, $18, $18
db $31, $30, $30
db $34, $18, $ff
db $34, $0c, $0c
db $37, $18, $ff
db $37, $0c, $0c
db $37, $18, $18
db $35, $18, $18
db $35, $18, $18
db $2d, $0c, $0c
db $30, $18, $ff
db $30, $0c, $0c
db $2f, $18, $18
db $2d, $18, $18
db $2f, $18, $18
db $80, $18, $18
db $30, $18, $ff
db $30, $0c, $0c
db $30, $18, $ff
db $30, $0c, $0c
db $30, $18, $18
db $30, $18, $18
db $32, $18, $18
db $34, $18, $18
db $35, $18, $18
db $34, $18, $18
db $35, $18, $18
db $35, $0c, $0c
db $32, $18, $ff
db $32, $0c, $0c
db $32, $18, $18
db $34, $18, $18
db $35, $18, $18
db $37, $18, $18
db $36, $18, $18
db $37, $18, $18
db $37, $0c, $0c
db $34, $18, $ff
db $34, $0c, $0c
db $34, $18, $18
db $36, $18, $18
db $37, $18, $18
db $39, $18, $18
db $38, $18, $18
db $39, $18, $18
db $39, $0c, $0c
db $36, $18, $ff
db $36, $0c, $0c
db $36, $18, $18
db $3b, $18, $18
db $39, $18, $18
db $37, $18, $18
db $36, $18, $18
db $37, $18, $18
db $39, $30, $30
db $37, $18, $ff
db $37, $0c, $0c
db $34, $18, $ff
db $34, $0c, $0c
db $35, $18, $18
db $34, $18, $18
db $35, $18, $18
db $35, $0c, $0c
db $32, $18, $ff
db $32, $0c, $0c
db $32, $18, $18
db $34, $18, $18
db $35, $18, $18
db $37, $18, $18
db $36, $18, $18
db $37, $18, $18
db $37, $0c, $0c
db $34, $18, $ff
db $34, $0c, $0c
db $34, $18, $18
db $36, $18, $18
db $37, $18, $18
db $39, $18, $18
db $38, $18, $18
db $39, $18, $18
db $39, $0c, $0c
db $36, $18, $ff
db $36, $0c, $0c
db $36, $18, $18
db $3b, $18, $18
db $39, $18, $18
db $37, $18, $18
db $36, $18, $18
db $37, $18, $18
db $39, $30, $30
db $35, $18, $ff
db $35, $0c, $0c
db $32, $18, $ff
db $32, $0c, $0c
   music_jumpto .segment2_loop
db $81
.segment3:

db $f5, $76, $22

db $f7, $20

db $f1, $01, $02

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $44

db $80, $30, $12
.segment3_loop:
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3c, $18, $09
db $35, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $35, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $3b, $18, $09
db $35, $0c, $04
db $3b, $18, $09
db $3b, $0c, $04
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $3a, $18, $09
db $34, $18, $09
db $3a, $18, $09
db $34, $0c, $04
db $3a, $18, $09
db $3a, $0c, $04
db $34, $18, $09
db $3a, $18, $09
db $34, $18, $09
db $3e, $18, $09
db $34, $18, $09
db $3e, $18, $09
db $34, $0c, $04
db $3d, $18, $09
db $3d, $0c, $04
db $34, $18, $09
db $3d, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3c, $18, $09
db $35, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $35, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $37, $30, $12
db $35, $30, $12
db $3a, $30, $12
db $38, $30, $12
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3c, $18, $09
db $35, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $35, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $3b, $18, $09
db $35, $0c, $04
db $3b, $18, $09
db $3b, $0c, $04
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $3a, $18, $09
db $34, $18, $09
db $3a, $18, $09
db $34, $0c, $04
db $3a, $18, $09
db $3a, $0c, $04
db $34, $18, $09
db $3a, $18, $09
db $34, $18, $09
db $3e, $18, $09
db $34, $18, $09
db $3e, $18, $09
db $34, $0c, $04
db $3d, $18, $09
db $3d, $0c, $04
db $34, $18, $09
db $3d, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3c, $18, $09
db $35, $0c, $04
db $3b, $18, $09
db $3b, $0c, $04
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $80, $18, $09
db $32, $18, $ff
db $32, $0c, $04
db $31, $18, $ff
db $31, $0c, $04
db $30, $60, $24
db $3c, $18, $09
db $35, $18, $09
db $3c, $18, $09
db $35, $0c, $04
db $3b, $18, $09
db $3b, $0c, $04
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $3b, $18, $09
db $34, $18, $09
db $3b, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $40, $18, $09
db $36, $18, $09
db $40, $18, $09
db $36, $0c, $04
db $3f, $18, $09
db $3f, $0c, $04
db $36, $18, $09
db $3f, $18, $09
db $36, $18, $09
db $3e, $18, $09
db $34, $18, $09
db $3e, $18, $09
db $34, $0c, $04
db $3d, $18, $09
db $3d, $0c, $04
db $34, $18, $09
db $3d, $18, $09
db $34, $18, $09
db $3c, $18, $09
db $35, $18, $09
db $3c, $18, $09
db $35, $0c, $04
db $3b, $18, $09
db $3b, $0c, $04
db $35, $18, $09
db $3b, $18, $09
db $35, $18, $09
db $3b, $18, $09
db $34, $18, $09
db $3b, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $34, $18, $09
db $3c, $18, $09
db $34, $18, $09
db $40, $18, $09
db $36, $18, $09
db $40, $18, $09
db $36, $0c, $04
db $3f, $18, $09
db $3f, $0c, $04
db $36, $18, $09
db $3f, $18, $09
db $36, $18, $09
db $3e, $18, $09
db $34, $18, $09
db $3d, $18, $09
db $34, $0c, $04
db $3c, $18, $09
db $3c, $0c, $04
db $35, $18, $09
db $3b, $18, $09
db $32, $18, $09
   music_jumpto .segment3_loop
db $81
.segment4:
db $f6, $0b
db $f4, $df
db $f3, $01
db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $88

db $80, $30, $30
.segment4_loop:

db $f6, $0b

db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $80, $18, $15
db $30, $18, $ff
db $30, $0c, $0a
db $30, $18, $ff
db $30, $0c, $0a
db $30, $30, $2a
db $80, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $18, $03
db $80, $18, $03
db $30, $18, $ff
db $30, $0c, $0a
db $30, $0c, $01
db $80, $18, $03
db $30, $18, $03
db $30, $30, $2a
db $30, $30, $2a
db $30, $30, $2a
db $30, $30, $2a

db $f6, $0c

db $30, $0c, $0a
db $30, $0c, $0a

db $f6, $0d

db $30, $0c, $0a
db $30, $0c, $0a
   music_jumpto .segment4_loop
db $81

