
define_attribute {clk} syn_maxfan {1000000}
define_attribute {n:default_clock_driver.xlclockdriver_200.ce_vec*} syn_keep {true}
define_attribute {n:default_clock_driver.xlclockdriver_200.ce_vec*} max_fanout {"REDUCE"}

define_scope_collection ce_200_d19e6a35_group \
  {find -seq * -in [ expand -hier -from {n:ce_200_sg_x2} ]}

define_multicycle_path -from {$ce_200_d19e6a35_group} \
  -to {$ce_200_d19e6a35_group} 100

# LOC constraints
define_attribute   {clk} xc_loc {d7hack}
