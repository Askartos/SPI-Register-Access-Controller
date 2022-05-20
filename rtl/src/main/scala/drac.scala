// See LICENSE for license details.

package spi_registers

import chisel3._
import chisel3.util._
import scala.collection.mutable.ListBuffer

class spi extends BlackBox with HasBlackBoxResource {
	val io = IO(new Bundle {    	
    	val clk= Input(Clock())
	val rst= Input(Bool())
    	val SCK= Input(Bool()) 
    	val CS= Input(Bool())  
    	val MOSI= Input(Bool())  
    	val MISO  = Output(Bool()) 
    	val ready= Input(Bool())   
    	val datar  = Input(UInt(8.W)) 
    	val dataw  = Output(UInt(8.W))  	
    	val valid  = Output(Bool())    
	})	
	addResource("/spi.v")
}

class access_controler(val nregwr : Int, val nregr:Int) extends BlackBox(Map("nregwr" -> nregwr,"nregr" -> nregr)) with HasBlackBoxResource {
	val io = IO(new Bundle {  
 		
    	val clk= Input(Clock())
	val rst= Input(Bool())
	//to spi
    	val valid= Input(Bool())   
    	val dataw  = Input(UInt(8.W)) 
    	val datar  = Output(UInt(8.W))  	
    	val ready  = Output(Bool())  
	//to registers
    	val data_out  = Input(UInt(8.W)) 	
    	val we  = Output(Bool())  
    	val data_in  = Output(UInt(8.W))  
    	val addr  = Output(UInt(8.W))  
  
	})	
	addResource("/access_controler.v")
}

class drac (val nbits : Int, val sizes_regr :ListBuffer[Int], val initial_regwr :ListBuffer[UInt]) extends RawModule{


	val nregwr	=initial_regwr.size
	val nregr	=sizes_regr.size

	val clk		= IO(Input(Clock()))
	val rst		= IO(Input(AsyncReset()))

	val SCK		= IO(Input(Bool()))
	val CS		= IO(Input(Bool()))
	val MOSI	= IO(Input(Bool()))
	val MISO	= IO(Output(Bool()))

	var regr	= new ListBuffer[UInt]()	
	for (j <- 0 until nregr) {
		regr  += IO(Input(UInt(sizes_regr(j).W))) //from external ip
	}

	var regwr= new ListBuffer[UInt]()					
	for (j <- 0 until nregwr) {
		regwr += IO(Output(UInt((initial_regwr(j).getWidth).W))) //to external ip
	}

	//*** SPI***

	val SPI =Module(new spi)
	SPI.io.SCK:=SCK
	SPI.io.CS:=CS
	SPI.io.MOSI:=MOSI
	MISO := SPI.io.MISO
	SPI.io.clk:=clk
	SPI.io.rst:=rst.asBool

	//** ACCESS CONTROLLER***

	val CONTROL = Module(new access_controler(nregwr-1,nregr))
	SPI.io.ready:=CONTROL.io.ready
	SPI.io.datar:=CONTROL.io.datar
	CONTROL.io.dataw:=SPI.io.dataw
	CONTROL.io.valid:=SPI.io.valid
	CONTROL.io.clk:=clk
	CONTROL.io.rst:=rst.asBool


	//****** REGISTERS *******
	val REGS = Module(new registers(nbits,sizes_regr,initial_regwr))
	REGS.clk	:=clk
	REGS.rst	:=rst
	REGS.we	:=CONTROL.io.we
	REGS.dataw	:=CONTROL.io.data_in
	REGS.addr	:=CONTROL.io.addr
	CONTROL.io.data_out:=REGS.datar

	for (j <- 0 until nregr) {
		REGS.regr(j) :=  regr(j) //from external ip
	}					
	for (j <- 0 until nregwr) {
		regwr(j) := REGS.regwr(j)//to external ip
	}

}
