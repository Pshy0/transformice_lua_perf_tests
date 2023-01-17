# Cost of instructions

The cost can vary, see [performances_over_time.md](./performances_over_time.md).

This result is computed by [instructions_cost.lua](./instructions_cost.lua).

The value of `witness` represent the testing algorithm cost.
It is already substracted from all tests.

Results are for 1000 instructions (string.format missbehave with small floats).

Read times may be innacurate because variables had to be used inside additional code.

> witness:				1ms ttl -	0.01ms/1000i
> function call:		62ms ttl -	0.62ms/1000i
> function call 1 arg:	66ms ttl -	0.66ms/1000i
> function call 4 args:	106ms ttl -	1.06ms/1000i
> function call return:	73ms ttl -	0.73ms/1000i
> tonumber('NNNN'):		78ms ttl -	0.78ms/1000i
> tostring(NNNN):		100ms ttl -	1.0ms/1000i
> read local:			19ms ttl -	0.19ms/1000i
> read global:			99ms ttl -	0.99ms/1000i
> assign local:			19ms ttl -	0.19ms/1000i
> assign global:		99ms ttl -	0.99ms/1000i
> read array entry:		33ms ttl -	0.33ms/1000i
> read table entry:		35ms ttl -	0.35ms/1000i
> assign array entry:	34ms ttl -	0.34ms/1000i
> assign table entry:	28ms ttl -	0.28ms/1000i
> 'ABCD' .. 'EFGH':		39ms ttl -	0.39ms/1000i

