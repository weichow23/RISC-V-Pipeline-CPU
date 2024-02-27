############################     以下为测试扩展指令集(对应跳转指令)      ###################################
jal x0, main
main:
lui x1, 1     # x1 = 1 << 12
auipc x2, 4   # x2 = PC + 4 << 12
addi x3, x0, 2 # x3 = 2
addi x4, x0, 1 # x4 = 1
bne x3, x4, label1   # branch to label if x3 != x4
addi x5, x0, 1
label1:  
addi x4, x3, 1 # x4 = 3
blt x3, x4, label2   # branch to label if x3 < x4
addi x5, x0, 1
label2: 
addi x3, x0, 3 # x3 = 3
bge x3, x4, label3   # branch to label if x3 >= x4
addi x5, x0, 1
label3:
addi x6, x0, -1 # x6 = -1
bltu x7, x6, label4  # branch to label if x7 < x6 (unsigned)
addi x5, x0, 1
label4:
bgeu x6, x7, label5  # branch to label if x6 >= x7 (unsigned)
addi x5, x0, 1
label5:
addi x6, x6, 1      # x6 = 0
jalr x0, x2, 0   # jump to the address stored in x2