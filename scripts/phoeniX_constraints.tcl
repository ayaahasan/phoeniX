set_max_area 0

create_clock -period 10 [get_ports clk]

set_clock_transition 0.3 [get_clock clk]

set_input_delay 2.0 -clock clk [remove_from_collection [all_inputs] [get_ports "clk reset"]]

set_output_delay 2.0 -clock clk [all_output]

set_load 0.1 [all_outputs] #on all outputs or certain outputs?

set_input_transition 1.0 [all_inputs]