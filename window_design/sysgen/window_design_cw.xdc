

# Global period constraint
create_clock -name clk -period 6.25 [get_ports clk]

# ce_200_d19e6a35_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_200_sg_x2]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_200_sg_x2]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_200_sg_x2]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 200
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 199

# LOC constraints
set_property LOC d7hack [get_ports clk]
