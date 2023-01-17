# Performances over time

This exact snippet have been run at different dates and times:
```lua
g = 4
local t = {v = 1}
local function f(p1,p2)
	p1 = p2
end
local function Test()
	for i = 1,1000000 do
		t.v = f(g, t.v)
		g = f(t.v, g)
	end
end

local start_time = os.time()
Test()
local total_time = os.time() - start_time
print("taken: " .. tostring(total_time) .. "ms")
```



## 2023-01-17 04:18
> # taken: 836
> # taken: 822
> # taken: 816
