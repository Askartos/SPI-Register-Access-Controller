// See LICENSE for license details.

package amazilia

import chisel3._
import chisel3.internal.firrtl.Circuit
import scala.collection.mutable.ListBuffer

object registersMain extends App {
	var initial_regwr= new ListBuffer[UInt]()
	//AFE
	initial_regwr += 129.U(8.W)//AFE MATCHING R[7:0]
	initial_regwr += 255.U(8.W)//AFE MATCHING R[15:8]
	initial_regwr += 0.U(8.W)//AFE MATCHING R[23:16]
	initial_regwr += 0.U(8.W)//AFE MATCHING R[31:24]
	initial_regwr += 4.U(3.W)//AFE MATCHING R[34:32]
	initial_regwr += 255.U(8.W)//AFE R
	initial_regwr += 0.U(4.W)//AFE Cs
	initial_regwr += 0.U(2.W)//AFE BIAS
	//FFRO
 	initial_regwr += 11.U(5.W)//I_COARSE
	initial_regwr += 2.U(5.W)//I_FINE
	initial_regwr += 0.U(5.W)//IFW_COARSE
	initial_regwr += 0.U(5.W)//IFW_FINE
	initial_regwr += 0.U(1.W)//TRM_LF
	initial_regwr += 0.U(1.W)//DIS_FW
	initial_regwr += 1.U(1.W)//PD
	//HSS CDR
	initial_regwr += 3.U(3.W)//CDR PGAIN
	initial_regwr += 1.U(3.W)//CDR FGAIN
	initial_regwr += 1.U(2.W)//CDR SUBRESF
	initial_regwr += 1.U(2.W)//CDR SUBRESP
	initial_regwr += 0.U(1.W)//CDR BOOSTF
	initial_regwr += 0.U(1.W)//CDR BOOSTP
	initial_regwr += 0.U(2.W)//CDR DFEINFO
	initial_regwr += 1.U(1.W)//CDR DATAWIDTH
	initial_regwr += 0.U(7.W)//CDR DIGPHASE_SPI
	initial_regwr += 0.U(1.W)//CDR SEL_PIDIGPH
	initial_regwr += 0.U(1.W)//CDR PD
	//XCALG
	initial_regwr += 0.U(1.W)//XCALG ENABLE 
	initial_regwr += 0.U(4.W)//XCALG INITIAL
	//BIAS
	initial_regwr += 8.U(4.W)//BIAS TRM
	//CLOCK SCHEME
	initial_regwr += 0.U(1.W)//RESET


	//FFRO
	initial_regwr += 0.U(1.W)//CLOCK MUX FFO
	initial_regwr += 0.U(1.W)//nA_select

	//GENERAL A
	initial_regwr += 0.U(3.W)//MUXDOUT1
	initial_regwr += 0.U(3.W)//MUXDOUT2
	initial_regwr += 0.U(3.W)//MUXCLKOUT

	//GENERAL B
	initial_regwr += 1.U(1.W)//MUXDOUT1
	initial_regwr += 1.U(1.W)//MUXDOUT2
	initial_regwr += 1.U(1.W)//MUXCLKOUT

	//BIAS
	initial_regwr += 0.U(1.W)//Bias
	
	//AFE
	initial_regwr += 0.U(1.W)//Bias

	//AUX
	initial_regwr += 0.U(8.W)//AUX
	initial_regwr += 0.U(8.W)//AUX
	

	//READ ONLY
	var sizes_regr= new ListBuffer[Int]()
	sizes_regr += 4 //XCALG INFO
	sizes_regr += 7 //PHASE NUMBER INFO
	sizes_regr += 8 //EL ANALYSIS 2
	sizes_regr += 8 //EL ANALYSIS 3
	sizes_regr += 8 //EL ANALYSIS 4
	sizes_regr += 8 //EL ANALYSIS 5

	
	chisel3.Driver.execute(args, () => new registers(8,sizes_regr,initial_regwr))


}
