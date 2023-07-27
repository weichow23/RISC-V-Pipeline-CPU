addi x1, x0, 1          # x1 = 1
slt x2, x0, x1          # x2 = 1
add x3, x2, x2          # x3 = 2
sub x4, x3, x1          # x4 = 1
and x5, x4, x2          # x5 = 0
or x6, x5, x1           # x6 = 1
xor x7, x6, x2          # x7 = 0
srl x8, x3, x1          # x8 = 1
slti x9, x6, 2          # x9 = 1
addi x10,x0, 7          # x10 = 7
sw x10, 0x34(x0)        # Mem[34] = x10 = 7
ori x10, x5, 1          # x10 = 1
xori x11, x6, 3         # x11 = 2
lw x12, 0x34(x0)        # x12 = Mem[34] = 7
beq x9, x0, next        # branch to next if x9 = 0
addi x13, x1, 2         # x13 = 3
jal x14, next           # x14 = pc_next

now:
addi x1, x1, 1
addi x1, x1, 1
addi x1, x1, 1

next:
addi x1, x1, 1          # x1 = 2


############################     以下为测试扩展指令集1(对应跳转指令)      ###################################
lui x1, 1     # x1 = 1 << 12
auipc x2, 4   # x2 = PC + 4 << 12
addi x3, x0, 2 # x3 = 2
addi x4, x0, 1 # x4 = 1
bne x3, x4, label1   # branch to label if x3 != x4
addi x5, x0, 1
label1:  
addi x4, x4, 2 # x4 = 3
blt x3, x4, label2   # branch to label if x3 < x4
addi x5, x0, 1
label2: 
addi x3, x3, 1 # x3 = 3
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


lui x1, 1    
auipc x2, 4 
addi x3, x0, 2 
addi x4, x0, 1 
bne x3, x4, label1   
addi x5, x0, 1
label1:  addi x4, x4, 2 
blt x3, x4, label2  
addi x5, x0, 1
label2: addi x3, x3, 1
bge x3, x4, label3  
addi x5, x0, 1
label3:addi x6, x0, -1 
bltu x7, x6, label4  
addi x5, x0, 1
label4:bgeu x6, x7, label5 
addi x5, x0, 1
label5:addi x6, x6, 1   
jalr x0, x2, 0  

############################     以下为测试扩展指令集2（对应字长指令）      ###################################
lui x5, 0x12 
addi x5, x5, 0x84  # x5 = 0x12084
lui x6, 0x0a
addi x6, x6, 0x78   # x6 = 0xa078
addi x7, x0, 0x0400
sb x5, 0(x7)    # Memory[x7] = 0x84
sh x6, 2(x7)    # Memory[x7+2] = 0xa078,  此时x7为0xa0780084
lb x8, 0(x7)    # x8 = 0xFFFFFF84 
lbu x9, 0(x7)   # x9 = 0x00000084 
lh x10, 2(x7)   # x10 = 0xFFFFA078
lhu x11, 2(x7)  # x11 = 0x0000A078
lb x12, 1(x7)  # x12 = 0xFFFFFFA0

lui x5, 0x12 
addi x5, x5, 0x84 
lui x6, 0x0a
addi x6, x6, 0x78  
addi x7, x0, 0x0400
sb x5, 0(x7)    
sh x6, 2(x7)   
lb x8, 0(x7)  
lbu x9, 0(x7) 
lh x10, 2(x7)  
lhu x11, 2(x7)
lb x12, 1(x7)

############################     以下为测试扩展指令集2（对应R和I指令）      ###################################
auipc x1, 0x40
auipc x2, 0x80
srli x3, x3, 3
slli x3, x3, 3
srai x3, x3, 1
addi x4, x0, 1
sll x3, x3, x4

########## 下板过程种出现错误，尝试排查 ############
# change your first digit in Studen ID to 3320'2233
addi x24, zero, 0x22
sw x24, 0x34(x1)

lw x25, 0x34(x1)
addi x24, zero, 0x20

sb x24, 0x32(x1)
lb x25, 0x32(x1)

# change your second digit in Studen ID to 2204'2122
addi x24, zero, 0x421
sh x24, 0x26(x1)
lh x25, 0x26(x1)


addi x24, zero, 0x22
sb x24, 0x21(zero)
addi x24, zero, 0x20
sb x24, 0x22(zero)
lb x25,0x22(x0)

# change your second digit in Studen ID to 2204'2122
addi x24, zero, 0x421
sh x24, 0x25(zero)
lh x25,0x25(x0)