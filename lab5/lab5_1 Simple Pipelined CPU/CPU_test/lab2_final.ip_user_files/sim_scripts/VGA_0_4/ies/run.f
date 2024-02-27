-makelib ies_lib/xpm -sv \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_4/Hex2Ascii.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_4/VgaController.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_4/VgaDebugger.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_4/VgaDisplay.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_4/VGA.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_4/sim/VGA_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

