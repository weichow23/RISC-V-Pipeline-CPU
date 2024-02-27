vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -sv \
"E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/ImmGen_0/ImmGen.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/ImmGen_0/sim/ImmGen_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/Regs_1/sources_1/new/regs.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/Regs_1/sim/Regs_1.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/ALU_0/ALU_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/ip/ALU_0/sim/ALU_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/new/REG32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/new/Datapath_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/Datapath_more_0_2/sim/Datapath_more_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/SCPU_ctrl_more_0_1/SCPU_ctrl_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/ip/SCPU_ctrl_more_0_1/sim/SCPU_ctrl_more_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/new/SCPU_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_0_3/sim/SCPU_more_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

