vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/SCPU_ctrl_1/lab403.srcs/sources_1/new/SCPU_ctrl.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/SCPU_ctrl_1/sim/SCPU_ctrl_1.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/Regs_0/sources_1/new/regs.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/Regs_0/sim/Regs_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/or_bit_32_0/or_bit_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/or_bit_32_0/sim/or_bit_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/MUX8T1_32_0/MUX8T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/MUX8T1_32_0/sim/MUX8T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/SignalExt_32_0/SignalExt_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/SignalExt_32_0/sim/SignalExt_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/ADC32_0/ADC_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/ADC32_0/sim/ADC32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/srl32_0_1/srl32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/srl32_0_1/sim/srl32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/nor32_0/nor32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/nor32_0/sim/nor32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/xor32_0/xor32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/xor32_0/sim/xor32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/or32_0/or32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/or32_0/sim/or32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/and32_0/and32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/ip/and32_0/sim/and32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sources_1/new/ALU.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/ip/ALU_0_1/sim/ALU_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_1/lab4_1.srcs/sources_1/new/ImmGen.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_1/lab4_1.srcs/sources_1/new/REG32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/lab4_2/lab4_2.srcs/sources_1/new/DataPath.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/ip/DataPath_1/sim/DataPath_1.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/new/SCPU.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_0_2/sim/SCPU_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

