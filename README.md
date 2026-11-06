This is a Fork of Tom Seddon's excellent dissasembly of the Acorn Electron 
OS, which adds in support for the 
[JamsoftElectronULA](https://github.com/moogway82/JamSoftElectronULA)'s
implementation of  Mode 7.

It adds in a lot of the labels and comments from 
[Toby Nelson's BBC OS](https://tobylobster.github.io/mos/) dissasembly 
where it matches up with the BBC OS code - which the vast majority of 
the code seems to. This allowed me to add back in the Mode 7 bits that were 
snipped out for the Elk OS code and make adjustments to allow it to work 
alongside things like the software defined cursor.

It's still a WIP, currently in an 'alpha' phase, but it works well enough
as a proof-of-concept so making it a release to demo.

The code base still supports the building of the original Electron OS ROM
images Tom had already created.

The following Acorn versions are covered:

* OS 1.00 - ROM supplied with Electron

The following non-Acorn versions are covered:

* OS 3.00 - ROM supplied with Slogger's Master RAM Board

The following unreleased non-Acorn versions from
[Slogger's old stock](https://stardot.org.uk/forums/viewtopic.php?t=11795)
are also covered:

* 213-OS-3.00-alt1
* 249-OS-3.00-alt2 - identical to OS 3.00
* 524-OS-3.00-alt4

(There is also an alt3 ROM, but it looks invalid.)

And then the JamsoftElectronULA Mode 7 version:

* OS 1.07 - ROM with Mode 7 support as implemented by the [JamsoftElectronULA](https://github.com/moogway82/JamSoftElectronULA)

**This project is a work in progress.** You'll find many holes, many
missing comments, and some rather unhelpful label names. The initial
goal is simply to separate code and data and ensure everything in the
ROM that needs a label has one.

Starting point was JGH's disassembly of the Electron MOS 1.00 here:
https://mdfs.net/Info/Comp/Acorn/Source/MOS.htm - this has supplied
nearly all the current comments.

# build

This repo has submodules. Clone it with `--recursive`:

    git clone --recursive https://github.com/tom-seddon/mos320
	
Alternatively, if you already cloned it non-recursively, you can do
the following from inside the working copy:

    git submodule init
	git submodule update

## prerequisites ##

Mandatory:

* Python 3.x

On Unix:

* [`64tass`](http://tass64.sourceforge.net/) (I use r3120)
* GNU Make

(Prebuilt Windows EXEs for 64tass and make are included in the repo.)

## build steps ##

Type `make` from the root of the working copy.

The build process is supposed to be silent when there are no errors
and when the output matches the original ROMs. Some versions of make
might print a load of stuff about entering and leaving the directory.

## build output

The build output is assembler listing files that you can use for
reference. Acorn versions:

- `build/elk100.lst` - OS 1.00

Non-Acorn versions:

- `build/os300.lst` - OS 3.00

