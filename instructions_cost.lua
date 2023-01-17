local TEST_ITERATIONS = 4



--- TFM Settings
tfm.exec.disableAutoNewGame(true)



--- Resources available for tests
local f = function() end
local f_r = function() return 18 end
local f_1 = function(a) end
local f_4 = function(a,b,c,d) end
local dst_l = 1
dst_g = 1
local a = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
local t = {a = 0, b = 1, c = 2, d = 3, e = 4, f = 5, g = 6, h = 7, i = 8, j = 9}



--- Tests.
-- For better accuracy, each test is performed 1000 times, including 100 using a loop.
local tests = {
	{name = "witness", func = function()
		for i = 1,100 do
			-- expect 10 instructions
		end
	end},
	{name = "function call", func = function()
		for i = 1,100 do
			f()f()f()f()f()f()f()f()f()f()
		end
	end},
	{name = "function call 1 arg", func = function()
		for i = 1,100 do
			f_1(0)f_1(1)f_1(2)f_1(3)f_1(4)f_1(5)f_1(6)f_1(7)f_1(8)f_1(9)
		end
	end},
	{name = "function call 4 args", func = function()
		for i = 1,100 do
			f_4(0,1,2,3)f_4(1,1,2,3)f_4(2,1,2,3)f_4(3,1,2,3)f_4(4,1,2,3)f_4(5,1,2,3)f_4(6,1,2,3)f_4(7,1,2,3)f_4(8,1,2,3)f_4(9,1,2,3)
		end
	end},
	{name = "function call return", func = function()
		for i = 1,100 do
			f_r()f_r()f_r()f_r()f_r()f_r()f_r()f_r()f_r()f_r()
		end
	end},
	{name = "tonumber('NNNN')", func = function()
		for i = 1,100 do
			tonumber("8789")tonumber("4555")tonumber("1234")tonumber("2341")tonumber("8789")tonumber("9908")tonumber("8769")tonumber("3567")tonumber("5555")tonumber("6555")
		end
	end},
	{name = "tostring(NNNN)", func = function()
		for i = 1,100 do
			tostring(1873)tostring(5665)tostring(4123)tostring(8756)tostring(4758)tostring(4444)tostring(5544)tostring(4452)tostring(5525)tostring(4485)
		end
	end},
	{name = "read local", func = function()
		for i = 1,100 do
			if dst_l and dst_l and dst_l and dst_l and dst_l and dst_l and dst_l and dst_l and dst_l and dst_l then end
		end
	end},
	{name = "read global", func = function()
		for i = 1,100 do
			if dst_g and dst_g and dst_g and dst_g and dst_g and dst_g and dst_g and dst_g and dst_g and dst_g then end
		end
	end},
	{name = "assign local", func = function()
		for i = 1,100 do
			dst_l = 0 dst_l = 1 dst_l = 2 dst_l = 3 dst_l = 4 dst_l = 5 dst_l = 6 dst_l = 7 dst_l = 8 dst_l = 9
		end
	end},
	{name = "assign global", func = function()
		for i = 1,100 do
			dst_g = 0 dst_g = 1 dst_g = 2 dst_g = 3 dst_g = 4 dst_g = 5 dst_g = 6 dst_g = 7 dst_g = 8 dst_g = 9
		end
	end},
	{name = "read array entry", func = function()
		for i = 1,100 do
			if a[0] and a[9] and a[2] and a[3] and a[4] and a[5] and a[7] and a[6] and a[8] and a[1] then end
		end
	end},
	{name = "assign array entry", func = function()
		for i = 1,100 do
			a[9] = 0 a[1] = 1 a[8] = 2 a[3] = 3 a[5] = 4 a[4] = 5 a[6] = 6 a[7] = 7 a[2] = 8 a[0] = 9 
		end
	end},
	{name = "read table entry", func = function()
		for i = 1,100 do
			if t.a and t.b and t.c and t.b and t.e and t.f and t.g and t.h and t.i and t.j then end
		end
	end},
	{name = "assign table entry", func = function()
		for i = 1,100 do
			t.a = 0 t.b = 1 t.c = 2 t.d = 3 t.e = 4 t.f = 5 t.g = 6 t.h = 7 t.i = 8 t.j = 9
		end
	end},
	{name = "'ABCD' .. 'EFGH'", func = function()
		for i = 1,100 do
			if 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' and 'ABCD' .. 'EFGH' then end
		end
	end},
}



--- Total tile taken by each test.
local total_times = {}
for i_test, test in ipairs(tests) do
	total_times[test.name] = 0
end



--- Run all the tests once
local test_run_count = 0
local os_time = os.time
local function RunTests()
	for i_test, test in ipairs(tests) do
		local start_time, end_time
		local func = test.func
		start_time = os_time()
		func()
		end_time = os_time()
		total_times[test.name] = total_times[test.name] + (end_time - start_time)
	end
	test_run_count = test_run_count + 1
	tfm.exec.chatMessage(string.format("Tests <fc>%d%%</fc> complete.", test_run_count * 100 / TEST_ITERATIONS))
end



--- Display test results
local function DisplayResults()
	tfm.exec.chatMessage(string.format("<fc>Tests done!</fc> (<r>%d</r> iterations, <r>1000</r> instructions per iteration)", test_run_count))
	local witness_time = total_times["witness"]
	for i_test, test in ipairs(tests) do
		local time = total_times[test.name]
		-- substracting witness time from tests
		if test_name ~= "witness" then
			total_times[test.name] = time - witness_time
		end
		local padding = ""
		for i = #test.name-(#test.name+3)%4,20,4 do
			padding = padding .. "\t"
		end
		tfm.exec.chatMessage(string.format("&gt; <ch>%s</ch>:%s<r>%dms</r> ttl -\t<ch2>%.6fms</ch2>/1000i", test.name, padding, time, time / test_run_count))
	end
end



--- Run tests every 5 loops so we dont run out of runtime.
local i_loop = -1
local results_displayed = false
function eventLoop()
	if test_run_count < TEST_ITERATIONS then
		i_loop = (i_loop + 1) % 5
		if i_loop == 0 then
			RunTests()
		end
	elseif test_run_count == TEST_ITERATIONS and not results_displayed then
		DisplayResults()
		results_displayed = true
	end
end
