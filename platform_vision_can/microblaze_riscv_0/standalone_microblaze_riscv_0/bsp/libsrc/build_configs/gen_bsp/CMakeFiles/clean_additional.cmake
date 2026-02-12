# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/media/user14/data/work/soc_2026_workspace/platform_vision_can/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/sleep.h"
  "/media/user14/data/work/soc_2026_workspace/platform_vision_can/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/xiltimer.h"
  "/media/user14/data/work/soc_2026_workspace/platform_vision_can/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/xtimer_config.h"
  "/media/user14/data/work/soc_2026_workspace/platform_vision_can/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/lib/libxiltimer.a"
  )
endif()
