local M = {}
M.setup = function(c)
  c.default_cursor_style = 'BlinkingUnderline'
  c.cursor_blink_rate = 500
  c.animation_fps = 60
end
return M
