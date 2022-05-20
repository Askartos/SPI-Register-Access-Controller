//`timescale 1ns / 1ps
module drac
	(
	input SCK,
	input CS,
	input MOSI,
	output MISO,
	input clk,
	input rst,
  input  [3:0] regr_0,
  input  [6:0] regr_1,
  input  [7:0] regr_2,
  input  [7:0] regr_3,
  input  [7:0] regr_4,
  input  [7:0] regr_5,
  output [7:0] regwr_0,
  output [7:0] regwr_1,
  output [7:0] regwr_2,
  output [7:0] regwr_3,
  output [2:0] regwr_4,
  output [7:0] regwr_5,
  output [3:0] regwr_6,
  output [1:0] regwr_7,
  output [4:0] regwr_8,
  output [4:0] regwr_9,
  output [4:0] regwr_10,
  output [4:0] regwr_11,
  output       regwr_12,
  output       regwr_13,
  output       regwr_14,
  output [2:0] regwr_15,
  output [2:0] regwr_16,
  output [1:0] regwr_17,
  output [1:0] regwr_18,
  output       regwr_19,
  output       regwr_20,
  output [1:0] regwr_21,
  output       regwr_22,
  output [6:0] regwr_23,
  output       regwr_24,
  output       regwr_25,
  output       regwr_26,
  output [3:0] regwr_27,
  output [3:0] regwr_28,
  output       regwr_29,
  output       regwr_30,
  output       regwr_31,
  output [2:0] regwr_32,
  output [2:0] regwr_33,
  output [2:0] regwr_34,
  output       regwr_35,
  output       regwr_36,
  output       regwr_37,
  output       regwr_38,
  output       regwr_39,
  output [7:0] regwr_40,
  output [7:0] regwr_41
		);

//*** SPI***
	wire ready;
	wire [7:0]datar;
	wire [7:0]dataw;
	wire valid;
	spi SPI(
	.SCK(SCK),
	.MOSI(MOSI),
	.MISO(MISO),
	.CS(CS),
	.ready(ready),
	.datar(datar),
	.dataw(dataw),
	.valid(valid),
	.rst(rst),
	.clk(clk)
	);
//*************
//** ACCESS CONTROLLER***
localparam nregwr =41;//number of regwr -1
localparam nregr =6;//number of regr
wire we;
wire [7:0] data_out;
wire [7:0] data_in;
wire [$clog2(nregwr+nregr)-1:0] addr;
access_controler#(nregwr,nregr) CONTROL(
	.we(we),
	.data_out(data_out),
	.addr(addr),
	.data_in(data_in),
	.ready(ready),
	.datar(datar),
	.dataw(dataw),
	.valid(valid),
	.rst(rst),
	.clk(clk)
		);
//**********************
//****** REGISTERS *******
registers REGS	(
	.we(we),
	.dataw(data_out),
	.addr(addr),
	.datar(data_in),
	.rst(rst),
	.clk(clk),
	.regr_0(regr_0),
	.regr_1(regr_1),
	.regr_2(regr_2),
	.regr_3(regr_3),
	.regr_4(regr_4),
	.regr_5(regr_5),
	.regwr_0(regwr_0),
	.regwr_1(regwr_1),
	.regwr_2(regwr_2),
	.regwr_3(regwr_3),
	.regwr_4(regwr_4),
	.regwr_5(regwr_5),
	.regwr_6(regwr_6),
	.regwr_7(regwr_7),
	.regwr_8(regwr_8),
	.regwr_9(regwr_9),
	.regwr_10(regwr_10),
	.regwr_11(regwr_11),
	.regwr_12(regwr_12),
	.regwr_13(regwr_13),
	.regwr_14(regwr_14),
	.regwr_15(regwr_15),
	.regwr_16(regwr_16),
	.regwr_17(regwr_17),
	.regwr_18(regwr_18),
	.regwr_19(regwr_19),
	.regwr_20(regwr_20),
	.regwr_21(regwr_21),
	.regwr_22(regwr_22),
	.regwr_23(regwr_23),
	.regwr_24(regwr_24),
	.regwr_25(regwr_25),
	.regwr_26(regwr_26),
	.regwr_27(regwr_27),
	.regwr_28(regwr_28),
	.regwr_29(regwr_29),
	.regwr_30(regwr_30),
	.regwr_31(regwr_31),
	.regwr_32(regwr_32),
	.regwr_33(regwr_33),
	.regwr_34(regwr_34),
	.regwr_35(regwr_35),
	.regwr_36(regwr_36),
	.regwr_37(regwr_37),
	.regwr_38(regwr_38),
	.regwr_39(regwr_39),
	.regwr_40(regwr_40),
	.regwr_41(regwr_41)		
		);
//************************
endmodule
