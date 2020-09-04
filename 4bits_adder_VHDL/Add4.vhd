library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Entity
entity Add4 is port (
	Data1, Data2 : in std_logic_vector (3 downto 0);
	Cin : in std_logic;
	Cout: out std_logic;
	Sum: out std_logic_vector (3 downto 0) 
	);
end entity Add4;

-- Architecture
architecture RTL of Add4 is
	signal Out5Bit : std_logic_vector (4 downto 0);
begin
	Out5Bit <= ('0' & Data1) + ('0' & Data2) + Cin;
	Sum <= Out5Bit(3 downto 0);
	Cout <= Out5Bit(4);
end architecture RTL;

