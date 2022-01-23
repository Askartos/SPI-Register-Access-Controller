current_design $DESIGN

###  Defining Clocks ###
create_clock -name CLK -period 3.2 [get_ports clk]

### Clock Constraints###

# Slew
set_clock_transition 0.2 -rise 		[get_clocks CLK]
set_clock_transition 0.2 -fall 		[get_clocks CLK]

# Jitter
set_clock_uncertainty -setup 0.07 	[get_clocks CLK]
set_clock_uncertainty -hold  0.07  	[get_clocks CLK]

# Latency
set_clock_latency 0.02 -source -late [get_clocks CLK]
set_clock_latency 0.06 -late [get_clocks CLK]

# Set i/o delays
set_input_delay  -clock CLK 0.08 [all_inputs]
set_output_delay -clock CLK 0.08 [all_outputs]


###


# False paths (to not optimize)
set_false_path -from [get_ports rst]

# Max Fanout
set_max_fanout 16 [current_design]


### Drivers ####
# good to specify nets driven by a port
# Set Ideal Clock For Pre-Layout
#set_drive 0 {clk}
#set_ideal_network {clk}



# Defining loads
set_load 0.4 [all_outputs]



