-------------------------------------------------------------------------------
-- system_window_and_fft_test_v4_gpio_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library gpio_ext2simulink_v1_00_a;
use gpio_ext2simulink_v1_00_a.all;

entity system_window_and_fft_test_v4_gpio_wrapper is
  port (
    gateway : out std_logic_vector(0 to 0);
    io_pad : in std_logic_vector(0 to 0);
    clk : in std_logic;
    clk90 : in std_logic
  );
end system_window_and_fft_test_v4_gpio_wrapper;

architecture STRUCTURE of system_window_and_fft_test_v4_gpio_wrapper is

  component gpio_ext2simulink is
    generic (
      WIDTH : INTEGER;
      DDR : INTEGER;
      CLK_PHASE : INTEGER;
      REG_IOB : STRING
    );
    port (
      gateway : out std_logic_vector((WIDTH-1) to 0);
      io_pad : in std_logic_vector((WIDTH/(DDR+1))-1 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

begin

  window_and_fft_test_v4_gpio : gpio_ext2simulink
    generic map (
      WIDTH => 1,
      DDR => 0,
      CLK_PHASE => 0,
      REG_IOB => "true"
    )
    port map (
      gateway => gateway,
      io_pad => io_pad,
      clk => clk,
      clk90 => clk90
    );

end architecture STRUCTURE;

