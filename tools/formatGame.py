gamePath = "disassembly/game.asm"
game = open(gamePath, "r", encoding="UTF-8").readlines()

open(gamePath, "w", encoding="UTF-8").writelines(open("src/game.asm", "r", encoding="UTF-8").readlines())
print("game.asm copied!")
print("deleting useless asms...")
import os
deletes = list(range(0x6, 0x20))
for delete in deletes:
    string = hex(delete).replace("0x","")
    while len(string) < 3: string = "0"+string
    os.remove("disassembly/bank_"+string+".asm")

print("done! your repo is now spick and span! :D")