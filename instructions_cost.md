# Cost of instructions

The cost can vary, see [performances_over_time.md](./performances_over_time.md).

This result is computed by [instructions_cost.lua](./instructions_cost.lua).

The value of `witness` represent the testing algorithm cost.
It is already substracted from all tests.

Results are for 1000 instructions (string.format missbehave with small floats).

Read times may be innacurate because variables had to be used inside additional code.

> witness:				0ms ttl -	0.0ms/1000i
> function call:		70ms ttl -	0.7ms/1000i
> function call 1 arg:	69ms ttl -	0.69ms/1000i
> function call 4 args:	105ms ttl -	1.05ms/1000i
> function call return:	63ms ttl -	0.63ms/1000i
> tonumber('NNNN'):		74ms ttl -	0.74ms/1000i
> tostring(NNNN):		100ms ttl -	1.0ms/1000i
> math.random():		44ms ttl -	0.44ms/1000i
> read local:			18ms ttl -	0.18ms/1000i
> read global:			91ms ttl -	0.91ms/1000i
> assign local:			11ms ttl -	0.11ms/1000i
> assign global:		101ms ttl -	1.01ms/1000i
> read array entry:		31ms ttl -	0.31ms/1000i
> assign array entry:	28ms ttl -	0.28ms/1000i
> read table entry:		39ms ttl -	0.39ms/1000i
> assign table entry:	19ms ttl -	0.19ms/1000i
> assign #10 string:	22ms ttl -	0.22ms/1000i
> assign #20 string:	23ms ttl -	0.23ms/1000i
> 'ABCD' .. 'EFGH':		46ms ttl -	0.46ms/1000i
> for ipairs(#10 array):42ms ttl -	0.42ms/1000i
> for pairs(#10 array):	48ms ttl -	0.48ms/1000i
> for pairs(#10 table):	51ms ttl -	0.51ms/1000i

