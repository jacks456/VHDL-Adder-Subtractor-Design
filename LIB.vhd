-- Library for EE2000 Projects
-- Included Gate List:
--   BUF_1
--   INV_1
--   AND_2
--   AND_3
--   AND_4
--   AND_5
--   AND_6
--   OR_2
--   OR_3
--   OR_4
--   OR_5
--   OR_6
--   NAND_2
--   NAND_3
--   NAND_4
--   NOR_2
--   NOR_3
--   NOR_4
--   XOR_2
--   XNOR_2


---------------------------------
-- BUF_1 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity BUF_1 is 
  port(A : in std_logic;
       Z : out std_logic);
end;  

architecture  BEHAV of BUF_1 is
begin
  Z <= not(not(A));
end; 


---------------------------------
-- INV_1 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity INV_1 is 
  port(A : in std_logic;
       Z : out std_logic);
end;  

architecture  BEHAV of INV_1 is
begin
  Z <= not(A);
end; 


---------------------------------
-- AND_2 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity AND_2 is 
  port(A,B : in std_logic;
         Z : out std_logic);
end;  

architecture  BEHAV of AND_2 is
begin
  Z <= A and B;
end; 


---------------------------------
-- AND_3 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity AND_3 is 
  port(A,B,C : in std_logic;
           Z : out std_logic);
end;  

architecture  BEHAV of AND_3 is
begin
  Z <= A and B and C;
end; 


---------------------------------
-- AND_4 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity AND_4 is 
  port(A,B,C,D : in std_logic;
             Z : out std_logic);
end;  

architecture  BEHAV of AND_4 is
begin
  Z <= A and B and C and D;
end; 


---------------------------------
-- AND_5 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity AND_5 is 
  port(A,B,C,D,E : in std_logic;
             Z : out std_logic);
end;  

architecture  BEHAV of AND_5 is
begin
  Z <= A and B and C and D and E;
end; 


---------------------------------
-- AND_6 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity AND_6 is 
  port(A,B,C,D,E,F : in std_logic;
             Z : out std_logic);
end;  

architecture  BEHAV of AND_6 is
begin
  Z <= A and B and C and D and E and F;
end; 


---------------------------------
-- OR_2 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity OR_2 is 
  port(A,B : in std_logic;
         Z : out std_logic);
end;  

architecture  BEHAV of OR_2 is
begin
  Z <= A or B;
end; 


---------------------------------
-- OR_3 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity OR_3 is 
  port(A,B,C : in std_logic;
           Z : out std_logic);
end;  

architecture  BEHAV of OR_3 is
begin
  Z <= A or B or C;
end; 


---------------------------------
-- OR_4 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity OR_4 is 
  port(A,B,C,D : in std_logic;
             Z : out std_logic);
end;  

architecture  BEHAV of OR_4 is
begin
  Z <= A or B or C or D;
end;


---------------------------------
-- OR_5 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity OR_5 is 
  port(A,B,C,D,E : in std_logic;
             Z : out std_logic);
end;  

architecture  BEHAV of OR_5 is
begin
  Z <= A or B or C or D or E;
end;


---------------------------------
-- OR_6 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity OR_6 is 
  port(A,B,C,D,E,F : in std_logic;
             Z : out std_logic);
end;  

architecture  BEHAV of OR_6 is
begin
  Z <= A or B or C or D or E or F;
end;


---------------------------------
-- NAND_2 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity NAND_2 is 
  port(A,B : in std_logic;
         Z : out std_logic);
end;  

architecture  BEHAV of NAND_2 is
begin
  Z <= not(A and B);
end; 


---------------------------------
-- NAND_3 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity NAND_3 is 
  port(A,B,C : in std_logic;
           Z : out std_logic);
end;

architecture  BEHAV of NAND_3 is
begin
  Z <= not(A and B and C);
end;


---------------------------------
-- NAND_4 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity NAND_4 is 
  port(A,B,C,D : in std_logic;
             Z : out std_logic);
end; 

architecture  BEHAV of NAND_4 is
begin
  Z <= not(A and B and C and D);
end;


---------------------------------
-- NOR_2 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity NOR_2 is 
  port(A,B : in std_logic;
         Z : out std_logic);
end;

architecture  BEHAV of NOR_2 is
begin
  Z <= not(A or B);
end;


---------------------------------
-- NOR_3 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity NOR_3 is 
  port(A,B,C : in std_logic;
           Z : out std_logic);
end; 

architecture  BEHAV of NOR_3 is
begin
  Z <= not(A or B or C);
end; 


---------------------------------
-- NOR_4 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity NOR_4 is 
  port(A,B,C,D : in std_logic;
             Z : out std_logic);
end;

architecture  BEHAV of NOR_4 is
begin
  Z <= not(A or B or C or D);
end; 


---------------------------------
-- XOR_2 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity XOR_2 is 
  port(A,B : in std_logic;
         Z : out std_logic);
end; 

architecture  BEHAV of XOR_2 is
begin
  Z <= A xor B;
end; 


---------------------------------
-- XNOR_2 Gate Definition
library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;

entity XNOR_2 is 
  port(A,B : in std_logic;
         Z : out std_logic);
end;  

architecture  BEHAV of XNOR_2 is
begin
  Z <= not(A xor B);
end; 


---------------------------------

