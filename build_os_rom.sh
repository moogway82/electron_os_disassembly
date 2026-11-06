cat orig/basic.rom > build/os_basic.ic2
cat build/elk100m7.rom >> build/os_basic.ic2
cp build/os_basic.ic2 ~/mame/roms/electron/
minipro -p AT28C256 -u -w build/os_basic.ic2
