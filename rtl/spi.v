/**********************************************************************
 * Created by Hanssel Morales. 
 * Last Rev.: 03-03-2020
 * SPI SLAVE INTERFACE
 **********************************************************************/
//`timescale 1ns / 1ps
module spi
	(
	input SCK,
	input CS,
	input MOSI,
	output MISO,
	input clk,
	input rst,
	input ready,
	input [7:0]datar,
	output [7:0]dataw,
	output reg valid
		);
	genvar i;
	//******** CS SYNCRONIZER*****
	reg [1:0]CS_sync;
	always @(posedge clk)begin
		CS_sync[0]<=CS;
		CS_sync[1]<=CS_sync[0];
	end
	//*****************************
	//******* SCK ANALYZER *******
	reg [1:0]SCK_sync;
	always @(posedge clk)begin
		if(rst)
			SCK_sync<=0; //due to spi mode
		else
			SCK_sync[0]<=SCK;
			SCK_sync[1]<=SCK_sync[0];
	end
	reg late_SCK;
	always @(posedge clk)begin
		if(rst)
			late_SCK<=0; //due to spi mode
		else
			late_SCK<=SCK_sync[1];
	end
	wire SCK_RE;
	wire SCK_FE;
	assign SCK_RE=~late_SCK & SCK_sync[1] & ~CS_sync[1];
	assign SCK_FE= late_SCK &~SCK_sync[1] & ~CS_sync[1];
	//**************************************

	//***** STATE COUNTER ********
	reg [2:0]counter;
	always @(posedge clk)begin
		if(rst)
			counter<=0;
		else if(SCK_FE)
			counter<=counter+1;
	end

	always @(posedge clk)begin
		if(rst)
			valid <=0;
		else
		 	valid <= counter==7 & SCK_RE;
	end
	//**********************************

	//***** MOSI SHIFT REGISTER ********
	reg [1:0]MOSI_sync;
	always @(posedge clk)begin
		if(rst)
			MOSI_sync<=2'b11; //due to spi mode
		else
			MOSI_sync[0]<=MOSI;
			MOSI_sync[1]<=MOSI_sync[0];
	end
	reg [7:0] MOSI_SR;
	always @(posedge clk)begin
		if(rst)
			MOSI_SR<=8'hFF; //due to spi mode
		else if(SCK_RE) begin
			MOSI_SR[0]	<=MOSI_sync[1];
			MOSI_SR[7:1]<=MOSI_SR[6:0];
		end
	end
	assign dataw=MOSI_SR;
	//**********************************

	//***** MIS0 SHIFT REGISTER ********
	reg [7:0] MISO_SR;
	reg sending;
	always @(posedge clk)begin
		if( CS_sync[1] | rst)begin
			MISO_SR<=8'hFF; //due to spi mode
			sending<=0;
		end
		else if( SCK_FE & ready & ~sending)begin
			MISO_SR<=datar;
			sending<=1;
		end
		else if( SCK_FE & ready & sending)
			MISO_SR[7:1]<=MISO_SR[6:0];		
	end
	assign MISO = MISO_SR[7];
	//**********************************
endmodule

