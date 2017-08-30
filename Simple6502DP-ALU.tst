// Test script for Simple6502DP

load Simple6502DP.hdl,
output-file Simple6502DP-ALU.out,
compare-to Simple6502DP-ALU.cmp,
output-list dataIn%B1.8.1 diDB%B3.1.3  dbOut%B3.1.3  dbAC%B3.1.3  acDB%B3.1.3  dbX%B3.1.3 xDB%B3.1.3  dbY%B3.1.3 yDB%B3.1.3  aluDB%B3.1.3  dbBALU%B3.1.3  dbAALU%B3.1.3  dataOut%B1.8.1;


// Initial
set dataIn 0,
set diDB   %B0,
set dbOut  %B0,
set dbAC   %B0,
set dbX    %B0,
set xDB    %B0,
set dbY    %B0,
set yDB    %B0, 
set aluDB  %B0, 
set dbBALU %B0, 
set dbAALU %B0, 
set carryIn %B0, 
set sums   %B0, 
set ands   %B0, 
set xors   %B0, 
set ors    %B0,
set srs    %B0, 
set nDb    %B0, 
set zeroA  %B0,
tick, tock,
output;

// LDA #65   --- Load Accumulator with 65

set dataIn 65,
set diDB %B1,
set dbAC %B1,
tick, tock,
output;

set dataIn 0,
set diDB %B0,
set dbAC %B0,
tick, tock,
output;

// STA ....
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;

// ADC #7 -- Add 7 to the value stored in the Accumulator

set carryIn %B0,
set dataIn  7,
set diDB    %B1,
set dbBALU  %B1,
tick, tock, 
output;

set dataIn  0,
set dbBALU  %B0,
set diDB    %B0,
set acDB    %B1,
set dbAALU  %B1,
tick, tock,
output;

set dbAALU  %B0,
set acDB    %B0,
set sums    %B1,
set aluDB   %B1,
set dbAC    %B1,
tick, tock,
output;

set sums    %B0,
set aluDB   %B0,
set dbAC    %B0,
tick, tock,
output;

// STA ....     --- output Accumulator to data out
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;

// EOR #7 -- Xor 255 to the value stored in the Accumulator

set carryIn %B0,
set dataIn  255,
set diDB    %B1,
set dbBALU  %B1,
tick, tock, 
output;

set dataIn  0,
set dbBALU  %B0,
set diDB    %B0,
set acDB    %B1,
set dbAALU  %B1,
tick, tock,
output;

set dbAALU  %B0,
set acDB    %B0,
set xors    %B1,
set aluDB   %B1,
set dbAC    %B1,
tick, tock,
output;

set xors    %B0,
set aluDB   %B0,
set dbAC    %B0,
tick, tock,
output;

// STA ....     --- output Accumulator to data out
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;

// ORA #8 -- OR 8 to the value stored in the Accumulator

set carryIn %B0,
set dataIn  8,
set diDB    %B1,
set dbBALU  %B1,
tick, tock, 
output;

set dataIn  0,
set dbBALU  %B0,
set diDB    %B0,
set acDB    %B1,
set dbAALU  %B1,
tick, tock,
output;

set dbAALU  %B0,
set acDB    %B0,
set ors     %B1,
set aluDB   %B1,
set dbAC    %B1,
tick, tock,
output;

set ors    %B0,
set aluDB   %B0,
set dbAC    %B0,
tick, tock,
output;

// STA ....     --- output Accumulator to data out
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;

// AND #170 -- And 170 to the value stored in the Accumulator

set carryIn %B0,
set dataIn  %B10101010,
set diDB    %B1,
set dbBALU  %B1,
tick, tock, 
output;

set dataIn  0,
set dbBALU  %B0,
set diDB    %B0,
set acDB    %B1,
set dbAALU  %B1,
tick, tock,
output;

set dbAALU  %B0,
set acDB    %B0,
set ands    %B1,
set aluDB   %B1,
set dbAC    %B1,
tick, tock,
output;

set ands    %B0,
set aluDB   %B0,
set dbAC    %B0,
tick, tock,
output;

// STA ....     --- output Accumulator to data out
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;

// LSR A -- shift accumulator by one to right

set dataIn  0,
set dbBALU  %B0,
set diDB    %B0,
set acDB    %B1,
set dbAALU  %B1,
tick, tock,
output;

set dbAALU  %B0,
set acDB    %B0,
set srs    %B1,
set aluDB   %B1,
set dbAC    %B1,
tick, tock,
output;

set srs    %B0,
set aluDB   %B0,
set dbAC    %B0,
tick, tock,
output;

// STA ....     --- output Accumulator to data out
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;


// Now do a subtract

// SBC #65 -- Subtract 65 from the value stored in the Accumulator

set carryIn %B0,
set dataIn  65,
set diDB    %B1,
set dbBALU  %B1,
tick, tock, 
output;

set dataIn  0,
set dbBALU  %B0,
set diDB    %B0,
set acDB    %B1,
set dbAALU  %B1,
tick, tock,
output;

set dbAALU  %B0,
set acDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B1,
set aluDB   %B1,
set dbAC    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbAC    %B0,
tick, tock,
output;

// STA ....     --- output Accumulator to data out
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
tick, tock,
output;

// OK, Lets now test the ALU with a different register

// LDX 7

set dataIn 7,
set diDB %B1,
set dbX %B1,
tick, tock,
output;

set dataIn 0,
set diDB %B0,
set dbX %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;

// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;

// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;
// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;
// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;
// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;
// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;
// Now time to DEX -- decrement X by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set xDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set  xDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbX    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbX    %B0,
tick, tock,
output;

// STX ....
set xDB %B1,
set dbOut %B1,
tick, tock,
output;

set xDB %B0,
set dbOut %B0,
tick, tock,
output;

// Now time to DEY -- decrement Y by one

set dbBALU %B1,  // Zero into ALU B-register
tick, tock,
output;

set yDB %B1,
set dbBALU %B0,
set dbAALU %B1,
tick, tock,
output;

set dbAALU  %B0,
set yDB    %B0,
set sums    %B1,
set nDb     %B1,
set carryIn %B0,
set aluDB   %B1,
set dbY    %B1,
tick, tock,
output;

set sums    %B0,
set nDb     %B0,
set carryIn %B0,
set aluDB   %B0,
set dbY    %B0,
tick, tock,
output;

// STY ....
set yDB %B1,
set dbOut %B1,
tick, tock,
output;

set yDB %B0,
set dbOut %B0,
tick, tock,
output;
