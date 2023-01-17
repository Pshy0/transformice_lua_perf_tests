# Transformice Lua performance tests

This repository contains snippets to test the performance of different Lua algorithms in TFM.
The goal of those tests is to provide an idea about what is best or worst for performances.

Tested snippets and results are presented in the markdown files in this repository, with one file per set of tests.
Those tests are meant to be run durring initialization, which allows for up to 4000ms of runtime, better for accuracy.
Performances of the Lua vm can change depending on when tests are run (one day they can be double of another).
For practical reasons, tests from different sets may not have been not run at the same time, so you should not compare values from different sets of tests.

Most tests timings are measured with the snippet below.
`Test` is a local function containing a loop that performs the tests.
The amount of iterations is adapted to get better accuracy.
```lua
local start_time = os.time()
Test()
local total_time = os.time() - start_time
print("taken: " .. tostring(total_time) .. "ms")
```



## Performances over time

The Lua vm performances vary over time.

This test is about measuring that:

[performances_over_time.md](./performances_over_time.md)



## Implementation comparizons

**Comparizon of procedural programming style vs POO:**

[procedural_vs_poo.md](./performances_over_time.md)

Conclusions: 
 - Calling a function in procedural style is faster than in standard Lua POO style (which is ~10% slower).


**Comparizon of accessing a table twice vs assigning the accessed value to a local:**

[local_vs_multiple_access.md](./local_vs_multiple_access.md)

Conclusions: 
 - It is always better to assign a table's value to a local rather than accessing it more than once (which is ~30% slower).


**Comparizon of local access vs global access:**

[procedural_vs_poo.md](./performances_over_time.md)

Conclusions:
 - Reading from a local is faster than reading from a global (which is ~20% slower).
 - Writting to a local is faster than writting to a global (which is ~33% slower).


**Comparizon of calling an array of functions ith missing entries, either represented by `false` or a dummy function:**

[dummy_function_vs_false_test.md](./performances_over_time.md)

Conclusions:
 - Performances of dummy functions will get worse if you pass them arguments.
 - When functions tends to exist, dummy is better than false test (~10% slower).
 - When functions tends to not exist, false test is better than dummy (~30% slower).


**Comparizon of function argument passing and declarations:**

[arg_passing.md](./arg_passing.md)

Conclusions:
 - Passing a small number is slightly faster than passing a small string representing that number (~4% slower).
 - Not declaring an argument that is going to be passed to a functions is faster than declaring it (~5% slower with 4 int args)
 - The cost of passing additional arguments is exponential (~7% with 1 int, ~18% with 2 ints, ~33% with 3 ints, ~64% with 4 ints, ~110% with 8 ints).



