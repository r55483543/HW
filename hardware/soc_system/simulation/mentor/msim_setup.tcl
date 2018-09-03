
# (C) 2001-2018 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     soc_system
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If soc_system is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 16.1 196 win32 2018.05.09.20:12:29

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "soc_system"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga/16.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/log.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
}
ensure_lib                                           ./libraries/altera_common_sv_packages/                
vmap       altera_common_sv_packages                 ./libraries/altera_common_sv_packages/                
ensure_lib                                           ./libraries/error_adapter_0/                          
vmap       error_adapter_0                           ./libraries/error_adapter_0/                          
ensure_lib                                           ./libraries/border/                                   
vmap       border                                    ./libraries/border/                                   
ensure_lib                                           ./libraries/timing_adapter_0/                         
vmap       timing_adapter_0                          ./libraries/timing_adapter_0/                         
ensure_lib                                           ./libraries/data_format_adapter_0/                    
vmap       data_format_adapter_0                     ./libraries/data_format_adapter_0/                    
ensure_lib                                           ./libraries/avalon_st_adapter/                        
vmap       avalon_st_adapter                         ./libraries/avalon_st_adapter/                        
ensure_lib                                           ./libraries/crosser/                                  
vmap       crosser                                   ./libraries/crosser/                                  
ensure_lib                                           ./libraries/rsp_mux/                                  
vmap       rsp_mux                                   ./libraries/rsp_mux/                                  
ensure_lib                                           ./libraries/rsp_demux/                                
vmap       rsp_demux                                 ./libraries/rsp_demux/                                
ensure_lib                                           ./libraries/cmd_mux/                                  
vmap       cmd_mux                                   ./libraries/cmd_mux/                                  
ensure_lib                                           ./libraries/cmd_demux/                                
vmap       cmd_demux                                 ./libraries/cmd_demux/                                
ensure_lib                                           ./libraries/hps_0_h2f_lw_axi_master_wr_limiter/       
vmap       hps_0_h2f_lw_axi_master_wr_limiter        ./libraries/hps_0_h2f_lw_axi_master_wr_limiter/       
ensure_lib                                           ./libraries/router_002/                               
vmap       router_002                                ./libraries/router_002/                               
ensure_lib                                           ./libraries/router/                                   
vmap       router                                    ./libraries/router/                                   
ensure_lib                                           ./libraries/hps_0_h2f_axi_master_wr_rsp_width_adapter/
vmap       hps_0_h2f_axi_master_wr_rsp_width_adapter ./libraries/hps_0_h2f_axi_master_wr_rsp_width_adapter/
ensure_lib                                           ./libraries/sdram_s1_burst_adapter/                   
vmap       sdram_s1_burst_adapter                    ./libraries/sdram_s1_burst_adapter/                   
ensure_lib                                           ./libraries/router_003/                               
vmap       router_003                                ./libraries/router_003/                               
ensure_lib                                           ./libraries/sdram_s1_agent_rsp_fifo/                  
vmap       sdram_s1_agent_rsp_fifo                   ./libraries/sdram_s1_agent_rsp_fifo/                  
ensure_lib                                           ./libraries/sdram_s1_agent/                           
vmap       sdram_s1_agent                            ./libraries/sdram_s1_agent/                           
ensure_lib                                           ./libraries/alt_vip_vfr_0_avalon_master_agent/        
vmap       alt_vip_vfr_0_avalon_master_agent         ./libraries/alt_vip_vfr_0_avalon_master_agent/        
ensure_lib                                           ./libraries/hps_0_h2f_axi_master_agent/               
vmap       hps_0_h2f_axi_master_agent                ./libraries/hps_0_h2f_axi_master_agent/               
ensure_lib                                           ./libraries/sdram_s1_translator/                      
vmap       sdram_s1_translator                       ./libraries/sdram_s1_translator/                      
ensure_lib                                           ./libraries/alt_vip_vfr_0_avalon_master_translator/   
vmap       alt_vip_vfr_0_avalon_master_translator    ./libraries/alt_vip_vfr_0_avalon_master_translator/   
ensure_lib                                           ./libraries/hps_io/                                   
vmap       hps_io                                    ./libraries/hps_io/                                   
ensure_lib                                           ./libraries/fpga_interfaces/                          
vmap       fpga_interfaces                           ./libraries/fpga_interfaces/                          
ensure_lib                                           ./libraries/rst_controller/                           
vmap       rst_controller                            ./libraries/rst_controller/                           
ensure_lib                                           ./libraries/irq_mapper/                               
vmap       irq_mapper                                ./libraries/irq_mapper/                               
ensure_lib                                           ./libraries/mm_interconnect_1/                        
vmap       mm_interconnect_1                         ./libraries/mm_interconnect_1/                        
ensure_lib                                           ./libraries/mm_interconnect_0/                        
vmap       mm_interconnect_0                         ./libraries/mm_interconnect_0/                        
ensure_lib                                           ./libraries/sdram/                                    
vmap       sdram                                     ./libraries/sdram/                                    
ensure_lib                                           ./libraries/pll_stream/                               
vmap       pll_stream                                ./libraries/pll_stream/                               
ensure_lib                                           ./libraries/pll_sdram/                                
vmap       pll_sdram                                 ./libraries/pll_sdram/                                
ensure_lib                                           ./libraries/hps_0/                                    
vmap       hps_0                                     ./libraries/hps_0/                                    
ensure_lib                                           ./libraries/alt_vip_vfr_0/                            
vmap       alt_vip_vfr_0                             ./libraries/alt_vip_vfr_0/                            
ensure_lib                                           ./libraries/alt_vip_tpg_0/                            
vmap       alt_vip_tpg_0                             ./libraries/alt_vip_tpg_0/                            
ensure_lib                                           ./libraries/alt_vip_mix_0/                            
vmap       alt_vip_mix_0                             ./libraries/alt_vip_mix_0/                            
ensure_lib                                           ./libraries/alt_vip_itc_0/                            
vmap       alt_vip_itc_0                             ./libraries/alt_vip_itc_0/                            
ensure_lib                                           ./libraries/LOG_Generate_0/                           
vmap       LOG_Generate_0                            ./libraries/LOG_Generate_0/                           

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
    eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
    eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                                               -work altera_common_sv_packages                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                                        -work altera_common_sv_packages                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                                               -work altera_common_sv_packages                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_avalon_st_adapter_error_adapter_0.sv" -L altera_common_sv_packages -work error_adapter_0                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -L altera_common_sv_packages -work error_adapter_0                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                     -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                   -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                     -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                     -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io_border_memory.sv"                          -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io_border_hps_io.sv"                          -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io_border.sv"                                 -L altera_common_sv_packages -work border                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_avalon_st_adapter_timing_adapter_0.sv"                  -L altera_common_sv_packages -work timing_adapter_0                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_avalon_st_adapter_timing_adapter_0_fifo.sv"             -L altera_common_sv_packages -work timing_adapter_0                         
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_avalon_st_adapter_data_format_adapter_0.sv"             -L altera_common_sv_packages -work data_format_adapter_0                    
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_avalon_st_adapter.v"                                               -work avalon_st_adapter                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_handshake_clock_crosser.v"                        -L altera_common_sv_packages -work crosser                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                  -L altera_common_sv_packages -work crosser                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                  -L altera_common_sv_packages -work crosser                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                   -L altera_common_sv_packages -work crosser                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_rsp_mux.sv"                           -L altera_common_sv_packages -work rsp_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                       -L altera_common_sv_packages -work rsp_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_rsp_demux.sv"                         -L altera_common_sv_packages -work rsp_demux                                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_cmd_mux.sv"                           -L altera_common_sv_packages -work cmd_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                       -L altera_common_sv_packages -work cmd_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_cmd_demux.sv"                         -L altera_common_sv_packages -work cmd_demux                                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                  -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter       
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                   -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter       
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                           -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter       
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                  -L altera_common_sv_packages -work hps_0_h2f_lw_axi_master_wr_limiter       
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_router_002.sv"                        -L altera_common_sv_packages -work router_002                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_router.sv"                            -L altera_common_sv_packages -work router                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_avalon_st_adapter.v"                                               -work avalon_st_adapter                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                    -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_rsp_width_adapter
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_rsp_width_adapter
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                               -L altera_common_sv_packages -work hps_0_h2f_axi_master_wr_rsp_width_adapter
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_mux.sv"                           -L altera_common_sv_packages -work rsp_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                       -L altera_common_sv_packages -work rsp_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_demux.sv"                         -L altera_common_sv_packages -work rsp_demux                                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_mux.sv"                           -L altera_common_sv_packages -work cmd_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                       -L altera_common_sv_packages -work cmd_mux                                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_demux.sv"                         -L altera_common_sv_packages -work cmd_demux                                
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                    -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                             -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                               -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                    -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                    -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                 -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                  -L altera_common_sv_packages -work sdram_s1_burst_adapter                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_003.sv"                        -L altera_common_sv_packages -work router_003                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_002.sv"                        -L altera_common_sv_packages -work router_002                               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router.sv"                            -L altera_common_sv_packages -work router                                   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                                        -work sdram_s1_agent_rsp_fifo                  
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                      -L altera_common_sv_packages -work sdram_s1_agent                           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                               -L altera_common_sv_packages -work sdram_s1_agent                           
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                     -L altera_common_sv_packages -work alt_vip_vfr_0_avalon_master_agent        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                                    -L altera_common_sv_packages -work hps_0_h2f_axi_master_agent               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                -L altera_common_sv_packages -work hps_0_h2f_axi_master_agent               
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                 -L altera_common_sv_packages -work sdram_s1_translator                      
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                -L altera_common_sv_packages -work alt_vip_vfr_0_avalon_master_translator   
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io.v"                                                                      -work hps_io                                   
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                     -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                                              -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                                 -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                                 -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                                  -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                   -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                     -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                     -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_fpga_interfaces.sv"                               -L altera_common_sv_packages -work fpga_interfaces                          
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                                      -work rst_controller                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                                    -work rst_controller                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_avalon_st_adapter.v"                                                                 -work avalon_st_adapter                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_irq_mapper.sv"                                          -L altera_common_sv_packages -work irq_mapper                               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1.v"                                                                 -work mm_interconnect_1                        
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0.v"                                                                 -work mm_interconnect_0                        
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_timing_adapter_0.sv"                                    -L altera_common_sv_packages -work timing_adapter_0                         
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_sdram.v"                                                                             -work sdram                                    
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_pll_stream.vo"                                                                       -work pll_stream                               
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_pll_sdram.vo"                                                                        -work pll_sdram                                
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_hps_0.v"                                                                             -work hps_0                                    
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_alt_vip_vfr_0.vo"                                                                    -work alt_vip_vfr_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_alt_vip_tpg_0.vo"                                                                    -work alt_vip_tpg_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_alt_vip_mix_0.vo"                                                                    -work alt_vip_mix_0                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/alt_vipitc131_IS2Vid.sv"                                           -L altera_common_sv_packages -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_IS2Vid_sync_compare.v"                                                            -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_IS2Vid_calculate_mode.v"                                                          -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_IS2Vid_control.v"                                                                 -work alt_vip_itc_0                            
  eval  vlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/alt_vipitc131_IS2Vid_mode_banks.sv"                                -L altera_common_sv_packages -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_IS2Vid_statemachine.v"                                                            -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_fifo.v"                                                                    -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_generic_count.v"                                                           -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_to_binary.v"                                                               -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_sync.v"                                                                    -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_trigger_sync.v"                                                            -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_sync_generation.v"                                                         -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_frame_counter.v"                                                           -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/alt_vipitc131_common_sample_counter.v"                                                          -work alt_vip_itc_0                            
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/log_fifo.v"                                                                                     -work LOG_Generate_0                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/log_generator.v"                                                                                -work LOG_Generate_0                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/log_rom.v"                                                                                      -work LOG_Generate_0                           
  eval  vlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/soc_system.v"                                                                                                                                             
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L border -L timing_adapter_0 -L data_format_adapter_0 -L avalon_st_adapter -L crosser -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L hps_0_h2f_lw_axi_master_wr_limiter -L router_002 -L router -L hps_0_h2f_axi_master_wr_rsp_width_adapter -L sdram_s1_burst_adapter -L router_003 -L sdram_s1_agent_rsp_fifo -L sdram_s1_agent -L alt_vip_vfr_0_avalon_master_agent -L hps_0_h2f_axi_master_agent -L sdram_s1_translator -L alt_vip_vfr_0_avalon_master_translator -L hps_io -L fpga_interfaces -L rst_controller -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L sdram -L pll_stream -L pll_sdram -L hps_0 -L alt_vip_vfr_0 -L alt_vip_tpg_0 -L alt_vip_mix_0 -L alt_vip_itc_0 -L LOG_Generate_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L altera_common_sv_packages -L error_adapter_0 -L border -L timing_adapter_0 -L data_format_adapter_0 -L avalon_st_adapter -L crosser -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L hps_0_h2f_lw_axi_master_wr_limiter -L router_002 -L router -L hps_0_h2f_axi_master_wr_rsp_width_adapter -L sdram_s1_burst_adapter -L router_003 -L sdram_s1_agent_rsp_fifo -L sdram_s1_agent -L alt_vip_vfr_0_avalon_master_agent -L hps_0_h2f_axi_master_agent -L sdram_s1_translator -L alt_vip_vfr_0_avalon_master_translator -L hps_io -L fpga_interfaces -L rst_controller -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L sdram -L pll_stream -L pll_sdram -L hps_0 -L alt_vip_vfr_0 -L alt_vip_tpg_0 -L alt_vip_mix_0 -L alt_vip_itc_0 -L LOG_Generate_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
