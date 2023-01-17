# Array iteration with `ipairs`

```lua
local a = {}
for i = 1,100 do
	a[i] = i
end
local function Test()
	for i = 1,100000 do
		for i, v in ipairs(a) do end
	end
end
```
> taken: 807ms
> taken: 821ms
> taken: 808ms



# Array iteration with `pairs`

```lua
local a = {}
for i = 1,100 do
	a[i] = i
end
local function Test()
	for i = 1,100000 do
		for i, v in pairs(a) do end
	end
end
```
> taken: 809ms
> taken: 800ms
> taken: 805ms



# Table iteration with `pairs`

```lua
local a = {}
for i = 1,100 do
	a[tostring(i)] = i
end
local function Test()
	for i = 1,100000 do
		for i, v in pairs(a) do end
	end
end
```
> taken: 1930ms
> taken: 1951ms
> taken: 1961ms
