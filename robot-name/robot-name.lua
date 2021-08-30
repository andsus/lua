local Robot = {}
local known_names = {}

function Robot:new()
	local robot = {}
	self.__index = self
	setmetatable(robot, self)
	robot:reset()
	return robot	
end


local function generate_serial_name()
	local name = ''	
	
	for _ = 1, 2 do
		local char = string.char(math.random(('A'):byte(), ('Z'):byte()))
		name = name .. char
	end	
	for _ = 1, 3 do
		name = name .. math.random(0, 9)
	end
	
	return name
end


function Robot:reset()
	local new_name = generate_serial_name()
	
	if known_names[new_name] then
		return self:reset()
	else
		known_names[new_name] = true
		if self.name then
			known_names[self.name] = false
		end
		self.name = new_name
	end	
end


return Robot