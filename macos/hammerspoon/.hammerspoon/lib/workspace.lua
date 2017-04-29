local spaces = require "hs._asm.undocumented.spaces"

local module = {}

-- saved reference to most recent alert
local alertId = nil

-- create lookup number -> uuid
local screen = spaces.mainScreenUUID()
local ws = spaces.layout()[screen]

function module.switchTo(number)
  hs.alert.closeSpecific(alertId)
  spaces.changeToSpace(ws[number], false)
  alertUID = hs.alert.show("Workspace " .. number)
end

function module.sendTo(number)
  local window = hs.window.focusedWindow()
  spaces.moveWindowToSpace(window:id(), ws[number])
  module.switchTo(number)
end

return module
