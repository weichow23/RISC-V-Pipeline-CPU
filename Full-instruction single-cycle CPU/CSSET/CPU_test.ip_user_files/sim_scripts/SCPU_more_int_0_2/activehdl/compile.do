vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/SCPU_ctrl_more_int_0/SCPU_ctrl_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/SCPU_ctrl_more_int_0/sim/SCPU_ctrl_more_int_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/MUX2T1_32_0/MUX2T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/MUX2T1_32_0/sim/MUX2T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/MUX4T1_32_0/MUX4T1_32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/MUX4T1_32_0/sim/MUX4T1_32_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/Regs_1/sources_1/new/regs.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/Regs_1/sim/Regs_1.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/ALU_0/ALU_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/ALU_0/sim/ALU_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/ImmGen_0_1/ImmGen.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/ImmGen_0_1/sim/ImmGen_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/Rv_int_0/Rv_int.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/ip/Rv_int_0/sim/Rv_int_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/new/REG32.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/new/Datapath_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/ip/Datapath_more_int_0/sim/Datapath_more_int_0.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/new/SCPU_more.v" \
"../../../../CPU_test.srcs/sources_1/ip/SCPU_more_int_0_2/sim/SCPU_more_int_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

