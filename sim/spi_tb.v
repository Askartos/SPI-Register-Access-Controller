`timescale 1ns / 1ps
module spi_tb();
	reg SCK;
	reg CS;
	reg MOSI;
	wire MISO;
	reg clk;
	reg rst;
	reg  [3:0] regr_0=9;
	reg  [3:0] regr_1=9;
	reg  [3:0] regr_2=9;
	reg  [3:0] regr_3=9;
	reg  [3:0] regr_4=9;
	reg  [3:0] regr_5=9;
	wire [7:0] regwr_0;
	wire [7:0] regwr_1;
	wire [7:0] regwr_2;
	wire [7:0] regwr_3;
	wire [2:0] regwr_4;
	wire [7:0] regwr_5;
	wire [3:0] regwr_6;
	wire [1:0] regwr_7;
	wire [4:0] regwr_8;
	wire [4:0] regwr_9;
	wire [4:0] regwr_10;
	wire [4:0] regwr_11;
	wire       regwr_12;
	wire       regwr_13;
	wire       regwr_14;
	wire [2:0] regwr_15;
	wire [2:0] regwr_16;
	wire [1:0] regwr_17;
	wire [1:0] regwr_18;
	wire       regwr_19;
	wire       regwr_20;
	wire [1:0] regwr_21;
	wire       regwr_22;
	wire [6:0] regwr_23;
	wire       regwr_24;
	wire       regwr_25;
	wire       regwr_26;
	wire [3:0] regwr_27;
	wire [3:0] regwr_28;
	wire       regwr_29;
	wire       regwr_30;
	wire [1:0] regwr_31;
	wire       regwr_32;
	wire [6:0] regwr_33;
	wire       regwr_34;
	wire       regwr_35;
	wire       regwr_36;
	wire [3:0] regwr_37;
	wire [3:0] regwr_38;
	wire       regwr_39;
	wire       regwr_40;
	wire       regwr_41;
	drac DRAC_BEHAVIORAL(
	.SCK(SCK),
	.MOSI(MOSI),
	.MISO(MISO),
	.CS(CS),
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
	

	localparam PERIOD = 3.2;		//312.5 MHz SoC
	//localparam PERIOD = 10;		//100 MHz FPGA
	localparam PERIOD_SPI = 33.333;	//30 MHz ft232h
	//localparam PERIOD_SPI = 60;	//16 MHz  Max teorical SCK freq with 100 MHz   clk //EXPERIMENT  SAYS THAT IN REAL LIFE ITS 12
	always begin
	clk=~clk;
	#(PERIOD/2);
	end
	reg[7:0] i;
	reg [7:0]readed=0;
	initial begin
			SCK=0;
			MOSI=1;
			CS=1;

		    rst=1;
			clk=0;
		    #(40*PERIOD);
		    rst=0;
			#(2*PERIOD_SPI);
			//single writes
            read_tran(6'd0,readed);
			write_tran(0,0);
            read_tran(6'd0,readed);
	
			#(2000*PERIOD);
			for(i=0;i<42;i=i+1) begin
				write_tran(i[6:0],8'hF3);
			end
			//single read
			read_tran(6'd21,readed);

			//BURST MODE
			burst_tran;
	end






//****** ATOMATED TASK ***********


	task burst_tran;
		begin
			#(PERIOD_SPI/2);
			CS = 0;
			spi_send(8'hFF);
			for(i=0;i<8'd42;i=i+1) begin
				spi_send(8'h7);
			end
			#(PERIOD_SPI/2);
			CS = 1;
			#(PERIOD_SPI/2);
		end
	endtask

	task write_tran;
		input [6:0]addr;
		input [7:0]word;
		begin
			CS = 0;
			spi_send({1'b1,addr});
			spi_send(word);
			#(PERIOD_SPI/2);
			CS = 1;
			#(PERIOD_SPI/2);
		end
	endtask
	task read_tran;
		input [6:0]addr;
		output [7:0]word;	
		begin
			CS = 0;
			spi_send({1'b0,addr});
			spi_read(word);
			#(PERIOD_SPI/2);
			CS = 1;
			#(PERIOD_SPI/2);
		end
	endtask

	task spi_send;
		input [7:0] word;
		integer c;
		begin
		    for(c=0;c<=7;c=c+1) begin
				MOSI=word[7-c];
		        #(PERIOD_SPI/2);
				SCK=1;
		        #(PERIOD_SPI/2);
				SCK=0;
		    end
		end
	endtask

	task spi_read;
		output [7:0] word;
		integer c;
		begin
			for(c=0;c<=7;c=c+1) begin		    
				#(PERIOD_SPI/2);
				word[7-c]=MISO;	
				SCK=1;
				#(PERIOD_SPI/2);
				SCK=0;
								
			    
			end
			#(PERIOD_SPI/2);
		end
	endtask
//************************************
endmodule

