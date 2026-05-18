cat orig/basic.rom > build/os_basic.ic2
cat build/elk100m7.rom >> build/os_basic.ic2
minipro -p AT28C256 -u -w build/os_basic.ic2
