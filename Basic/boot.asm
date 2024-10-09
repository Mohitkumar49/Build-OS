[org 0x7c00]   ; This tells the assembler where the code will be loaded in memory

mov ah, 0x0E   ; BIOS teletype function
mov al, 'H'    ; Load the character 'H' into AL register
int 0x10       ; Call BIOS interrupt to print the character

mov al, 'e'
int 0x10

mov al, 'l'
int 0x10

mov al, 'l'
int 0x10

mov al, 'o'
int 0x10

mov al, ','
int 0x10

mov al, ' '
int 0x10

mov al, 'O'
int 0x10

mov al, 'S'
int 0x10

mov al, ' '
int 0x10

mov al, 'W'
int 0x10

mov al, 'o'
int 0x10

mov al, 'r'
int 0x10

mov al, 'l'
int 0x10

mov al, 'd'
int 0x10

mov al, '!'
int 0x10

cli            ; Disable interrupts
hlt            ; Halt the CPU

times 510-($-$$) db 0 ; Fill the rest of the boot sector with zeros
db 0x55, 0xAA         ; Boot sector signature
