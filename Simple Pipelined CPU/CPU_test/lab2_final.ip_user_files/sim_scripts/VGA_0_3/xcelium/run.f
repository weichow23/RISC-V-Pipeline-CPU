-makelib xcelium_lib/xpm -sv \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/Hex2Ascii.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VgaController.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VgaDebugger.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VgaDisplay.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/VGA.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_3/sim/VGA_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

