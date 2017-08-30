// Test script for Simple6502DP

load Simple6502DP.hdl,
output-file Simple6502DP-Registers.out,
compare-to Simple6502DP-Registers.cmp,
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

// LDA #65

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

// LDX 42

set dataIn 42,
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

// LDY 23

set dataIn 23,
set diDB %B1,
set dbY %B1,
tick, tock,
output;

set dataIn 0,
set diDB %B0,
set dbY %B0,
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

// Now check that all the values are still stored...

// STA ....
set acDB %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
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

// STY ....
set yDB %B1,
set dbOut %B1,
tick, tock,
output;

set yDB %B0,
set dbOut %B0,
tick, tock,
output;

// TAX -- transfer A to x

set acDB %B1,
set dbX  %B1,
tick, tock, 
output;

set acDB %B0,
set dbX  %B0,
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

// TYA -- transfer Y to A

set yDB  %B1,
set dbAC %B1,
tick, tock,
output;

set yDB  %B0,
set dbAC %B0,
tick, tock,
output;

// Now check that all the values are still stored...

// STA ....
set acDB  %B1,
set dbOut %B1,
tick, tock,
output;

set acDB %B0,
set dbOut %B0,
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

// STY ....
set yDB %B1,
set dbOut %B1,
tick, tock,
output;

set yDB %B0,
set dbOut %B0,
tick, tock,
output;