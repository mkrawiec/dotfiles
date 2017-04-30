hypermac = require "lib.hypermac"
workspace = require "lib.workspace"

-- configure hyper modal
hypermac({
  ["1"] = function() workspace.switchTo(1) end,
  ["2"] = function() workspace.switchTo(2) end,
  ["3"] = function() workspace.switchTo(3) end,
  ["4"] = function() workspace.switchTo(4) end,

  ["shift+1"] = function(done) workspace.sendTo(1) done() end,
  ["shift+2"] = function(done) workspace.sendTo(2) done() end,
  ["shift+3"] = function(done) workspace.sendTo(3) done() end,
  ["shift+4"] = function(done) workspace.sendTo(4) done() end,

  ["f18"] = function(done) done() end,
  ["ctrl+["] = function(done) done() end,
  ["escape"] = function(done) done() end
})
