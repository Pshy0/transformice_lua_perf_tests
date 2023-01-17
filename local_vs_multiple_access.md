## 2 access (table)
```lua
local dst
local t = {v = 4}
local function Test()
	for i = 1, 1000000 do
		dst = t.v dst = t.v
	end
end
```
> #  taken: 276ms
> #  taken: 275ms
> #  taken: 275ms



## 2 access (local)
```lua
local dst
local t = {v = 4}
local function Test()
	for i = 1, 1000000 do
		local v = t.v
		dst = v dst = v
	end
end
```
> #  taken: 204ms
> #  taken: 208ms
> #  taken: 218ms



## 10 access (table)
```lua
local dst
local t = {v = 4}
local function Test()
	for i = 1, 100000 do
		dst = t.v dst = t.v dst = t.v dst = t.v dst = t.v dst = t.v dst = t.v dst = t.v dst = t.v dst = t.v
	end
end
```
> #  taken: 129ms
> #  taken: 133ms
> #  taken: 131ms



## 10 access (local)
```lua
local dst
local t = {v = 4}
local function Test()
	for i = 1, 100000 do
		local v = t.v
		dst = v dst = v dst = v dst = v dst = v dst = v dst = v dst = v dst = v dst = v
	end
end
```
> #  taken: 58ms
> #  taken: 58ms
> #  taken: 60ms
