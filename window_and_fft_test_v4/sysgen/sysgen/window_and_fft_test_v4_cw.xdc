

# Global period constraint
create_clock -name clk -period 5.0 [get_ports clk]

# ce_2500_3817bc4a_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_2500_sg_x9]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2500_sg_x9]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2500_sg_x9]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2500
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 2499


# ce_50_3817bc4a_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_50_sg_x0]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50_sg_x0]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50_sg_x0]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 50
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 49


# Group-to-group constraints
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2500_sg_x9]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50_sg_x0]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 50
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 49

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_50_sg_x0]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2500_sg_x9]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 50
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 49

# LOC constraints
set_property LOC d7hack [get_ports clk]
