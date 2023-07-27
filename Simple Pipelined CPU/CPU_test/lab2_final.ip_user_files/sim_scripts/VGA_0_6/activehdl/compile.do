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
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_6/VGA.srcs/sources_1/imports/Framework/VGA.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_6/VGA.srcs/sources_1/imports/Framework/VgaController.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_6/VGA.srcs/sources_1/imports/Framework/VgaDebugger.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_6/VGA.srcs/sources_1/imports/Framework/VgaDisplay.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_6/VGA.sim/sim_1/behav/xsim/glbl.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_6/sim/VGA_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

