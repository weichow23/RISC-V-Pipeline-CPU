-makelib xcelium_lib/xpm -sv \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_2/VGA.srcs/sources_1/imports/Framework/VGA.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_2/VGA.srcs/sources_1/imports/Framework/VgaController.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_2/VGA.srcs/sources_1/imports/Framework/VgaDebugger.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_2/VGA.srcs/sources_1/imports/Framework/VgaDisplay.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_2/VGA.sim/sim_1/behav/xsim/glbl.v" \
  "../../../../lab2_final.srcs/sources_1/ip/VGA_0_2/sim/VGA_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

