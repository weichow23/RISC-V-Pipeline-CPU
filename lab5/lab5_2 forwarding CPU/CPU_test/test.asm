auipc x26, 0x40
auipc x27, 0x80
srli x27, x27, 3
slli x27, x27, 3
srai x27, x27, 1
bne x27, x26, dummy
lui x26, 0x40000
lui x27, 0x80000
srai x27, x27, 1
beq x27, x26, dummy

# change your first digit in Studen ID to 3320'2233
addi x24, zero, 0x22
sb x24, 0x21(zero)
addi x24, zero, 0x20
sb x24, 0x22(zero)

# change your second digit in Studen ID to 2204'2122
addi x24, zero, 0x421
sh x24, 0x25(zero)

start:
addi x1, zero, -1 # x1=FFFFFFFF
lb x24, 0x18(zero) # x24=FFFFFFFF
bne x1, x24, dummy
lbu x24, 0x18(zero)# x24=000000FF
bge x1, x24, dummy
lh x24, 0x60(zero) # x24=FFFFF7E0
blt zero, x24, dummy
lhu x24, 0x60(zero) # x24=0000F7E0
blt x24, zero, dummy
xori x3, x1, 1 # x3=FFFFFFFE
add x3, x3, x3 # x3=FFFFFFFC
add x3, x3, x3 # x3=FFFFFFF8
add x3, x3, x3 # x3=FFFFFFF0
add x3, x3, x3 # x3=FFFFFFE0
add x3, x3, x3 # x3=FFFFFFC0
xor x20, x3, x1 # x20=0000003F
add x3, x3, x3 # x3=FFFFFF80
add x3, x3, x3 # x3=FFFFFF00
add x3, x3, x3 # x3=FFFFFE00
add x3, x3, x3 # x3=FFFFFC00
add x3, x3, x3 # x3=FFFFF800
add x3, x3, x3 # x3=FFFFF000
add x3, x3, x3 # x3=FFFFE000
add x3, x3, x3 # x3=FFFFC000
add x3, x3, x3 # x3=FFFF8000
add x3, x3, x3 # x3=FFFF0000
add x3, x3, x3 # x3=FFFE0000
add x3, x3, x3 # x3=FFFC0000
add x3, x3, x3 # x3=FFF80000
add x3, x3, x3 # x3=FFF00000
add x3, x3, x3 # x3=FFE00000
add x3, x3, x3 # x3=FFC00000
add x3, x3, x3 # x3=FF800000
add x3, x3, x3 # x3=FF000000
add x3, x3, x3 # x3=FE000000
add x3, x3, x3 # x3=FC000000
add x6, x3, x3 # x6=F8000000
add x3, x6, x6 # x3=F0000000
add x4, x3, x3 # x4=E0000000
add x13, x4, x4 # x13=C0000000
lui x8, 0x80000 # x8=80000000
ori x26, zero, 1 # x26=00000001
andi x26, x26, 0xff # x26=00000001
sra x30, x8, x26
srl x27, x8, x26

blt zero, zero, dummy
blt x26, zero, dummy
blt zero, x8, dummy

bge zero, x26, dummy
bge x8, zero, dummy

bne x27, x30, loop

dummy:
add zero, zero, zero # 4
add zero, zero, zero # 8
add zero, zero, zero # C
add zero, zero, zero # 10
add zero, zero, zero # 14
add zero, zero, zero # 18
add zero, zero, zero # 1C
jal zero, dummy

loop:
slt x2, x1, zero # x2=00000001 针对ALU32位有符号数减
sltu x25, x1, zero # x25=00000000
sltiu x29, x1, 0 # x29=00000000
slti x2, x1, 0 # x2=00000001 针对ALU32位有符号数减
add x14, x2, x2
add x14, x14, x14 # x14=4
sub x19, x14, x14 # x19=0
srli x19, x19, 1
addi x10, x19, -1
or x10, x10, zero
add x10, x10, x10 # x10=FFFFFFFE

