## local read
```
local v = 5
local function Test()
	for i = 1, 400000 do
		if v and v and v and v and v and v and v and v and v and v then end
	end
end
```
> #  taken: 250ms
> #  taken: 252ms
> #  taken: 247ms



## global read
```
v = 5
local function Test()
	for i = 1, 400000 do
		if v and v and v and v and v and v and v and v and v and v then end
	end
end
```
> #  taken: 303ms
> #  taken: 311ms
> #  taken: 302ms



## local write
```
local v
local function Test()
	for i = 1, 400000 do
		v = 5
		v = 6
		v = 5
		v = 6
		v = 5
		v = 6
		v = 5
		v = 6
		v = 5
		v = 6
	end
end
```
> #  taken: 234ms
> #  taken: 237ms
> #  taken: 236ms



## local write
```
local function Test()
	for i = 1, 400000 do
		v = 5
		v = 6
		v = 5
		v = 6
		v = 5
		v = 6
		v = 5
		v = 6
		v = 5
		v = 6
	end
end
```
> #  taken: 317ms
> #  taken: 316ms
> #  taken: 317ms
