
define_attribute {clk} syn_maxfan {1000000}
define_attribute {n:default_clock_driver.xlclockdriver_2500.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_2500.ce_vec*} max_fanout {"REDUCE"}
define_attribute {n:default_clock_driver.xlclockdriver_50.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_50.ce_vec*} max_fanout {"REDUCE"}

define_scope_collection ce_2500_3817bc4a_group \
  {find -seq * -in [ expand -hier -from {n:ce_2500_sg_x9} ]}
define_scope_collection ce_50_3817bc4a_group \
  {find -seq * -in [ expand -hier -from {n:ce_50_sg_x0} ]}

define_multicycle_path -from {$ce_2500_3817bc4a_group} \
  -to {$ce_2500_3817bc4a_group} 100
define_multicycle_path -from {$ce_50_3817bc4a_group} \
  -to {$ce_50_3817bc4a_group} 50

# Group-to-group constraints
define_multicycle_path -from {$ce_2500_3817bc4a_group} \
  -to {$ce_50_3817bc4a_group} 50
define_multicycle_path -from {$ce_50_3817bc4a_group} \
  -to {$ce_2500_3817bc4a_group} 50

# LOC constraints
define_attribute   {clk} xc_loc {d7hack}
