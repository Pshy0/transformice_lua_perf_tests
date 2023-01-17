# Passing arguments to functions

Snippet used to measure:
```lua
local start_time = os.time()
Test()
local total_time = os.time() - start_time
print("taken: " .. tostring(total_time) .. "ms")
```
The empty loop takes ms.



## No arguments
```lua
local function f() end
local function Test()
	for i = 1, 100000 do
		f()f()f()f()f()f()f()f()f()f()
	end
end
```
> # taken: 208ms
> # taken: 201ms
> # taken: 196ms



## 1 number argument
```lua
local function f(n) end
local function Test()
	for i = 1, 100000 do
		f(1)f(2)f(3)f(4)f(5)f(6)f(7)f(8)f(9)f(10)
	end
end
```
> # taken: 215ms
> # taken: 231ms
> # taken: 213ms



## 2 number arguments
```lua
local function f(n1,n2) end
local function Test()
	for i = 1, 100000 do
		f(1,2)f(3,4)f(5,6)f(7,8)f(9,10)f(11,12)f(13,14)f(15,16)f(17,18)f(19,20)
	end
end
```
> # taken: 237ms
> # taken: 242ms
> # taken: 235ms



## 3 number arguments
```lua
local function f(n1,n2,n3) end
local function Test()
	for i = 1, 100000 do
		f(1,2,3)f(5,6,7)f(9,10,11)f(13,14,15)f(17,18,19)f(21,22,23)f(25,26,27)f(29,30,31)f(33,34,35)f(37,38,39)
	end
end
```
> # taken: 287ms
> # taken: 267ms
> # taken: 268ms



## 4 number arguments
```lua
local function f(n1,n2,n3,n4) end
local function Test()
	for i = 1, 100000 do
		f(1,2,3,4)f(5,6,7,8)f(9,10,11,12)f(13,14,15,16)f(17,18,19,20)f(21,22,23,24)f(25,26,27,28)f(29,30,31,32)f(33,34,35,36)f(37,38,39,40)
	end
end
```
> # taken: 324ms
> # taken: 328ms
> # taken: 326ms



## 8 number arguments
```lua
local function f(n1,n2,n3,n4,n5,n6,n7,n8) end
local function Test()
	for i = 1, 100000 do
		f(1,2,3,4,1,2,3,4)f(5,6,7,8,1,2,3,4)f(9,10,11,12,1,2,3,4)f(13,14,15,16,1,2,3,4)f(17,18,19,20,1,2,3,4)f(21,22,23,24,1,2,3,4)f(25,26,27,28,1,2,3,4)f(29,30,31,32,1,2,3,4)f(33,34,35,36,1,2,3,4)f(37,38,39,40,1,2,3,4)
	end
end
```
> # taken: 440ms
> # taken: 424ms
> # taken: 417ms



## 4 undeclared number arguments
```lua
local function f() end
local function Test()
	for i = 1, 100000 do
		f(1,2,3,4)f(5,6,7,8)f(9,10,11,12)f(13,14,15,16)f(17,18,19,20)f(21,22,23,24)f(25,26,27,28)f(29,30,31,32)f(33,34,35,36)f(37,38,39,40)
	end
end
```
> # taken: 308ms
> # taken: 301ms
> # taken: 308ms



## 4 strings
Note: Strings are passed by copy so the longer they are the worst it will be.
This test is to get the base difference.
```lua
local function f(s1,s2,s3,s4) end
local function Test()
	for i = 1, 100000 do
		f("1","2","3","4")f("5","6","7","8")f("9","10","11","12")f("13","14","15","16")f("17","18","19","20")f("21","22","23","24")f("25","26","27","28")f("29","30","31","32")f("33","34","35","36")f("37","38","39","40")
	end
end
```
> # taken: 335ms
> # taken: 342ms
> # taken: 344ms



## table of 8 number arguments
```lua
local function f(t) end
local function Test()
	for i = 1, 100000 do
		f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})f({1,2,3,4,5,6,7,8})
	end
end
```
> # taken: 485ms
> # taken: 492ms
> # taken: 519ms
