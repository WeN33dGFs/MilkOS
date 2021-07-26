#Directory Variable

kernelDIR = kernel
buildDIR = build

# Variables
CC = gcc #CC stands for C compiler
LD = ld #the linker script

bootsector: bootsector.asm
	@nasm -f bin bootsector.asm -o bootsector.bin

dir: #only needed if the directories arent there
	@mkdir -p $(buildDIR)

clean:
	@*.o

run: 
	@qemu-system-x86_64 -fda bootsector.bin