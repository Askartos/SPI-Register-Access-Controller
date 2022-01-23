`timescale 1ns / 1ps
module spi_tb(
	output reg SCK,
	output reg CS,
	output reg MOSI,
	output reg FLAG,
	output reg [7:0]readed,
	input MISO
);


	localparam PERIOD = 3.2;		//312.5 MHz SoC
	localparam PERIOD_SPI = 50;		//20 MHz SPI SCK


	
//****** SEQUENCE OF STIMULUS ***********

	initial begin
	//**INITIAL VALUES***
			SCK=0;
			MOSI=1;
			CS=1;
			FLAG=0;
			readed=0;
	//*******************


			#(5*PERIOD);//Wait to be sure that amazilia its on reset state


	//************AMAZILIA PROGRAMING ZONE************
			//HOW TO USE IT
			//write_drac(address,data); //writes "data" over register asosiated with "address"
			//read_drac(address,output_register); // reads register asosiated with "address" and put the value in "output_register"


			//Example:
			write_drac(7'd14,8'd0); //FFRO PD TO 0
			write_drac(7'd25,8'd0); //HSS PD TO 0

			read_drac(7'd5,readed); //READ THE CRSCTLE

	//*************************************************
			#(PERIOD);// 1 cycle dalay
			FLAG=0;//this flag says amazilia programing step ends



	end


//************************************




//****** ATOMATED TASK ***********
	task write_drac;
	//author   : Hanssel
	//abstract : this task generates stimulus to perform a write transaction
	//			 over the direct register access controller through spi
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
	task read_drac;
	//author   : Hanssel
	//abstract : this task generates stimulus to perform a read transaction
	//			 over the direct register access controller through spi
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
	//author   : Hanssel
	//abstract : this task generates SPI MODE 0  standart 
	//			write transaction of 8 bits  using SCK and MOSI lines
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
	//author   : Hanssel
	//abstract : this task generates SCK clock and read MISO line
	//			 to get 8 bits of date all in  SPI MODE 0 standart
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

	task burst_drac;
	//author   : Hanssel
	//abstract : this task generates stimulus to perform a burst transaction
	//			 over the direct register access controller through spi
	//			changing all registers to 0
		integer i;
		begin
			#(PERIOD_SPI/2);
			CS = 0;
			spi_send(8'hFF);
			for(i=0;i<8'h15;i=i+1) begin
				spi_send(8'h0);
			end
			#(PERIOD_SPI/2);
			CS = 1;
			#(PERIOD_SPI/2);
		end
	endtask
//************************************
endmodule

