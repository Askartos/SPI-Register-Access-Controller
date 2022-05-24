#!/bin/csh

./clean.csh

sbt 'runMain spi_registers.dracMain' | tee run.log

mv *.v generated
rm *.f* 
rm *.anno* 
