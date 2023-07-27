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
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/Hex2Ascii.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VgaController.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VgaDebugger.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VgaDisplay.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VGA.v" \
"../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/sim/VGA_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