loop1:
sw x6, 0x4(x3) # 计数器端口: F0000004, 送计数常数x6=F8000000
lw x5, 0x0(x3) # 读GPIO端口F0000000状态: {counter0_out,counter1_out,counter2_out,led_out[12:0], SW}
slli x5, x5, 2 # 左移2位将SW与LED对齐, 同时D1D0置00, 选择计数器通道0
sw x5, 0x0(x3) # x5输出到GPIO端口F0000000, 设置计数器通道counter_set=00端口
add x9, x9, x2 # x9=x9+1
sw x9, 0x0(x4) # x9送x4=E0000000七段码端口
lw x13, 0x14(zero) # 取存储器20单元预存数据至x13, 程序计数延时常数

loop2:
lw x5, 0x0(x3) # 读GPIO端口F0000000状态: {out0, out1, out2, D28-D20, LED7
add x5, x5, x5
add x5, x5, x5 # 左移2位将SW与LED对齐, 同时D1D0置00, 选择计数器通道0
sw x5, 0x0(x3) # x5输出到GPIO端口F0000000, 计数器通道counter_set=00端口不变
lw x5, 0x0(x3) # 再读GPIO端口F0000000状态
and x11, x5, x8 # 取最高位=out0, 屏蔽其余位送x11
add x13, x13, x2 # 程序计数延时
beq x13, zero, C_init # 程序计数x13=0, 转计数器初始化, 修改7段码显示: C_init

l_next: # 判断7段码显示模式：SW[4: 3]控制
lw x5, 0x0(x3) # 再读GPIO端口F0000000开关SW状态
add x18, x14, x14 # x14=4, x18=00000008
add x22, x18, x18 # x22=00000010
add x18, x18, x22 # x18=00000018(00011000)
and x11, x5, x18 # 取SW[4: 3]
beq x11, zero, L20 # SW[4: 3]=00, 7段显示"点"循环移位：L20, SW0=0
beq x11, x18, L21 # SW[4: 3]=11, 显示七段图形, L21, SW0=0
add x18, x14, x14 # x18=8
beq x11, x18, L22 # SW[4: 3]=01, 七段显示预置数字, L22, SW0=1
sw x9, 0x0(x4) # SW[4: 3]=10, 显示x9, SW0=1
bltu zero, x4, loop2

L20:
beq x10, x1, L4 # x10=ffffffff, 转移L4\\
bgeu x4, zero, L3

L4:
addi x10, zero, -1 # x10=ffffffff
add x10, x10, x10 # x10=fffffffe

L3:
sw x10, 0x0(x4) # SW[4: 3]=00, 7段显示点移位后显示
jal zero, loop2

L21:
lw x9, 0x60(x17) # SW[4: 3]=11, 从内存取预存七段图形
sw x9, 0x0(x4) # SW[4: 3]=11, 显示七段图形
addi x31, zero, 0x150
jalr zero, x31, 0x24 #jump to pc 0x174

L22:
lw x9, 0x20(x17) # SW[4: 3]=01, 从内存取预存数字
sw x9, 0x0(x4) # SW[4: 3]=01, 七段显示预置数字
blt x4, zero, loop2

C_init:
lw x13, 0x14(zero) # 取程序计数延时初始化常数
add x10, x10, x10 # x10=fffffffc, 7段图形点左移121 or x10, x10, x2 # x10末位置1, 对应右上角不显示
add x17, x17, x14 # x17=00000004, LED图形访存地址+4
and x17, x17, x20 # x17=000000XX, 屏蔽地址高位, 只取6位
add x9, x9, x2 # x9+1
beq x9, x1, L6 # 若x9=ffffffff, 重置x9=5
bge zero, zero, L7

L6:
add x9, zero, x14 # x9=4
add x9, x9, x2 # 重置x9=5

L7:
lw x5, 0x0(x3) # 读GPIO端口F0000000状态
add x11, x5, x5
slli x11, x11, 1 # 左移2位将SW与LED对齐, 同时D1D0置00, 选择计数器通道0
sw x11, 0x0(x3) # x5输出到GPIO端口F0000000, 计数器通道counter_set=00端口不变
sw x6, 0x4(x3) # 计数器端口: F0000004, 送计数常数x6=F8000000
bge zero, x4, l_next
