-makelib ies_lib/xpm -sv \
  "E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab2_final.srcs/sources_1/ip/ROM_D_0/sim/ROM_D_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

