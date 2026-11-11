.text	# 0x00000000 rom
.globl _start
_start:
	addi t0, zero, 0x00000120 # endereço dos switches
	addi t1, zero, 0x00000104 # endereço dos LEDs
loop:
	lw t2, (t0)                # lê os switches
	sw t2, (t1)                # acende os LEDs correspondentes
	j loop
