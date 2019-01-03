#ifndef _ALTERA_HPS_0_H_
#define _ALTERA_HPS_0_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'soc_system' in
 * file './soc_system.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0' and devices
 * connected to the following masters:
 *   h2f_axi_master
 *   h2f_lw_axi_master
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'sdram', class 'altera_avalon_new_sdram_controller'
 * The macros are prefixed with 'SDRAM_'.
 * The prefix is the slave descriptor.
 */
#define SDRAM_COMPONENT_TYPE altera_avalon_new_sdram_controller
#define SDRAM_COMPONENT_NAME sdram
#define SDRAM_BASE 0x0
#define SDRAM_SPAN 67108864
#define SDRAM_END 0x3ffffff
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO 
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_REFRESH_PERIOD 7.8125
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 25
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 0
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_T_AC 5.4
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 15.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 15.0
#define SDRAM_T_WR 14.0
#define SDRAM_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
#define SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 1
#define SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 16

/*
 * Macros for device 'alt_vip_mix_0', class 'alt_vip_mix'
 * The macros are prefixed with 'ALT_VIP_MIX_0_'.
 * The prefix is the slave descriptor.
 */
#define ALT_VIP_MIX_0_COMPONENT_TYPE alt_vip_mix
#define ALT_VIP_MIX_0_COMPONENT_NAME alt_vip_mix_0
#define ALT_VIP_MIX_0_BASE 0x0
#define ALT_VIP_MIX_0_SPAN 256
#define ALT_VIP_MIX_0_END 0xff

/*
 * Macros for device 'alt_vip_vfr_0', class 'alt_vip_vfr'
 * The macros are prefixed with 'ALT_VIP_VFR_0_'.
 * The prefix is the slave descriptor.
 */
#define ALT_VIP_VFR_0_COMPONENT_TYPE alt_vip_vfr
#define ALT_VIP_VFR_0_COMPONENT_NAME alt_vip_vfr_0
#define ALT_VIP_VFR_0_BASE 0x100
#define ALT_VIP_VFR_0_SPAN 128
#define ALT_VIP_VFR_0_END 0x17f

