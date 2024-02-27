-makelib ies_lib/xpm -sv \
  "E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../CPU_test.srcs/sources_1/ip/RAM_B_0/sim/RAM_B_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

