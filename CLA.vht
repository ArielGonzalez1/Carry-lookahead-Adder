-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/23/2023 11:14:21"
                                                            
-- Vhdl Test Bench template for design  :  CLA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CLA_vhd_tst IS
END CLA_vhd_tst;
ARCHITECTURE CLA_arch OF CLA_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT CLA
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CLA
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	S => S
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once   
			Cin <= '0';
			A <= "1001";
			B <= "0110";
			WAIT FOR 10 ns;  

			Cin <= '1';
			A <= "1001";
			B <= "0110";
			WAIT FOR 10 ns;  
	 
			Cin <= '0';
			A <= "1111";
			B <= "0000";
			WAIT FOR 10 ns;   
			
			Cin <= '1';
			A <= "1111";
			B <= "0000";
			WAIT FOR 10 ns;  
			
			Cin <= '0';
			A <= "1010";
			B <= "0101";
			WAIT FOR 10 ns;   
			
			Cin <= '1';
			A <= "1010";
			B <= "0101";
			WAIT FOR 10 ns;  
			
			Cin <= '0';
			A <= "1100";
			B <= "0011";
			WAIT FOR 10 ns;   
			
			Cin <= '1';
			A <= "1100";
			B <= "0011";
			WAIT FOR 10 ns;  		  
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END CLA_arch;
