# Array iteration with `ipairs`

```lua
local a = {}
for i = 1,100 do
	a[i] = i
end
local function test()
	for i = 1,100000 do
		for i, v in ipairs(a) do end
	end
end
```
> taken: ms
> taken: ms
> taken: ms



# Array iteration with `pairs`

```lua
local a = {}
for i = 1,100 do
	a[i] = i
end
local function test()
	for i = 1,100000 do
		for i, v in pairs(a) do end
	end
end
```
> taken: ms
> taken: ms
> taken: ms



# Table iteration with `pairs`

```lua
local a = {}
for i = 1,100 do
	a[tostring(i)] = i
end
local function test()
	for i = 1,100000 do
		for i, v in pairs(a) do end
	end
end
```
> taken: ms
> taken: ms
> taken: ms
