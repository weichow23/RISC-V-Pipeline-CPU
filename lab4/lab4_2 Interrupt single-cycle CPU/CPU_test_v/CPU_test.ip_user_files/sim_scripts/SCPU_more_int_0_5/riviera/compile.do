vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/SCPU_ctrl_more_int_0_1/SCPU_ctrl_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/SCPU_ctrl_more_int_0_1/sim/SCPU_ctrl_more_int_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/Regs_1/sources_1/new/regs.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/Regs_1/sim/Regs_1.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/ALU_0/ALU_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/ALU_0/sim/ALU_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/ImmGen_0_1/ImmGen.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/ImmGen_0_1/sim/ImmGen_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/Rv_int_0_1/sources_1/new/Rv_int.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/ip/Rv_int_0_1/sim/Rv_int_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/new/REG32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/new/Datapath_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/ip/Datapath_more_int_0_3/sim/Datapath_more_int_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/new/SCPU_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_5/sim/SCPU_more_int_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

