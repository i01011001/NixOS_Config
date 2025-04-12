
local wezterm = require 'wezterm'
local config = {}
config.font = wezterm.font {
	family = 'Iosevka Nerd Font',
	weight = 'Medium',
}
-- config.font = wezterm.font  'Iosevka Nerd Font' 
config.color_scheme = "i01011001"
config.font_size = 10.0

-- config.cell_width = 0.85
-- config.line_height = .95
config.enable_tab_bar = false

config.default_cursor_style = "SteadyBlock"
config.animation_fps= 30
config.max_fps  = 120
config.window_close_confirmation = "NeverPrompt"
config.hide_mouse_cursor_when_typing = false
config.window_padding = {
  left = 5,
  right = 1,
  top = 3,
  bottom = 1,
}
config.keys = {
  -- {
  --   key = 'n',
  --   mods = 'SHIFT|CTRL',
  --   action = wezterm.action.ToggleFullScreen,
  -- },
  {
    key = '0',
    mods = 'CTRL',
    action = wezterm.action.ResetFontAndWindowSize,
  },
}

config.window_frame = {
  border_left_width = '0cell',
  border_right_width = '0cell',
  border_bottom_height = '0cell',
  border_top_height = '0cell',
  border_left_color = 'black',
  border_right_color = 'black',
  border_bottom_color = 'black',
  border_top_color = 'black',
}
config.enable_wayland = true 

-- config.webgpu_preferred_adapter = {
--         backend= "Vulkan",
--         device= 7957,
--         device_type= "DiscreteGpu",
--         driver= "NVIDIA",
--         driver_info= "550.40.80",
--         name= "NVIDIA GeForce RTX 2060",
--         vendor= 4318,
--     }
-- config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

return config
