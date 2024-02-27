############################     以下为测试扩展指令集1(对应跳转指令)      ###################################
lui x1, 1     # x1 = 1 << 12
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
auipc x2, 4   # x2 = PC + 4 << 12
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x3, x0, 2 # x3 = 2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x4, x0, 1 # x4 = 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
bne x3, x4, label1   # branch to label if x3 != x4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x5, x0, 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
label1:  
addi x4, x4, 2 # x4 = 3
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
blt x3, x4, label2   # branch to label if x3 < x4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x5, x0, 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
label2: 
addi x3, x3, 1 # x3 = 3
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
bge x3, x4, label3   # branch to label if x3 >= x4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x5, x0, 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
label3:
addi x6, x0, -1 # x6 = -1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
bltu x7, x6, label4  # branch to label if x7 < x6 (unsigned)
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x5, x0, 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
label4:
bgeu x6, x7, label5  # branch to label if x6 >= x7 (unsigned)
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x5, x0, 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
label5:
addi x6, x6, 1      # x6 = 0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jalr x0, x2, 0   # jump to the address stored in x2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero