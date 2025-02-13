import subprocess
import argparse
import tools.imagegen

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Configure the project")
    #parser.add_argument(
    #    "infile",
    #    type=str
    #)

    args = parser.parse_args()

    tools.imagegen.do()

    subprocess.run(f"rgbasm --preserve-ld --halt-without-nop -o game.o src/game.asm", shell = True, executable="/bin/bash")
    subprocess.run(f"rgblink -n game.sym -m game.map -o game.gb game.o", shell = True, executable="/bin/bash")
    subprocess.run(f"rgbfix -v -p 255 game.gb", shell = True, executable="/bin/bash")
