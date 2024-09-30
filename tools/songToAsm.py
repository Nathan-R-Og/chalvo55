pather = "src/music/song30"
bytes = open(pather+".bin", "rb").read()
lines = []
i = 0
notes = False
while i < len(bytes):
    threeArg = [0xff, 0xf1, 0xf5]
    if (bytes[i] <= 0xf0 or bytes[i] in threeArg) and not notes:
        notes = True
        lines.append("\n")
    elif (bytes[i] > 0xf1 and not bytes[i] in threeArg) and notes:
        notes = False
        lines.append("\n")
    sizer = 2 if notes == False else 3
    if notes and bytes[i] == 0x81:
        notes = False
        sizer = 1
    
    x = bytes[i:i+sizer].hex()
    
    line = "db "
    s = 0
    while s < len(x):
        line += "$"+str(x[s:s+2])+", "
        s += 2
    lines.append(line[:-2]+"\n")
    if sizer == 1:
        lines.append("\n")
    

    i += sizer

open(pather+".asm", "w").writelines(lines)