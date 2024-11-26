.segment1
db $fe, $e1
db $fd, $00
db $fc, $00
db $f3, $00

db $f1, $00, $00

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $00
db $f2, $11

db $80, $0c, $0c

db $f6, $0c

db $18, $30, $30

db $f6, $09

db $18, $30, $30

db $f6, $06

db $18, $30, $30

db $f6, $03

db $18, $30, $30
db $81
.segment2:
db $fc, $00
db $f3, $00

db $f1, $00, $00

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $01
db $f2, $22

db $80, $0c, $0c
db $80, $0c, $0c

db $f6, $09

db $18, $30, $30

db $f6, $06

db $18, $30, $30

db $f6, $03

db $18, $40, $40

db $f6, $01

db $18, $30, $30
db $81
.segment3:

db $f5, $d6, $22

db $f7, $60

db $f1, $00, $00

db $fb, $00
db $fa, $00
db $f9, $00
db $f8, $01
db $f2, $44

db $80, $0c, $0c
db $81
.segment4:
db $f6, $0d
db $f4, $df
db $f3, $07
db $fb, $fa
db $fa, $00
db $f9, $fa
db $f8, $00
db $f2, $88

db $80, $0c, $0c
db $81

