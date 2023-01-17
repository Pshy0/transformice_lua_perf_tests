## Dummy functions (0 args)
```lua
local function f() end
local t = {f,f,f,f,f,f,f,f,f,f}
local function Test()
	for i = 1, 100000 do
		for i_f, f in ipairs(t) do
			f()
		end
	end
end
```
> # taken: 293ms
> # taken: 286ms
> # taken: 295ms



## Dummy functions (4 args)
```lua
local function f() end
local t = {f,f,f,f,f,f,f,f,f,f}
local function Test()
	for i = 1, 100000 do
		for i_f, f in ipairs(t) do
			f(1,2,3,4)
		end
	end
end
```
> # taken: 391ms
> # taken: 391ms
> # taken: 393ms



## Dummy functions (4 args, function exist)
```lua
local function f(a,b,c,d) end
local t = {f,f,f,f,f,f,f,f,f,f}
local function Test()
	for i = 1, 100000 do
		for i_f, f in ipairs(t) do
			f(1,2,3,4)
		end
	end
end
```
> # taken: 417ms
> # taken: 412ms
> # taken: 408ms



## false test (0 args)
```lua
local function f() end
local t = {false,false,false,false,false,false,false,false,false,false}
local function Test()
	for i = 1, 100000 do
		for i_f, f in ipairs(t) do
			if f then
				f()
			end
		end
	end
end
```
> # taken: 214ms
> # taken: 221ms
> # taken: 220ms



## false test (0 args, functions exists)
```lua
local function f() end
local t = {f,f,f,f,f,f,f,f,f,f}
local function Test()
	for i = 1, 100000 do
		for i_f, f in ipairs(t) do
			if f then
				f()
			end
		end
	end
end
```
> # taken: 313ms
> # taken: 322ms
> # taken: 314ms



## false test (4 args, functions exists)
```lua
local function f(a,b,c,d) end
local t = {f,f,f,f,f,f,f,f,f,f}
local function Test()
	for i = 1, 100000 do
		for i_f, f in ipairs(t) do
			if f then
				f(1,2,3,4)
			end
		end
	end
end
```
> # taken: 457ms
> # taken: 446ms
> # taken: 475ms
