from hashlib import md5

rebuilt_rom = "game.gb"
hash = "ba50565630891680c9cf8b1827fca429"

if __name__ == "__main__":
    if hash != md5(open(rebuilt_rom, "rb").read()).hexdigest():
        raise Exception("Hashes do not match")
    else:
        print("OK")
