boot_sector.bin: boot_sector.nasm
	nasm -f bin boot_sector.nasm -o boot_sector.bin

run: boot_sector.bin
	qemu-system-i386 -curses -drive file=boot_sector.bin,format=raw
