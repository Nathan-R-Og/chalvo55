# Chalvo 55 (Chalvo GoGo) - Super Puzzle Action

This is a WIP disassembly of Chalvo 55 - Super Puzzle Action (Japan).

It builds the following rom:

* Chalvo 55 - Super Puzzle Action (Japan).gb | `sha-1: 55AAD975351670C3F632E1EBCC939C48410D29B3`

Read futher to learn more!

# Setting up

A ton of different environments have their own setups, but as a one man project (me), I am using WSL.
If other people on different environments would like to contribute, please put your setup instructions here!
It would be very much appreciated.

## Windows 10

Download and install [**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Then open the **WSL terminal**.

I personally use an Ubuntu distro, as it is the easiest to setup imho.

Update WSL before continuing. If you chose Debian, Ubuntu, or another distribution that uses `apt-get`, then enter this command:

```bash
sudo apt update && sudo apt upgrade
```

Now that WSL is ready to go, install it anywhere on your WSL install or on windows that you would like.
I host my development files under `\\wsl.localhost\Ubuntu\root`, or just `root`, but you can do whatever.
I'm sure the path is based on the distro of Linux you have, so be mindful of where stuff is going.

If everything goes smoothly, jump to [the instructions for **Linux**](#linux), though the only distro I will cover is Debian/Ubuntu.

## Linux

Open the terminal, and paste the following commands based on distro.

### Debian/Ubuntu

```bash
sudo apt-get install make gcc git
sudo apt install make gcc git bison pkg-config libpng-dev
```
If this repo builds without these commands, awesome! i just stole this from *pokered* lmfao

Next, you will have to build rgbds from source. Unlike *pokered* however, I'll actually give you proper instructions not from the rgbds page on how to do that!
(Massive props to [**Lunos**](https://www.pokecommunity.com/showthread.php?p=10445222) for this, btw)

To start, clone rgbds wherever. As long as it can be accessed (it will anyways), you should be good.
Under the directory you want, do
```bash
git clone https://github.com/gbdev/rgbds && cd rgbds
make -jN && sudo make install && cd ..
```
with **N** being the amount of threads you want to use to build rgbds. It is fairly lightweight, so it shouldn't matter as much.
This will install rgbds and take you out of the repo as soon as it is done.
Now it is time to get Chalvo going baby!
```bash
git clone https://github.com/Nathan-R-Og/chalvo55 --recursive && cd chalvo55
git submodule update --remote
```
This [**should be it**](#development) for the Linux side.

# Development
The repo should now be set up!
Lastly, get a Chalvo 55 rom from your nearest 100% legal rom dumper.
Make sure to match the [**hash**](https://www.romhacking.net/hash/) of your rom to one provided at the top.
If the hash matches, throw it in the Chalvo repo. You can change the name or whatever, just make sure it ends in `.gb`.

The rest of this section will be for `contributing`. If you wish to simply [**build**](#building), head on forward!

To split the game as if it was a new project (great for refreshing symbols), run
## Linux
### Debian/Ubuntu
```bash
rm -rf disassembly && ./mgbdis/mgbdis.py [romname].gb && python3 include/formatGame.py
```

This will get rid of all of your old assets, split the rom into asm, and format `disassembly/game.asm` with `include` files.

**DO BE WARNED**, this will destroy *everything* in `disassembly`. If you would like to have a custom hierarchy, this is near ill-advised.

To specify the order of includes, go into `formatGame.py` and edit `new`.

The project files should now be ready for editing!

## Symbols
To name/specify symbols, go into `chalvo.sym` and head to the end.
Bank 00 will be where WRAM is in the system bus. To format variables use this formatting:
```
00:[systemBusLocation] [Name]
```

Jr's/Functions will be called per bank. To format those, use this formatting:

```
[scriptBank]:[positionInBank] [Name]
```

You can find their `positionInBank` by looking at the name without a defined symbol. The address should be at the end.
`scriptBank` will simply be the bank the asm calls the symbol from, so you'll probably be in the script while figuring out what it is anyways.

For variables, head to `include` and make sure the specific SECTION has an asm file. If not, edit `formatGame.py` and make one to accomodate.

I will try to explain this to the best of my ability, but if you would like a more literal (and probably more helpful) rundown, [**read more here.**](https://rgbds.gbdev.io/docs/v0.6.1/rgbasm.5/)

Defining SECTION's is a whole other ordeal, [**read more here.**](https://rgbds.gbdev.io/docs/v0.4.2/rgbasm.5/#SECTIONS) Once you have the SECTION set up, go inside of it and make room for the variable.

To define variables, type the name, usually `::` after, and the size.
Sizes are defined like so:
```
db = 0x1
dw = 0x2
dl = 0x4
ds = dymanic (decimal input)
```

Before you get to your variable though, ***every section must have padding up until that variable.*** This is oh-so important so that it not only builds a matching rom but also links the symbols correctly. To do this, it is usually easiest to define a size of `ds [decimalSizeOfBytes]` to a padding varaible beforehand.

If you set up everything right, you should be able to split (see the start of this section) again and it should take and use the variable correctly.

# Building
To build the repo, simply `build` the disassembly folder!

## Linux
### Debian/Ubuntu
```bash
cd disassembly && make && cd ..
```
And the game should be built! It's really that easy! :D
As long as you don't see `warning: Overwrote a non-zero byte in the global checksum`, it should be a matching rom!
