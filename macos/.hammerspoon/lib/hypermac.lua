local util = require "lib.util"
local indicator = require "lib.indicator"

-- hyper key reference
local hyper = hs.hotkey.modal.new({}, "f18")
function hyper:entered() indicator.setNormal() end
function hyper:exited() indicator.setInsert() end

-- curry into a callback with done argument
local function withDone(cb)
  return function()
    return cb(function() hyper:exit() end)
  end
end

-- split string into modifiers and key
local function splitKeyString(str)
  local mod = hs.fnutils.split(str, "+")
  local key = table.remove(mod)
  util.debug(hs.inspect.inspect(mod), key)

  return mod, key
end

return function(config)
  for keyStr, cb in pairs(config) do
    local mod, key = splitKeyString(keyStr)
    hyper:bind(mod, key, nil, withDone(cb), nil, withDone(cb))
  end
end
