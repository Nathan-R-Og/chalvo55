#converts binary to chalvo asm compatible inputs
#can be used to turn user input into chalvo asm inputs (though i havent bothered making a tool for that yet)
import struct
buffer = open("src/demos/1.bin", "rb").read()

i = 0
output = ""
while i < len(buffer):
    time = 18

    inputTable = {
    "INPUT_NONE": 0,
    "INPUT_A": 1 << 0,
    "INPUT_B": 1 << 1,
    "INPUT_SELECT": 1 << 2,
    "INPUT_START": 1 << 3,
    "INPUT_RIGHT": 1 << 4,
    "INPUT_LEFT": 1 << 5,
    "INPUT_UP": 1 << 6,
    "INPUT_DOWN": 1 << 7
    }

    data = struct.unpack('>BB', buffer[i:i+2])

    inputs = []
    if data[0] == 0: inputs = ["INPUT_NONE"]
    else:
        inputs = []
        for button in list(inputTable.keys()):
            if data[0] & inputTable[button]: inputs.append(button)
    inputs = " | ".join(inputs)
    time = data[1]
    output += f"    demo_input {inputs}, {time}\n"
    i += 2

open("tools/outputs/demo_input_output.txt", "w", encoding="utf-8").write(output)