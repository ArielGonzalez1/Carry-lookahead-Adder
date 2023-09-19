--- Ariel Gonzalez Diaz 
--The pourpose of this proyect is created un adder that is Carry Look ahead Adder 

-- Import the librarys 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- make the entity

ENTITY CLA IS 
	PORT(
	A : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
	Cin : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
	Cout: OUT STD_LOGIC
	);
END CLA;

-- create the type of the architecture, in this case is  behavioral because it depends of the input states
ARCHITECTURE Behavioral OF CLA IS 

SIGNAL P, G, C : STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN 

    G <= A AND B;-- Carry Generator 
	 P <= A XOR B;-- Carry Propagator
	 
	 C(0) <= Cin;
	 C(1) <= G(0) OR (P(0) AND C(0));
	 C(2) <= G(1) OR (P(1) AND C(1));
	 C(3) <= G(2) OR (P(2) AND C(2));
	 
-- Result of the sum 
	S <= P XOR C ;

	-- Result of the Carry Output 
	Cout <= G(3) OR (P(3) AND C(3));
	 
END Behavioral;

	 
    