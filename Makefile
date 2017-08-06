boot_sector.bin: boot_sector.nasm
	nasm -f bin boot_sector.nasm -o boot_sector.bin

run:
	qemu-system-x86_64 -nographic boot_sector.bin
