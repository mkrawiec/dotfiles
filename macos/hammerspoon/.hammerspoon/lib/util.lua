local module = {}

-- logging
local logger = hs.logger.new("default", "debug")

function module.debug(...)
  return logger:d(...)
end

return module
