from glob import glob
mPath = "./src/MUSIC/"
files = glob(mPath+"*.bin")
#playHeader is generated with length and looping info
#gameFunc is 0x200-0x8000 of rom (the second half of bank 0 and all of bank 1)
#except there are minor differences???? i guess it effects how the song is played?
order = ["include/playHeader.bin", "include/gameFunc.bin"]
mn = 1
while len(files) > 0:
    i = 0
    while i < len(files):
        if files[i].find(str(mn)) != -1:
            mn += 1
            order.append(files.pop(i))
            break
        i += 1

#make gbs
with open("include/music.gbs", "wb") as f:
    while len(order) > 0:
        #add game funcs
        f.write(open(order.pop(0), "rb").read())
print("done! drag outside of WSL and play it a compatible player to listen!")