jmp $

times 510-($-$$) db 0 ;file has to be 512 bytes

dw 0x55aa ;bootloader always end with this