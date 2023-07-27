-makelib ies_lib/xpm -sv \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_5/imports/Framework/VgaController.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_5/imports/Framework/VgaDebugger.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_5/imports/Framework/VgaDisplay.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_5/imports/Framework/VGA.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_5/sim/VGA_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

