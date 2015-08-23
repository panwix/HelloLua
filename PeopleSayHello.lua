People = {}

function clone(tab)
	local ins = {}
	for key, var in pairs(tab) do 
		ins[key] = var
	end
	return ins
end

function copy(dist, tab)
	for key, var in pairs(tab) do
		dist[key] = var
	end
	return dist
end		

People.sayHello = function(self)
	print("People say hello:"..self.name)
end

People.new = function(name)
	local self = clone(People)
	self.name = name
	return self
end	


Man = {}

Man.new = function(name)
	local self = People.new(name)
	copy(self, Man);
	return self
end

Man.sayHello = function()
	print("Man say Hello")
end

local m = Man.new("panwix")
m:sayHello()

