#!/bin/bash
echo "Generating register bank with the register map config defined here: ./rtl/reg_bank_generator/src/main/scala/registersMain.scala"
cd rtl/reg_bank_generator/
sbt 'runMain amazilia.registersMain' 
cp registers.v ../
