// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jun 17 20:35:29 2013
// ============================================================================

`define ENABLE_HPS
`define ENABLE_USB

module DE1_SOC_golden_top(
        ///////// ADC /////////
      output             ADC_CS_N,
      output             ADC_DIN,
      input              ADC_DOUT,
      output             ADC_SCLK,

      ///////// AUD /////////
		
		input               AUD_ADCDAT,
		inout               AUD_ADCLRCK,
		inout               AUD_BCLK,
		output              AUD_DACDAT,
		inout               AUD_DACLRCK,
		output              AUD_XCK,
      ///////// CLOCK2 /////////
      input              CLOCK2_50,

      ///////// CLOCK3 /////////
      input              CLOCK3_50,

      ///////// CLOCK4 /////////
      input              CLOCK4_50,

      ///////// CLOCK /////////
      input              CLOCK_50,

      ///////// DRAM /////////
      output      [12:0] DRAM_ADDR,
      output      [1:0]  DRAM_BA,
      output             DRAM_CAS_N,
      output             DRAM_CKE,
      output             DRAM_CLK,
      output             DRAM_CS_N,
      inout       [15:0] DRAM_DQ,
      output             DRAM_LDQM,
      output             DRAM_RAS_N,
      output             DRAM_UDQM,
      output             DRAM_WE_N,

      ///////// FAN /////////
      output             FAN_CTRL,

      ///////// FPGA /////////
      output             FPGA_I2C_SCLK,
      inout              FPGA_I2C_SDAT,

      ///////// GPIO /////////
      inout       [35:0] GPIO_0,
      inout       [35:0] GPIO_1,

      ///////// HEX0 /////////
      output      [6:0]  HEX0,

      ///////// HEX1 /////////
      output      [6:0]  HEX1,

      ///////// HEX2 /////////
      output      [6:0]  HEX2,

      ///////// HEX3 /////////
      output      [6:0]  HEX3,

      ///////// HEX4 /////////
      output      [6:0]  HEX4,

      ///////// HEX5 /////////
      output      [6:0]  HEX5,

`ifdef ENABLE_HPS
      ///////// HPS /////////
//      input              HPS_CLOCK1_25,
//      input              HPS_CLOCK2_25,
      inout              HPS_CONV_USB_N,
      output      [14:0] HPS_DDR3_ADDR,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_N,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_N,
      output             HPS_DDR3_CK_P,
      output             HPS_DDR3_CS_N,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_N,
      inout       [3:0]  HPS_DDR3_DQS_P,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_N,
      output             HPS_DDR3_RESET_N,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_N,
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_N,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,
      inout       [1:0]  HPS_GPIO,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C1_SCLK,
      inout              HPS_I2C1_SDAT,
      inout              HPS_I2C2_SCLK,
      inout              HPS_I2C2_SDAT,
      inout              HPS_I2C_CONTROL,
      inout              HPS_KEY,
      inout              HPS_LED,
//      input              HPS_RESET_N,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      inout              HPS_SPIM_SS,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
//      output             HPS_WARM_RST_N,
`endif /*ENABLE_HPS*/

      ///////// IRDA /////////
      input              IRDA_RXD,
      output             IRDA_TXD,

      ///////// KEY /////////
      input       [3:0]  KEY,

      ///////// LEDR /////////
      output      [9:0]  LEDR,

      ///////// PS2 /////////
      inout              PS2_CLK,
      inout              PS2_CLK2,
      inout              PS2_DAT,
      inout              PS2_DAT2,

      ///////// SW /////////
      input       [9:0]  SW,
      ///////// TD /////////
      inout              TD_CLK27,
      output      [7:0]  TD_DATA,
      output             TD_HS,
      output             TD_RESET_N,
      output             TD_VS,

`ifdef ENABLE_USB
      ///////// USB /////////
      input              USB_B2_CLK,
      inout       [7:0]  USB_B2_DATA,
      output             USB_EMPTY,
      output             USB_FULL,
      input              USB_OE_N,
      input              USB_RD_N,
      input              USB_RESET_N,
      inout              USB_SCL,
      inout              USB_SDA,
      input              USB_WR_N,
`endif /*ENABLE_USB*/

      ///////// VGA /////////
      output             VGA_BLANK_N,
      output      [7:0]  VGA_B,
      output             VGA_CLK,
      output      [7:0]  VGA_G,
      output             VGA_HS,
      output      [7:0]  VGA_R,
      output             VGA_SYNC_N,
      output             VGA_VS
);


