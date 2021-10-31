
.text
.global _start
_start:
  addi t0, x0, 0
  addi t1, x0, 1
  addi t2, x0, 101
L1:
  add t0, t0, t1
  addi t1, t1, 1
  bne t1, t2, L1
output_mem:
  addi t3, t3, 1
  slli t3, t3, 31
  addi t3, t3, 100
  sw t0, 0(t3)