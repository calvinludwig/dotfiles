local wez = require 'wezterm'
local c = wez.config_builder()

local function setup(module) module.setup(c) end

setup(require('lua/appearance'))
setup(require('lua/fonts'))
setup(require('lua/appearance'))
setup(require('lua/mappings'))
setup(require('lua/tabs'))
setup(require('lua/cursor'))

return c
