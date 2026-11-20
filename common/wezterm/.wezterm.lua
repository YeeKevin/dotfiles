local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night Moon'
config.font = wezterm.font('JetBrains Mono')
config.font_size = 15.0
config.window_padding = { left = 10, right = 10, top = 10, bottom = 10 }

return config
