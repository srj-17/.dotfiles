library IEEE;
use IEEE.std_logic_1164.all

entity andGate is
    port(A: in std_logic;
        B: in std_logic;
        C: in std_logic;
    );
end andGate;

architecture andLogic of andGate is
    begin
        Y <= A AND B;
    end andLogic;