/*
 * Macros for device 'pio_chaos_temp', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_TEMP_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_TEMP_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_TEMP_COMPONENT_NAME pio_chaos_temp
#define PIO_CHAOS_TEMP_BASE 0x280
#define PIO_CHAOS_TEMP_SPAN 16
#define PIO_CHAOS_TEMP_END 0x28f
#define PIO_CHAOS_TEMP_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_TEMP_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_TEMP_CAPTURE 0
#define PIO_CHAOS_TEMP_DATA_WIDTH 13
#define PIO_CHAOS_TEMP_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_TEMP_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_TEMP_EDGE_TYPE NONE
#define PIO_CHAOS_TEMP_FREQ 50000000
#define PIO_CHAOS_TEMP_HAS_IN 1
#define PIO_CHAOS_TEMP_HAS_OUT 0
#define PIO_CHAOS_TEMP_HAS_TRI 0
#define PIO_CHAOS_TEMP_IRQ_TYPE NONE
#define PIO_CHAOS_TEMP_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_temp2', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_TEMP2_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_TEMP2_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_TEMP2_COMPONENT_NAME pio_chaos_temp2
#define PIO_CHAOS_TEMP2_BASE 0x290
#define PIO_CHAOS_TEMP2_SPAN 16
#define PIO_CHAOS_TEMP2_END 0x29f
#define PIO_CHAOS_TEMP2_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_TEMP2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_TEMP2_CAPTURE 0
#define PIO_CHAOS_TEMP2_DATA_WIDTH 32
#define PIO_CHAOS_TEMP2_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_TEMP2_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_TEMP2_EDGE_TYPE NONE
#define PIO_CHAOS_TEMP2_FREQ 50000000
#define PIO_CHAOS_TEMP2_HAS_IN 0
#define PIO_CHAOS_TEMP2_HAS_OUT 1
#define PIO_CHAOS_TEMP2_HAS_TRI 0
#define PIO_CHAOS_TEMP2_IRQ_TYPE NONE
#define PIO_CHAOS_TEMP2_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_done', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_DONE_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_DONE_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_DONE_COMPONENT_NAME pio_chaos_done
#define PIO_CHAOS_DONE_BASE 0x1000
#define PIO_CHAOS_DONE_SPAN 16
#define PIO_CHAOS_DONE_END 0x100f
#define PIO_CHAOS_DONE_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_DONE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_DONE_CAPTURE 0
#define PIO_CHAOS_DONE_DATA_WIDTH 1
#define PIO_CHAOS_DONE_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_DONE_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_DONE_EDGE_TYPE NONE
#define PIO_CHAOS_DONE_FREQ 50000000
#define PIO_CHAOS_DONE_HAS_IN 1
#define PIO_CHAOS_DONE_HAS_OUT 0
#define PIO_CHAOS_DONE_HAS_TRI 0
#define PIO_CHAOS_DONE_IRQ_TYPE NONE
#define PIO_CHAOS_DONE_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_step', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_STEP_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_STEP_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_STEP_COMPONENT_NAME pio_chaos_step
#define PIO_CHAOS_STEP_BASE 0x1010
#define PIO_CHAOS_STEP_SPAN 16
#define PIO_CHAOS_STEP_END 0x101f
#define PIO_CHAOS_STEP_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_STEP_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_STEP_CAPTURE 0
#define PIO_CHAOS_STEP_DATA_WIDTH 1
#define PIO_CHAOS_STEP_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_STEP_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_STEP_EDGE_TYPE NONE
#define PIO_CHAOS_STEP_FREQ 50000000
#define PIO_CHAOS_STEP_HAS_IN 0
#define PIO_CHAOS_STEP_HAS_OUT 1
#define PIO_CHAOS_STEP_HAS_TRI 0
#define PIO_CHAOS_STEP_IRQ_TYPE NONE
#define PIO_CHAOS_STEP_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_reset', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_RESET_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_RESET_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_RESET_COMPONENT_NAME pio_chaos_reset
#define PIO_CHAOS_RESET_BASE 0x1020
#define PIO_CHAOS_RESET_SPAN 16
#define PIO_CHAOS_RESET_END 0x102f
#define PIO_CHAOS_RESET_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_RESET_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_RESET_CAPTURE 0
#define PIO_CHAOS_RESET_DATA_WIDTH 1
#define PIO_CHAOS_RESET_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_RESET_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_RESET_EDGE_TYPE NONE
#define PIO_CHAOS_RESET_FREQ 50000000
#define PIO_CHAOS_RESET_HAS_IN 0
#define PIO_CHAOS_RESET_HAS_OUT 1
#define PIO_CHAOS_RESET_HAS_TRI 0
#define PIO_CHAOS_RESET_IRQ_TYPE NONE
#define PIO_CHAOS_RESET_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_shift', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_SHIFT_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_SHIFT_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_SHIFT_COMPONENT_NAME pio_chaos_shift
#define PIO_CHAOS_SHIFT_BASE 0x1030
#define PIO_CHAOS_SHIFT_SPAN 16
#define PIO_CHAOS_SHIFT_END 0x103f
#define PIO_CHAOS_SHIFT_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_SHIFT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_SHIFT_CAPTURE 0
#define PIO_CHAOS_SHIFT_DATA_WIDTH 32
#define PIO_CHAOS_SHIFT_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_SHIFT_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_SHIFT_EDGE_TYPE NONE
#define PIO_CHAOS_SHIFT_FREQ 50000000
#define PIO_CHAOS_SHIFT_HAS_IN 0
#define PIO_CHAOS_SHIFT_HAS_OUT 1
#define PIO_CHAOS_SHIFT_HAS_TRI 0
#define PIO_CHAOS_SHIFT_IRQ_TYPE NONE
#define PIO_CHAOS_SHIFT_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_x', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_X_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_X_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_X_COMPONENT_NAME pio_chaos_x
#define PIO_CHAOS_X_BASE 0x1040
#define PIO_CHAOS_X_SPAN 16
#define PIO_CHAOS_X_END 0x104f
#define PIO_CHAOS_X_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_X_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_X_CAPTURE 1
#define PIO_CHAOS_X_DATA_WIDTH 32
#define PIO_CHAOS_X_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_X_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_X_EDGE_TYPE RISING
#define PIO_CHAOS_X_FREQ 50000000
#define PIO_CHAOS_X_HAS_IN 1
#define PIO_CHAOS_X_HAS_OUT 0
#define PIO_CHAOS_X_HAS_TRI 0
#define PIO_CHAOS_X_IRQ_TYPE NONE
#define PIO_CHAOS_X_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_y', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_Y_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_Y_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_Y_COMPONENT_NAME pio_chaos_y
#define PIO_CHAOS_Y_BASE 0x1050
#define PIO_CHAOS_Y_SPAN 16
#define PIO_CHAOS_Y_END 0x105f
#define PIO_CHAOS_Y_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_Y_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_Y_CAPTURE 1
#define PIO_CHAOS_Y_DATA_WIDTH 32
#define PIO_CHAOS_Y_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_Y_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_Y_EDGE_TYPE RISING
#define PIO_CHAOS_Y_FREQ 50000000
#define PIO_CHAOS_Y_HAS_IN 1
#define PIO_CHAOS_Y_HAS_OUT 0
#define PIO_CHAOS_Y_HAS_TRI 0
#define PIO_CHAOS_Y_IRQ_TYPE NONE
#define PIO_CHAOS_Y_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_z', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_Z_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_Z_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_Z_COMPONENT_NAME pio_chaos_z
#define PIO_CHAOS_Z_BASE 0x1060
#define PIO_CHAOS_Z_SPAN 16
#define PIO_CHAOS_Z_END 0x106f
#define PIO_CHAOS_Z_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_Z_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_Z_CAPTURE 1
#define PIO_CHAOS_Z_DATA_WIDTH 32
#define PIO_CHAOS_Z_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_Z_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_Z_EDGE_TYPE RISING
#define PIO_CHAOS_Z_FREQ 50000000
#define PIO_CHAOS_Z_HAS_IN 1
#define PIO_CHAOS_Z_HAS_OUT 0
#define PIO_CHAOS_Z_HAS_TRI 0
#define PIO_CHAOS_Z_IRQ_TYPE NONE
#define PIO_CHAOS_Z_RESET_VALUE 0

/*
 * Macros for device 'pio_chaos_w', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_CHAOS_W_'.
 * The prefix is the slave descriptor.
 */
#define PIO_CHAOS_W_COMPONENT_TYPE altera_avalon_pio
#define PIO_CHAOS_W_COMPONENT_NAME pio_chaos_w
#define PIO_CHAOS_W_BASE 0x1070
#define PIO_CHAOS_W_SPAN 16
#define PIO_CHAOS_W_END 0x107f
#define PIO_CHAOS_W_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_CHAOS_W_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_CHAOS_W_CAPTURE 1
#define PIO_CHAOS_W_DATA_WIDTH 32
#define PIO_CHAOS_W_DO_TEST_BENCH_WIRING 0
#define PIO_CHAOS_W_DRIVEN_SIM_VALUE 0
#define PIO_CHAOS_W_EDGE_TYPE RISING
#define PIO_CHAOS_W_FREQ 50000000
#define PIO_CHAOS_W_HAS_IN 1
#define PIO_CHAOS_W_HAS_OUT 0
#define PIO_CHAOS_W_HAS_TRI 0
#define PIO_CHAOS_W_IRQ_TYPE NONE
#define PIO_CHAOS_W_RESET_VALUE 0


#endif /* _ALTERA_HPS_0_H_ */
