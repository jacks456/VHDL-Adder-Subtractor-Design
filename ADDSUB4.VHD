-- ADDSUB4.vhd
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
        use WORK.ALL;

entity ADDSUB4 is
--vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv--
    Port ( Sel,A0,A1,A2,A3,B3,B2,B1,B0 : in STD_LOGIC;
           S3,S2,S1,S0,Co : out STD_LOGIC);
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--
end;

architecture STRUCTURAL_ARCH of ADDSUB4 is
  -- component declarative region
  
  component FA port (
    A,B,Ci : in std_logic ;
    S,Co : out std_logic );
  end component;
  
  component XOR_2 port (
    A,B : in std_logic ;
    Z : out std_logic );
  end component;
    
  -- signal declarative region
 signal Co1, Co2, Co3 : std_logic;
 signal X1, X2, X3, X4 : std_logic;

begin
  -- component instance and wiring region 
  CKT_FA_1_G1 : XOR_2 port map(A => B0, B => Sel, Z => X1);
  CKT_FA_1_G2 : FA port map(A => A0, B => X1, Ci => Sel, Co => Co1, S => S0); 
  
  CKT_FA_2_G1 : XOR_2 port map(A => B1, B => Sel, Z => X2);
  CKT_FA_2_G2 : FA port map(A => A1, B => X2, Ci => Co1, Co => Co2, S => S1); 
  
  CKT_FA_3_G1 : XOR_2 port map(A => B2, B => Sel, Z => X3);
  CKT_FA_3_G2 : FA port map(A => A2, B => X3, Ci => Co2, Co => Co3, S => S2);
  
  CKT_FA_4_G1 : XOR_2 port map(A => B3, B => Sel, Z => X4);
  CKT_FA_4_G2 : FA port map(A => A3, B => X4, Ci => Co3, Co => Co, S => S3);  


end;