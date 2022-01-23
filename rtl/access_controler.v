/**********************************************************************
 * Created by Hanssel Morales. 
 * Last Rev.: 03-03-2020
 * ACCESS CONTROLER
 **********************************************************************/
//`timescale 1ns / 1ps
module access_controler #(parameter nregwr = 41,parameter nregr = 6)
	(
	input clk,
	input rst,

	output we,
	output reg [7:0]data_out,
	output reg [$clog2(nregwr+nregr)-1:0]addr,
	input [7:0]data_in,

	output reg ready,
	output reg [7:0]datar,
	input [7:0]dataw,
	input valid
		);
	localparam adrr_s=0;
	localparam write=1;
	localparam read=2;
	localparam burst=3;
	
	reg [$clog2(nregwr)-1:0]burst_cnt;
	reg [1:0] state;
	always @(posedge clk) begin
		if(rst)begin
			state<=adrr_s;
		end
		else if( state==adrr_s & dataw==8'hFF & valid)begin
			state<=burst;
		end
		else if( state==adrr_s & dataw[7] & valid)begin
			state<=write;
		end
		else if( state==adrr_s & ~dataw[7] & valid)begin
			state<=read;
		end
		else if( state==write & valid )begin
			state<=adrr_s;			
		end
		else if( state==read & valid )
			state<=adrr_s;
		else if( state==burst & burst_cnt==(nregwr+1) )
			state<=adrr_s;
	end
	reg single_we;
	reg burst_we;
	assign we = single_we | burst_we;

	always @(posedge clk) begin

		//****sampling address*******
		if(rst)
			addr<=0;
		else if( state==adrr_s & valid)
			addr<=dataw[$clog2(nregwr+nregr)-1:0];
		else if(state==burst)
			addr<=burst_cnt;
		//*********************
		//****Write transaction actions***

		if(rst)begin
			data_out<=0;
			single_we<=0;
		end
		else if(state==write & valid )begin
			single_we<=1;
			data_out<=dataw;
		end
		else 
			single_we<=0;
		//**************
		
		//****Read transaction actions**
		if(rst)begin
			datar<=0;
			ready<=0;
		end 
		else if(state==read)begin
			datar<=data_in;
			ready<=1;
		end
		else
			ready<=0;
		//**************

		//****BURST transaction actions**
		if(rst | state==burst & burst_cnt==(nregwr+1) )begin
			burst_cnt<=0;
			data_out<=0;
			burst_we<=0;
		end
		else if(state==burst & valid )begin
			burst_cnt <= burst_cnt+1;
			burst_we  <= 1 ;
			data_out  <=dataw;
		end
		else 
			burst_we  <=0;

		//*******************************

	end
endmodule
