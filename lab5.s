
.text
.global _start
_start:
  addi t0, x0, 0
  addi t1, x0, 1
  addi t2, x0, 6
L1:
  add t0, t0, t1
  addi t1, t1, 1
  bne t1, t2, L1
output_mem:
  addi t3, t3, 0x401
  slli t3, t3, 21
  addi t3, t3, 100
  sw t0, 0(t3)
output_serial:
  addi t3, x0, 1
  slli t3, t3, 28
output_d:
  lb t4, 5(t3)
  andi t4, t4, 0x020
  beq t4, x0, output_d
  addi t5, x0, 100
  sb t5, 0(t3)
output_o:
  lb t4, 5(t3)
  andi t4, t4, 0x020
  beq t4, x0, output_o
  addi t5, x0, 111
  sb t5, 0(t3)
output_n:
  lb t4, 5(t3)
  andi t4, t4, 0x020
  beq t4, x0, output_n
  addi t5, x0, 110
  sb t5, 0(t3)
output_e:
  lb t4, 5(t3)
  andi t4, t4, 0x020
  beq t4, x0, output_e
  addi t5, x0, 101
  sb t5, 0(t3)
output_final:
  lb t4, 5(t3)
  andi t4, t4, 0x020
  beq t4, x0, output_final
  addi t5, x0, 33
  sb t5, 0(t3)
end:
  beq x0, x0, end