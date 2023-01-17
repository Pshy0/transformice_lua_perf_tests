## Concat 2 strings of 4 chars with `..`
```lua
local function Test()
	local l
	for i = 1, 100000 do
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
		l = "ABCD" .. "EFGH"
	end
end
```
> # taken: 111ms
> # taken: 111ms
> # taken: 113ms



## Concat 2 strings of 4 chars with `format`
```lua
local function Test()
	local l
	local format = string.format
	for i = 1, 100000 do
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
		l = format("ABCD%s", "EFGH")
	end
end
```
> # taken: 245ms
> # taken: 247ms
> # taken: 248ms



## Concat 4 strings of 4 chars with `..`
```lua
local function Test()
	local l
	for i = 1, 100000 do
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
	end
end
```
> # taken: 210ms
> # taken: 214ms
> # taken: 210ms



## Concat 4 strings of 4 chars with `format`
```lua
local function Test()
	local l
	local format = string.format
	for i = 1, 100000 do
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s", "EFGH", "IJKL", "MNOP")
	end
end
```
> # taken: 356ms
> # taken: 357ms
> # taken: 357ms



## Concat 8 strings of 4 chars with `..`
```lua
local function Test()
	local l
	for i = 1, 100000 do
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
		l = "ABCD" .. "EFGH" .. "IJKL" .. "MNOP" .. "ABCD" .. "EFGH" .. "IJKL" .. "MNOP"
	end
end
```
> # taken: 349ms
> # taken: 346ms
> # taken: 351ms




## Concat 8 strings of 4 chars with `format`
```lua
local function Test()
	local l
	local format = string.format
	for i = 1, 100000 do
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
		l = format("ABCD%s%s%s%s%s%s%s", "EFGH", "IJKL", "MNOP", "ABCD", "EFGH", "IJKL", "MNOP")
	end
end
```
> # taken: 566ms
> # taken: 567ms
> # taken: 572ms



## tostring
```lua
local function Test()
	local l
	for i = 1, 100000 do
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
		l = tostring(1234)
	end
end
```
> # taken: 258ms
> # taken: 260ms
> # taken: 260ms



## `format` a number
```lua
local function Test()
	local l
	local format = string.format
	for i = 1, 100000 do
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
		l = format("%d", 1234)
	end
end
```
> # taken: 269ms
> # taken: 253ms
> # taken: 250ms






## Concat 2 numbers with `..` and tostring
```lua
local function Test()
	local l
	for i = 1, 100000 do
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
		l = tostring(1234) .. tostring(5678)
	end
end
```
> # taken: 516ms
> # taken: 521ms
> # taken: 519ms



## Concat 2 numbers with `format`
```lua
local function Test()
	local l
	local format = string.format
	for i = 1, 100000 do
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
		l = format("%d%d", 1234, 5678)
	end
end
```
> # taken: 348ms
> # taken: 359ms
> # taken: 345ms



## Concat 4 numbers with `..` and tostring
```lua
local function Test()
	local l
	for i = 1, 100000 do
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
		l = tostring(1234) .. tostring(5678) .. tostring(9012) .. tostring(3456)
	end
end
```
> # taken: 1011ms
> # taken: 1029ms
> # taken: 1027ms



## Concat 4 numbers with `format`
```lua
local function Test()
	local l
	local format = string.format
	for i = 1, 100000 do
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
		l = format("%d%d%d%d", 1234, 5678, 9102, 3456)
	end
end
```
> # taken: 510ms
> # taken: 508ms
> # taken: 540ms
