infile = "disassembly/bank_01c.asm"
find = open(infile, "r", encoding="UTF-8").readlines()
variables = [
    "MUSIC_music3",
    ]



def dumpAsm(variable):
    bin = bytearray()
    tabbing = "NONE"
    reading = False
    for i in find:
        if i.find(variable) != -1: reading = True
        elif reading:
            if tabbing == "NONE": tabbing = i.split("db")[0]
            elif not i.startswith(tabbing): break
            rip = i.split("db", 1)[-1].replace("$","0x").strip().split(",")
            for number in rip: bin.append(int(number, 16))
    import os
    newpath = "./src/"+"/".join(variable.split("_"))+".bin"
    newDir = newpath.split("/")
    newDir.pop(-1)
    newDir = "/".join(newDir)
    if not os.path.isdir(newDir): os.makedirs(newDir)
    open(newpath, "wb").write(bin)

for each in variables: dumpAsm(each)