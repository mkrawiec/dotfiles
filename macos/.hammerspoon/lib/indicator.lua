local module = {}

local indicator = hs.menubar.new()

module.state = nil

function module.setInsert()
  indicator:setTitle("")
  module.state = "insert"
end

function module.setNormal()
  indicator:setTitle("hypermac")
  module.state = "normal"
end

-- initialize
module.setInsert()

return module