//=======================================================
//  REG/WIRE declarations
//=======================================================
wire clk_148_5;
wire				STEP;
wire				RESET;
wire	 [31:0]	H2F;
wire				DONE;
wire	 [31:0]	CODE_X;
wire	 [31:0]	CODE_Y;
wire	 [31:0]	CODE_Z;
wire	 [31:0]	CODE_W;
wire	 [12:0]	F2H;

//=======================================================
//  Structural coding
//=======================================================

soc_system u0 (
        .clk_clk                               ( CLOCK_50),                          	 //             clk.clk
        .reset_reset_n                         ( 1'b1),                      //           reset.reset_n
        .memory_mem_a                          ( HPS_DDR3_ADDR),                          //          memory.mem_a
        .memory_mem_ba                         ( HPS_DDR3_BA),                         //                .mem_ba
        .memory_mem_ck                         ( HPS_DDR3_CK_P),                         //                .mem_ck
        .memory_mem_ck_n                       ( HPS_DDR3_CK_N),                       //                .mem_ck_n
        .memory_mem_cke                        ( HPS_DDR3_CKE),                        //                .mem_cke
        .memory_mem_cs_n                       ( HPS_DDR3_CS_N),                       //                .mem_cs_n
        .memory_mem_ras_n                      ( HPS_DDR3_RAS_N),                      //                .mem_ras_n
        .memory_mem_cas_n                      ( HPS_DDR3_CAS_N),                      //                .mem_cas_n
        .memory_mem_we_n                       ( HPS_DDR3_WE_N),                       //                .mem_we_n
        .memory_mem_reset_n                    ( HPS_DDR3_RESET_N),                    //                .mem_reset_n
        .memory_mem_dq                         ( HPS_DDR3_DQ),                         //                .mem_dq
        .memory_mem_dqs                        ( HPS_DDR3_DQS_P),                        //                .mem_dqs
        .memory_mem_dqs_n                      ( HPS_DDR3_DQS_N),                      //                .mem_dqs_n
        .memory_mem_odt                        ( HPS_DDR3_ODT),                        //                .mem_odt
        .memory_mem_dm                         ( HPS_DDR3_DM),                         //                .mem_dm
        .memory_oct_rzqin                      ( HPS_DDR3_RZQ),                      //                .oct_rzqin
       		
	     .hps_0_hps_io_hps_io_emac1_inst_TX_CLK ( HPS_ENET_GTX_CLK), //                   hps_0_hps_io.hps_io_emac1_inst_TX_CLK
        .hps_0_hps_io_hps_io_emac1_inst_TXD0   ( HPS_ENET_TX_DATA[0] ),   //                               .hps_io_emac1_inst_TXD0
        .hps_0_hps_io_hps_io_emac1_inst_TXD1   ( HPS_ENET_TX_DATA[1] ),   //                               .hps_io_emac1_inst_TXD1
        .hps_0_hps_io_hps_io_emac1_inst_TXD2   ( HPS_ENET_TX_DATA[2] ),   //                               .hps_io_emac1_inst_TXD2
        .hps_0_hps_io_hps_io_emac1_inst_TXD3   ( HPS_ENET_TX_DATA[3] ),   //                               .hps_io_emac1_inst_TXD3
        .hps_0_hps_io_hps_io_emac1_inst_RXD0   ( HPS_ENET_RX_DATA[0] ),   //                               .hps_io_emac1_inst_RXD0
        .hps_0_hps_io_hps_io_emac1_inst_MDIO   ( HPS_ENET_MDIO ),   //                               .hps_io_emac1_inst_MDIO
        .hps_0_hps_io_hps_io_emac1_inst_MDC    ( HPS_ENET_MDC  ),    //                               .hps_io_emac1_inst_MDC
        .hps_0_hps_io_hps_io_emac1_inst_RX_CTL ( HPS_ENET_RX_DV), //                               .hps_io_emac1_inst_RX_CTL
        .hps_0_hps_io_hps_io_emac1_inst_TX_CTL ( HPS_ENET_TX_EN), //                               .hps_io_emac1_inst_TX_CTL
        .hps_0_hps_io_hps_io_emac1_inst_RX_CLK ( HPS_ENET_RX_CLK), //                               .hps_io_emac1_inst_RX_CLK
        .hps_0_hps_io_hps_io_emac1_inst_RXD1   ( HPS_ENET_RX_DATA[1] ),   //                               .hps_io_emac1_inst_RXD1
        .hps_0_hps_io_hps_io_emac1_inst_RXD2   ( HPS_ENET_RX_DATA[2] ),   //                               .hps_io_emac1_inst_RXD2
        .hps_0_hps_io_hps_io_emac1_inst_RXD3   ( HPS_ENET_RX_DATA[3] ),   //                               .hps_io_emac1_inst_RXD3
        
		  
		  .hps_0_hps_io_hps_io_qspi_inst_IO0     ( HPS_FLASH_DATA[0]    ),     //                               .hps_io_qspi_inst_IO0
        .hps_0_hps_io_hps_io_qspi_inst_IO1     ( HPS_FLASH_DATA[1]    ),     //                               .hps_io_qspi_inst_IO1
        .hps_0_hps_io_hps_io_qspi_inst_IO2     ( HPS_FLASH_DATA[2]    ),     //                               .hps_io_qspi_inst_IO2
        .hps_0_hps_io_hps_io_qspi_inst_IO3     ( HPS_FLASH_DATA[3]    ),     //                               .hps_io_qspi_inst_IO3
        .hps_0_hps_io_hps_io_qspi_inst_SS0     ( HPS_FLASH_NCSO    ),     //                               .hps_io_qspi_inst_SS0
        .hps_0_hps_io_hps_io_qspi_inst_CLK     ( HPS_FLASH_DCLK    ),     //                               .hps_io_qspi_inst_CLK
        
		  .hps_0_hps_io_hps_io_sdio_inst_CMD     ( HPS_SD_CMD    ),     //                               .hps_io_sdio_inst_CMD
        .hps_0_hps_io_hps_io_sdio_inst_D0      ( HPS_SD_DATA[0]     ),      //                               .hps_io_sdio_inst_D0
        .hps_0_hps_io_hps_io_sdio_inst_D1      ( HPS_SD_DATA[1]     ),      //                               .hps_io_sdio_inst_D1
        .hps_0_hps_io_hps_io_sdio_inst_CLK     ( HPS_SD_CLK   ),     //                               .hps_io_sdio_inst_CLK
        .hps_0_hps_io_hps_io_sdio_inst_D2      ( HPS_SD_DATA[2]     ),      //                               .hps_io_sdio_inst_D2
        .hps_0_hps_io_hps_io_sdio_inst_D3      ( HPS_SD_DATA[3]     ),      //                               .hps_io_sdio_inst_D3
        		  
		  .hps_0_hps_io_hps_io_usb1_inst_D0      ( HPS_USB_DATA[0]    ),      //                               .hps_io_usb1_inst_D0
        .hps_0_hps_io_hps_io_usb1_inst_D1      ( HPS_USB_DATA[1]    ),      //                               .hps_io_usb1_inst_D1
        .hps_0_hps_io_hps_io_usb1_inst_D2      ( HPS_USB_DATA[2]    ),      //                               .hps_io_usb1_inst_D2
        .hps_0_hps_io_hps_io_usb1_inst_D3      ( HPS_USB_DATA[3]    ),      //                               .hps_io_usb1_inst_D3
        .hps_0_hps_io_hps_io_usb1_inst_D4      ( HPS_USB_DATA[4]    ),      //                               .hps_io_usb1_inst_D4
        .hps_0_hps_io_hps_io_usb1_inst_D5      ( HPS_USB_DATA[5]    ),      //                               .hps_io_usb1_inst_D5
        .hps_0_hps_io_hps_io_usb1_inst_D6      ( HPS_USB_DATA[6]    ),      //                               .hps_io_usb1_inst_D6
        .hps_0_hps_io_hps_io_usb1_inst_D7      ( HPS_USB_DATA[7]    ),      //                               .hps_io_usb1_inst_D7
        .hps_0_hps_io_hps_io_usb1_inst_CLK     ( HPS_USB_CLKOUT    ),     //                               .hps_io_usb1_inst_CLK
        .hps_0_hps_io_hps_io_usb1_inst_STP     ( HPS_USB_STP    ),     //                               .hps_io_usb1_inst_STP
        .hps_0_hps_io_hps_io_usb1_inst_DIR     ( HPS_USB_DIR    ),     //                               .hps_io_usb1_inst_DIR
        .hps_0_hps_io_hps_io_usb1_inst_NXT     ( HPS_USB_NXT    ),     //                               .hps_io_usb1_inst_NXT
        		  
		  .hps_0_hps_io_hps_io_spim1_inst_CLK    ( HPS_SPIM_CLK  ),    //                               .hps_io_spim1_inst_CLK
        .hps_0_hps_io_hps_io_spim1_inst_MOSI   ( HPS_SPIM_MOSI ),   //                               .hps_io_spim1_inst_MOSI
        .hps_0_hps_io_hps_io_spim1_inst_MISO   ( HPS_SPIM_MISO ),   //                               .hps_io_spim1_inst_MISO
        .hps_0_hps_io_hps_io_spim1_inst_SS0    ( HPS_SPIM_SS ),    //                               .hps_io_spim1_inst_SS0
      		
		  .hps_0_hps_io_hps_io_uart0_inst_RX     ( HPS_UART_RX    ),     //                               .hps_io_uart0_inst_RX
        .hps_0_hps_io_hps_io_uart0_inst_TX     ( HPS_UART_TX    ),     //                               .hps_io_uart0_inst_TX
		
		  .hps_0_hps_io_hps_io_i2c0_inst_SDA     ( HPS_I2C1_SDAT    ),     //                               .hps_io_i2c0_inst_SDA
        .hps_0_hps_io_hps_io_i2c0_inst_SCL     ( HPS_I2C1_SCLK    ),     //                               .hps_io_i2c0_inst_SCL
		
		  .hps_0_hps_io_hps_io_i2c1_inst_SDA     ( HPS_I2C2_SDAT    ),     //                               .hps_io_i2c1_inst_SDA
        .hps_0_hps_io_hps_io_i2c1_inst_SCL     ( HPS_I2C2_SCLK    ),     //                               .hps_io_i2c1_inst_SCL
        
		  .hps_0_hps_io_hps_io_gpio_inst_GPIO09  ( HPS_CONV_USB_N),  //                               .hps_io_gpio_inst_GPIO09
        .hps_0_hps_io_hps_io_gpio_inst_GPIO35  ( HPS_ENET_INT_N),  //                               .hps_io_gpio_inst_GPIO35
        .hps_0_hps_io_hps_io_gpio_inst_GPIO40  ( HPS_GPIO[0]),  //                               .hps_io_gpio_inst_GPIO40
        .hps_0_hps_io_hps_io_gpio_inst_GPIO41  ( HPS_GPIO[1]),  //                               .hps_io_gpio_inst_GPIO41
        .hps_0_hps_io_hps_io_gpio_inst_GPIO48  ( HPS_I2C_CONTROL),  //                               .hps_io_gpio_inst_GPIO48
        .hps_0_hps_io_hps_io_gpio_inst_GPIO53  ( HPS_LED),  //                               .hps_io_gpio_inst_GPIO53
        .hps_0_hps_io_hps_io_gpio_inst_GPIO54  ( HPS_KEY),  //                               .hps_io_gpio_inst_GPIO54
        .hps_0_hps_io_hps_io_gpio_inst_GPIO61  ( HPS_GSENSOR_INT),  //                               .hps_io_gpio_inst_GPIO61
        
        .hps_0_h2f_reset_reset_n               ( 1'b1 ),                //                hps_0_h2f_reset.reset_n
        .clock_bridge_148_5_out_clk_clk            (clk_148_5),            //     clock_bridge_148_5_out_clk.clk
        .sdram_clk_clk                             (HPS_DRAM_CLK),                             //                      sdram_clk.clk
        .sdram_wire_addr                           (HPS_DRAM_ADDR),                           //                     sdram_wire.addr
        .sdram_wire_ba                             (HPS_DRAM_BA ),                             //                               .ba
        .sdram_wire_cas_n                          (HPS_DRAM_CAS_N ),                          //                               .cas_n
        .sdram_wire_cke                            (HPS_DRAM_CKE ),                            //                               .cke
        .sdram_wire_cs_n                           (HPS_DRAM_CS_N ),                           //                               .cs_n
        .sdram_wire_dq                             (HPS_DRAM_DQ ),                             //                               .dq
        .sdram_wire_dqm                            ({HPS_DRAM_UDQM,HPS_DRAM_LDQM} ),                            //                               .dqm
        .sdram_wire_ras_n                          (HPS_DRAM_RAS_N ),                          //                               .ras_n
        .sdram_wire_we_n                           (HPS_DRAM_WE_N),                           //                               .we_n
        .hps_sdram_wire_oe									(HPS_DRAM_WIRE_OE),
		  .alt_vip_itc_0_clocked_video_vid_clk       (clk_148_5 ),       //    alt_vip_itc_0_clocked_video.vid_clk
        .alt_vip_itc_0_clocked_video_vid_data      ({VGA_R,VGA_G,VGA_B} ),      //                               .vid_data
        .alt_vip_itc_0_clocked_video_underflow     ( ),     //                               .underflow
        .alt_vip_itc_0_clocked_video_vid_datavalid ( ), //                               .vid_datavalid
        .alt_vip_itc_0_clocked_video_vid_v_sync    (VGA_VS ),    //                               .vid_v_sync
        .alt_vip_itc_0_clocked_video_vid_h_sync    (VGA_HS),    //                               .vid_h_sync
        .alt_vip_itc_0_clocked_video_vid_f         ( ),         //                               .vid_f
        .alt_vip_itc_0_clocked_video_vid_h         ( ),         //                               .vid_h
        .alt_vip_itc_0_clocked_video_vid_v         ( ),          //      
			.pio_chaos_done_external_connection_export		( DONE),  //  pio_chaos_done_external_connection.export
			.pio_chaos_reset_external_connection_export		( RESET), // pio_chaos_reset_external_connection.export
			.pio_chaos_shift_external_connection_export		( H2F), // pio_chaos_shift_external_connection.export
			.pio_chaos_step_external_connection_export		( STEP),  //  pio_chaos_step_external_connection.export
			.pio_chaos_w_external_connection_export			( CODE_W),     //     pio_chaos_w_external_connection.export
			.pio_chaos_x_external_connection_export			( CODE_X),     //     pio_chaos_x_external_connection.export
			.pio_chaos_y_external_connection_export			( CODE_Y),     //     pio_chaos_y_external_connection.export
			.pio_chaos_z_external_connection_export			( CODE_Z),     //     pio_chaos_z_external_connection.export
			.pio_chaos_temp_external_connection_export		( F2H),
			.f2h_reset_n(test_h2f_reset_n)
	 );
assign  VGA_CLK=clk_148_5;	 
assign  VGA_SYNC_N=1'b0;	 
assign  VGA_BLANK_N=1'b1;
//assign  LEDR=10'h1555;

Chaos_Code c0 (
	 .CLK				( CLOCK_50 ),
	 .STEP			( STEP    ),
	 .RESET			( RESET   ),
	 //.SHIFT			( SHIFT   ),
	 .DONE			( DONE    ),
	 .CODE_X			( CODE_X  ),
	 .CODE_Y			( CODE_Y  ),
	 .CODE_Z			( CODE_Z  ),
	 .CODE_W			( CODE_W  )
);

//	SDRAM frame buffer
wire      [12:0] HPS_DRAM_ADDR;
wire      [1:0]  HPS_DRAM_BA;
wire             HPS_DRAM_CAS_N;
wire             HPS_DRAM_CKE;
wire             HPS_DRAM_CLK;
wire             HPS_DRAM_CS_N;
tri      [15:0] HPS_DRAM_DQ;
wire             HPS_DRAM_LDQM;
wire             HPS_DRAM_RAS_N;
wire             HPS_DRAM_UDQM;
wire             HPS_DRAM_WE_N;
wire				  HPS_DRAM_WIRE_OE;

wire      [12:0] FPGA_DRAM_ADDR;
wire      [1:0]  FPGA_DRAM_BA;
wire             FPGA_DRAM_CAS_N;
wire             FPGA_DRAM_CKE;
wire             FPGA_DRAM_CLK;
wire             FPGA_DRAM_CS_N;
tri      [15:0] FPGA_DRAM_DQ;
wire             FPGA_DRAM_LDQM;
wire             FPGA_DRAM_RAS_N;
wire             FPGA_DRAM_UDQM;
wire             FPGA_DRAM_WE_N;
wire				  FPGA_DRAM_WIRE_OE;		

Sdram_Control	u1	(	//	HOST Side
						   .REF_CLK(CLOCK_50),
					      .RESET_N(test_software_reset_n),
							//	FIFO Write Side 
						   .WR_DATA(writedata),
							.WR(write),
							.WR_ADDR(25'h0),
							.WR_MAX_ADDR(25'h0+25'h80000),		//	525-18
							.WR_LENGTH(9'h100),
							.WR_LOAD(!test_global_reset_n ),
							.WR_CLK(clk_test),
							.write_side_fifo_rusedw(writeuse),
							.SDRAM_WRITE(sdram_write),
							//	FIFO Read Side 
						   .RD_DATA(readdata),
				        	.RD(read),
				        	.RD_ADDR(25'h0),			//	Read odd field and bypess blanking
							.RD_MAX_ADDR(25'h0+25'h80000),
							.RD_LENGTH(9'h100),
				        	.RD_LOAD(!test_global_reset_n ),
							.RD_CLK(clk_test),
							.read_side_fifo_wusedw(readuse),
							.SDRAM_READ(sdram_read),
                     //	SDRAM Side
						   .SA(FPGA_DRAM_ADDR),
						   .BA(FPGA_DRAM_BA),
						   .CS_N(FPGA_DRAM_CS_N),
						   .CKE(FPGA_DRAM_CKE),
						   .RAS_N(FPGA_DRAM_RAS_N),
				         .CAS_N(FPGA_DRAM_CAS_N),
				         .WE_N(FPGA_DRAM_WE_N),
						   .DQ(FPGA_DRAM_DQ),
				         .DQM({FPGA_DRAM_UDQM,FPGA_DRAM_LDQM}),
							.SDR_CLK(FPGA_DRAM_CLK),
							.FPGA_SDRAM_OE(FPGA_DRAM_WIRE_OE));

wire  test_software_reset_n;
wire  test_global_reset_n;
wire  test_start_n;
wire  test_encrypt;
wire  test_decrypt;
wire  [15:0]  writedata;
wire  [15:0]  readdata;
wire          write;
wire          read;
wire          clk_test;
wire [1:0] AES_DONE;
wire test_sdram_hps;
wire test_h2f_reset_n;
wire [15:0] readuse;
wire [15:0] writeuse;
wire sdram_read;
wire sdram_write;

 RW_Test u2(
      .iCLK(clk_test),
		.iRST_n(test_software_reset_n),
		.iBUTTON(test_start_n),
      .write(write),
		.writedata(writedata),
	   .read(read),
		.readdata(readdata),
		.AES_ed_DONE(AES_DONE),
		.AES_ed_ENABLE({test_encrypt,test_decrypt}),
		.c_state(),
		.iCLOCK50(CLOCK_50),
		.CHAOS_KEY({CODE_X,CODE_Y,CODE_Z,CODE_W}),
		.ReadUse(readuse),
		.WriteUse(writeuse),
		.SDRAM_read(sdram_read),
		.SDRAM_write(sdram_write)
);

pll pll_u0(
		.refclk( CLOCK_50),   //  refclk.clk
		.rst(1'b0),      //   reset.reset
		.outclk_0(clk_test), // outclk0.clk
		.outclk_1(),
		.locked()    //  locked.export
	);

assign test_software_reset_n = H2F[0]; //1 0 1
assign test_global_reset_n = H2F[1];	//1 0 1
assign test_start_n = H2F[2];				//1 0 1
assign test_decrypt = H2F[3];
assign test_encrypt = H2F[4];
assign test_sdram_hps = H2F[5];
assign test_h2f_reset_n = H2F[6];
assign F2H[3] = AES_DONE[0];
assign F2H[4] = AES_DONE[1];

/*
assign DRAM_DQ = test_sdram_hps ? (HPS_DRAM_WE_N?16'hzzzz:HPS_DRAM_DQ_OUT) : (FPGA_DRAM_WE_N?16'hzzzz:FPGA_DRAM_DQ_OUT);
assign DRAM_ADDR = test_sdram_hps ? HPS_DRAM_ADDR : FPGA_DRAM_ADDR;
assign DRAM_BA = test_sdram_hps ? HPS_DRAM_BA : FPGA_DRAM_BA;
assign DRAM_CAS_N = test_sdram_hps ? HPS_DRAM_CAS_N : FPGA_DRAM_CAS_N;
assign DRAM_CKE = test_sdram_hps ? HPS_DRAM_CKE : FPGA_DRAM_CKE;
assign DRAM_CLK = test_sdram_hps ? HPS_DRAM_CLK : FPGA_DRAM_CLK;
assign DRAM_CS_N = test_sdram_hps ? HPS_DRAM_CS_N : FPGA_DRAM_CS_N;
assign DRAM_LDQM = test_sdram_hps ? HPS_DRAM_LDQM : FPGA_DRAM_LDQM;
assign RAM_RAS_N = test_sdram_hps ? HPS_DRAM_RAS_N : FPGA_DRAM_RAS_N;
assign DRAM_UDQM = test_sdram_hps ? HPS_DRAM_UDQM : FPGA_DRAM_UDQM;
assign DRAM_WE_N = test_sdram_hps ? HPS_DRAM_WE_N : FPGA_DRAM_WE_N;
*/

/*
assign DRAM_DQ = !H2F[5] ? HPS_DRAM_DQ : FPGA_DRAM_DQ;
assign DRAM_ADDR = !H2F[5] ? HPS_DRAM_ADDR : FPGA_DRAM_ADDR;
assign DRAM_BA = !H2F[5] ? HPS_DRAM_BA : FPGA_DRAM_BA;
assign DRAM_CAS_N = !H2F[5] ? HPS_DRAM_CAS_N : FPGA_DRAM_CAS_N;
assign DRAM_CKE = !H2F[5] ? HPS_DRAM_CKE : FPGA_DRAM_CKE;
assign DRAM_CLK = !H2F[5] ? HPS_DRAM_CLK : FPGA_DRAM_CLK;
assign DRAM_CS_N = !H2F[5] ? HPS_DRAM_CS_N : FPGA_DRAM_CS_N;
assign DRAM_LDQM = !H2F[5] ? HPS_DRAM_LDQM : FPGA_DRAM_LDQM;
assign DRAM_RAS_N = !H2F[5] ? HPS_DRAM_RAS_N : FPGA_DRAM_RAS_N;
assign DRAM_UDQM = !H2F[5] ? HPS_DRAM_UDQM : FPGA_DRAM_UDQM;
assign DRAM_WE_N = H2F[5] ? HPS_DRAM_WE_N : FPGA_DRAM_WE_N;
*/
/*
assign HPS_DRAM_DQ = !H2F[5] ? (HPS_DRAM_WIRE_OE? 16'hzzzz:DRAM_DQ) : 16'hzzzz;
assign DRAM_DQ = !H2F[5] ? (HPS_DRAM_WIRE_OE ? HPS_DRAM_DQ:16'hzzzz) : 16'hzzzz;
assign DRAM_ADDR = !H2F[5] ? HPS_DRAM_ADDR : 16'hzzzz;
assign DRAM_BA = !H2F[5] ? HPS_DRAM_BA : 16'hzzzz;
assign DRAM_CAS_N = !H2F[5] ? HPS_DRAM_CAS_N : 16'hzzzz;
assign DRAM_CKE = !H2F[5] ? HPS_DRAM_CKE : 16'hzzzz;
assign DRAM_CLK = !H2F[5] ? HPS_DRAM_CLK : 16'hzzzz;
assign DRAM_CS_N = !H2F[5] ? HPS_DRAM_CS_N : 16'hzzzz;
assign DRAM_LDQM = !H2F[5] ? HPS_DRAM_LDQM : 16'hzzzz;
assign DRAM_RAS_N = !H2F[5] ? HPS_DRAM_RAS_N : 16'hzzzz;
assign DRAM_UDQM = !H2F[5] ? HPS_DRAM_UDQM : 16'hzzzz;
assign DRAM_WE_N = !H2F[5] ? HPS_DRAM_WE_N : 16'hzzzz;


assign FPGA_DRAM_DQ = H2F[5] ? (FPGA_DRAM_WIRE_OE? 16'hzzzz:DRAM_DQ) : 16'hzzzz;
assign DRAM_DQ = H2F[5] ? (FPGA_DRAM_WIRE_OE ? FPGA_DRAM_DQ:16'hzzzz) : 16'hzzzz;
assign DRAM_ADDR = H2F[5] ? FPGA_DRAM_ADDR : 16'hzzzz;
assign DRAM_BA = H2F[5] ? FPGA_DRAM_BA : 16'hzzzz;
assign DRAM_CAS_N = H2F[5] ? FPGA_DRAM_CAS_N : 16'hzzzz;
assign DRAM_CKE = H2F[5] ? FPGA_DRAM_CKE : 16'hzzzz;
assign DRAM_CLK = H2F[5] ? FPGA_DRAM_CLK : 16'hzzzz;
assign DRAM_CS_N = H2F[5] ? FPGA_DRAM_CS_N : 16'hzzzz;
assign DRAM_LDQM = H2F[5] ? FPGA_DRAM_LDQM : 16'hzzzz;
assign DRAM_RAS_N = H2F[5] ? FPGA_DRAM_RAS_N : 16'hzzzz;
assign DRAM_UDQM = H2F[5] ? FPGA_DRAM_UDQM : 16'hzzzz;
assign DRAM_WE_N = H2F[5] ? FPGA_DRAM_WE_N : 16'hzzzz;
*/
assign FPGA_DRAM_DQ = H2F[5] ? (FPGA_DRAM_WIRE_OE? 16'hzzzz:DRAM_DQ) : 16'hzzzz;
assign HPS_DRAM_DQ = !H2F[5] ? (HPS_DRAM_WIRE_OE? 16'hzzzz:DRAM_DQ) : 16'hzzzz;
assign DRAM_DQ = !H2F[5] ? (HPS_DRAM_WIRE_OE ? HPS_DRAM_DQ:16'hzzzz) : (FPGA_DRAM_WIRE_OE ? FPGA_DRAM_DQ:16'hzzzz);
assign DRAM_ADDR = !H2F[5] ? HPS_DRAM_ADDR : FPGA_DRAM_ADDR;
assign DRAM_BA = !H2F[5] ? HPS_DRAM_BA : FPGA_DRAM_BA;
assign DRAM_CAS_N = !H2F[5] ? HPS_DRAM_CAS_N : FPGA_DRAM_CAS_N;
assign DRAM_CKE = !H2F[5] ? HPS_DRAM_CKE : FPGA_DRAM_CKE;
assign DRAM_CLK = !H2F[5] ? HPS_DRAM_CLK : FPGA_DRAM_CLK;
assign DRAM_CS_N = !H2F[5] ? HPS_DRAM_CS_N : FPGA_DRAM_CS_N;
assign DRAM_LDQM = !H2F[5] ? HPS_DRAM_LDQM : FPGA_DRAM_LDQM;
assign DRAM_RAS_N = !H2F[5] ? HPS_DRAM_RAS_N : FPGA_DRAM_RAS_N;
assign DRAM_UDQM = !H2F[5] ? HPS_DRAM_UDQM : FPGA_DRAM_UDQM;
assign DRAM_WE_N = !H2F[5] ? HPS_DRAM_WE_N : FPGA_DRAM_WE_N;

assign LEDR[0] = H2F[0];
assign LEDR[1] = H2F[1];
assign LEDR[2] = H2F[2];
assign LEDR[3] = H2F[3];
assign LEDR[4] = H2F[4];
assign LEDR[5] = H2F[5];
assign LEDR[6] = H2F[6];
assign LEDR[7] = F2H[3];
assign LEDR[8] = F2H[4];
assign LEDR[9] = H2F[5];

/*
always @(posedge clk_test)
begin
  if(test_sdram_hps)
	begin

	end
  else
	begin

	end
end
*/

endmodule
