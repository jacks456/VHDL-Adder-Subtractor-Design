-- FA.vhd
library IEEE,WORK;
        use IEEE.STD_LOGIC_1164.ALL;
        use WORK.ALL;

entity FA is
--vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv--
    Port ( A,B,Ci : in STD_LOGIC;
           S,Co : out STD_LOGIC);
--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--
end;

architecture STRUCTURAL_ARCH of FA is
  -- component declarative region
  
  component AND_2 port (
    A,B : in std_logic ;
    Z : out std_logic );
  end component;

  component XOR_2 port (
    A,B : in std_logic ;
    Z : out std_logic );
  end component;

  component OR_3 port (
    A,B,C : in std_logic ;
    Z : out std_logic );
  end component;
  
  -- signal declarative region
           
     signal S_1,C_1,C_2,C_3 : STD_LOGIC;          

begin
 --S0 <= (A xor B) xor Ci;
 CKT_S0_1 : XOR_2 port map (A=>A, B=>B, Z=>S_1);
 CKT_S0_2 : XOR_2 port map (A=>S_1, B=>Ci, Z=>S);
 
 --Co <= (A and B) or (A and Ci) or (B and Ci) ;
 CKT_C0_1 : AND_2 port map (A=>A, B=>B, Z=>C_1);
 CKT_C0_2 : AND_2 port map (A=>A, B=>Ci, Z=>C_2);
 CKT_C0_3 : AND_2 port map (A=>B, B=>Ci, Z=>C_3);
 CKT_C0_4 : OR_3  port map (A=>C_1, B=>C_2, C=>C_3, Z=>Co);
  
end;
