gamePath = "disassembly/game.asm"
game = open(gamePath, "r", encoding="UTF-8").readlines()
new = [
"ramSymbols"
]
for i in range(len(new)):
    new[i] = 'INCLUDE "../include/'+new[i]+'.asm"'


for i in game:
    if i.startswith(";"):
        continue
    new.append(i)


open(gamePath, "w", encoding="UTF-8").writelines(new)
print("game.asm formatted!")
