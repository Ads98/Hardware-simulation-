// Test script for RegisteredALU

load RegisteredALU.hdl,
output-file RegisteredALU.out,
compare-to RegisteredALU.cmp,
output-list a%B1.8.1 b%B1.8.1  aLoad%B3.1.3 bLoad%B3.1.3 carryIn%B3.1.3 sums%B3.1.3 ands%B3.1.3 xors%B3.1.3 ors%B3.1.3 srs%B3.1.3 nDb%B3.1.3 zeroA%B3.1.3 out%B1.8.1 carryOut%B3.1.3;


// Initial test 

set a %B00000000,
set b %B00000000,
set carryIn  %B0,
set sums     %B0,
set ands     %B0,
set xors     %B0,
set srs      %B0,
set nDb      %B0,
set zeroA    %B0,
set aLoad    %B0,
set bLoad    %B0,
tick,
tock,
output;

set zeroA    %B1,
tick,
tock,
output;

set zeroA    %B0,
set nDb      %B1,
tick,
tock,
output;

// Check mappings of control pins
set sums %B1,
tick,
tock,
output;

set nDb %B0,
set sums %B1,
tick,
tock,
output;

set a  42,
set aLoad %B1,
tick,
tock,
output;

set b  22,
set aLoad %B0,
set bLoad %B1,
tick,
tock,
output;

set bLoad %B0,
set sums %B1,
tick,
tock,
output;

set sums %B0,
set ands %B1,
tick,
tock,
output;

set ands %B0,
set ors %B1,
tick,
tock,
output;

set srs %B1,
set ors %B0,
tick,
tock,
output;

set srs %B0,
set xors %B1,
tick,
tock,
output;

// Now test inputs are registered

set xors %B0,
set sums %B1,
tick, tock,
output;

set a 123,
tick, tock, 
output;

set aLoad %B1,
tick, tock,
output;

set aLoad %B0,
set a 0,
tick, tock,
output;

set b 56,
tick, tock, 
output;

set bLoad %B1,
tick, tock,
output;

set bLoad %B0,
set b 0,
tick, tock,
output;

// Now check sub to make sure values are in the right registers
set nDb %B1,
set carryIn %B1,
tick, tock,
output;

