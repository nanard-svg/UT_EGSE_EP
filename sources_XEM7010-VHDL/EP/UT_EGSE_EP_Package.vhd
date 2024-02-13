
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package UT_EGSE_EP_Package is

type Array_config_32x32_type is array (0 to 31) of signed(31 downto 0); 

type Array_config_32x16_type is array (0 to 31) of signed(15 downto 0);
type Array_Array_config_32x16_type is array (1 downto 0) of Array_config_32x16_type;



type Array_config_32signedx2_type is array (1 downto 0) of signed(31 downto 0); 
type Array_config_32stdx2_type is array (1 downto 0) of std_logic_vector(31 downto 0); 
type Array_config_11stdx2_type is array (1 downto 0) of std_logic_vector(10 downto 0);
type Array_config_10stdx2_type is array (1 downto 0) of std_logic_vector(9 downto 0); 
type Array_config_16signedx2_type is array (1 downto 0) of signed(15 downto 0);  
 
 
end package UT_EGSE_EP_Package;