from glob import glob
import subprocess
import os
#python script so i dont have to rely on make. lol.

#without these, autogen 'colors' get REALLLLLY annoying. tune to your preference
light_color = "#FFFFFF"
lightgray_color = "#BFBFBF"
darkgray_color = "#7F7F7F"
dark_color = "#3f3f3f"


def do():
    images = glob("disassembly/gfx/**/*.png", recursive=True)

    for image in images:
        output = image.replace(".png", ".2bpp")
        color_input = ",".join([light_color, lightgray_color, darkgray_color, dark_color])
        subprocess.run(['rgbgfx', "-o", output, image])

if __name__ == "__main__":
    do()