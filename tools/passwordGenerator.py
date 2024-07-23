import itertools
#this is a script that passes every iteration/permutation/combination of the avaialable password letters in Chalvo 55
#through a modern day equivalent of the password checking asm (CheckPassword_ValidStage)
#the only actual checks are flags z and c, everything else is just calculations
#any passwords generated from this script must and will be usable with a vanilla Chalvo 55 rom
#the variable names are also taken straight from asm, so consider this a py version of that exact asm

x = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T"]
list = []

def parseWord(array):
    #convert each to half-byte hex
    ids = []
    for char in array:
        ids.append(x.index(char.upper()))
    
    hl = 0
    a = ids[hl]
    hl += 1
    a += ids[hl]
    hl += 1
    a += ids[hl]
    hl += 1
    a += ids[hl]
    hl += 1
    b = a

    #swap
    a <<= 4
    TEMPFLIP = (a & 0xf00) >> 8
    a = (a & 0xf0) + TEMPFLIP
	
    a &= 0xf

    #CHECK 1
    z_ = ids[hl] == a
    if not z_:
        return
    
    hl += 1
    a = b
    a &= 0xf

    #CHECK 2
    z_ = ids[hl] == a
    if not z_:
        return
    
    hl = 0
    a = ids[hl]
    hl += 1
    c = a
    a ^= ids[hl]
    hl += 1

    #CHECK 3
    c_ = a < 0x08
    if not c_:
        return
    
    #CHECK 4
    z_ = a == 0
    if z_:
        return
    
    #technically, the stage calculation ends here.
    #however, to actually LOAD it, it goes through one more check
    stage = a+1

    a = c
    a ^= ids[hl]
    hl += 1
    
    #swap
    a <<= 4
    TEMPFLIP = (a & 0xf00) >> 8
    a = (a & 0xf0) + TEMPFLIP

    b = a
    a = c
    a ^= ids[hl]
    a |= b

    #CHECK 5
    c_ = a < 0x64
    if not c_:
        return

    #success!
    list.append(f"{array} - Stage {stage}\n")


	
all = [p for p in itertools.product(x, repeat=6)]
for entry in all:
    parseWord(entry)

with open("tools/outputs/allPasswords.txt", "w") as f:
    f.writelines(list)
