# RISC-V-CPU

此仓库为2023年 刘海风老师的计算机组成与设计课程的实验代码和报告仓库， 实验指导内容为https://guahao31.github.io/2023_CO/

- Lab0: 安装并使用 Vivado

- Lab1: 简单模块设计（ALU / RegFile / 有限状态机）

- Lab2: 使用提供的 IP 核搭建测试框架

- Lab3: 实现乘法器与除法器 (🦄<font color='blue'>图灵班的计算机组成课程实现多种方式的除法可以有bonus，我实现了3种</font>)

- **Lab4 单周期 CPU**

  - 4-0: 使用提供的 IP 核集成 CPU
  - 4-1: 设计实现 Datapath
  - 4-2: 设计实现 Control-Unit
  - 4-3: 拓展指令(🦄<font color='blue'>图灵班的计算机组成课程要求实现所有的指令，我记得当时普通班为bonus</font>)
  - 4-4: 实现中断(🦄<font color='blue'>图灵班的计算机组成课程要求必须实现中断，我记得当时普通班为bonus</font>)

- **Lab5 流水线 CPU**

  - 5-2: 设计实现流水线 IF-ID
  - 5-3: 设计实现流水线 EXE-MEM-WB
  - 5-4: Hazard & stall  (🦄<font color='blue'>图灵班的计算机组成课程实现forwarding有bonus，我实现了除了load之后立刻使用之外的forward，几乎不用stall</font>)

- Lab6 cache(🦄<font color='blue'>图灵班的计算机组成课程实现做了cache有bonus</font>；另外有一个bonus是把cache接入流水线，但是我没做)

  

# bootstrap

涉及VGA的请把初始化文件放在D盘的根目录下，lab5以前的VGA的两个初始化文件请选择lab4，lab5的请选择lab5
