
// Efinity Top-level template
// Version: 2023.2.307
// Date: 2024-04-21 19:01

// Copyright (C) 2013 - 2023 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as D:\Effinity\project\Uartecho\Uartecho.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  Uartecho
//     #4)  Insert design content.


module Uartecho
(
  input my_pll_refclk,
  input system_spi_0_io_data_0_read,
  input system_spi_0_io_data_1_read,
  input system_spi_0_io_data_2_read,
  input system_spi_0_io_data_3_read,
  input systemClk_locked,
  input io_asyncResetn,
  input system_uart_0_io_rxd,
  input io_systemClk,
  input jtag_inst1_CAPTURE,
  input jtag_inst1_DRCK,
  input jtag_inst1_RESET,
  input jtag_inst1_RUNTEST,
  input jtag_inst1_SEL,
  input jtag_inst1_SHIFT,
  input jtag_inst1_TCK,
  input jtag_inst1_TDI,
  input jtag_inst1_TMS,
  input jtag_inst1_UPDATE,
  output system_spi_0_io_data_0_write,
  output system_spi_0_io_data_0_writeEnable,
  output system_spi_0_io_data_1_write,
  output system_spi_0_io_data_1_writeEnable,
  output system_spi_0_io_data_2_write,
  output system_spi_0_io_data_2_writeEnable,
  output system_spi_0_io_data_3_write,
  output system_spi_0_io_data_3_writeEnable,
  output system_spi_0_io_sclk_write,
  output system_spi_0_io_ss,
  output systemClk_rstn,
  output system_uart_0_io_txd,
  output jtag_inst1_TDO
);


endmodule

