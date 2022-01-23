// See LICENSE for license details.

package amazilia

import chisel3._
import chisel3.util._

import scala.collection.mutable.ListBuffer

class registers (val nbits : Int, val sizes_regr :ListBuffer[Int], val initial_regwr :ListBuffer[UInt]) extends RawModule{


	val nregwr	=initial_regwr.size
	val nregr	=sizes_regr.size

	val clk		= IO(Input(Clock()))
	val rst		= IO(Input(AsyncReset()))

	val we		= IO(Input(Bool()))
	val dataw	= IO(Input(UInt(nbits.W)))
	val addr 	= IO(Input(UInt( (log2Ceil(nregwr+nregr)).W )))
	val datar	= IO(Output(UInt(nbits.W)))

	var regr	= new ListBuffer[UInt]()	
	for (j <- 0 until nregr) {
		regr  += IO(Input(UInt(sizes_regr(j).W))) //from external ip
	}

	var regwr= new ListBuffer[UInt]()					
	for (j <- 0 until nregwr) {
		regwr += IO(Output(UInt((initial_regwr(j).getWidth).W))) //to external ip
	}



	withClockAndReset(clk, rst) {

		var regwr_R= new ListBuffer[UInt]()
		for (j <- 0 until nregwr) {
			regwr_R += RegInit(initial_regwr(j))
			when(we & addr===j.U){
				regwr_R(j):=dataw
			}
	   	}
		for (j <- 0 until nregwr) {
			regwr(j):=regwr_R(j) 
		}
		val normregwr = Wire(Vec(nregwr,UInt(nbits.W)))
		normregwr:=regwr_R // adjust regwrs to nbits

		val normregr = RegInit(VecInit(Seq.fill(nregr){0.U(nbits.W)}))
		normregr:=regr // adjust regr to nbits
	
		val full_regs = Wire(Vec(nregr+nregwr,UInt(nbits.W)))
		if(nregr!=0 && nregwr ==0  ){
			full_regs:= normregr
		}else if (nregwr!=0 && nregr == 0 ){
			full_regs:= normregwr

		}else{//Low Addresses -> regwrs // High Address -> regrs
			full_regs:= (Cat(normregr.asUInt,normregwr.asUInt)).asTypeOf(full_regs) 
		}
		val readed = RegNext(full_regs(addr) )
		datar:=readed
 	}
}
