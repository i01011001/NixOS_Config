---------------------------
-- custom awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gears = require("gears")


local theme = {}

theme.bg_normal     = "#444444"
theme.bg_focus      = "#666666"
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal
theme.bg_light      = theme.bg_normal
theme.bg_very_light = theme.bg_normal
theme.bg_dark       = theme.bg_normal

theme.fg_normal     = theme.bg_normal
theme.fg_dark       = theme.bg_normal
theme.fg_focus      = theme.bg_normal
theme.fg_urgent     = theme.bg_normal
theme.fg_minimize   = theme.bg_normal

-- theme.highlight = "#F43E5C"
-- theme.highlight_alt = "#B877DB"
--
-- theme.misc1 = "#6C6F93"
-- theme.misc2 = "#2f3240"
-- theme.transparent = "'#282A3600"

-- -- terminal colors
-- theme.blue = "#26BBD9"
-- theme.blue_light = "#3FC6DE"
-- theme.cyan = "#59E3E3"
-- theme.cyan_light = "#6BE6E6"
-- theme.green = "#29D398"
-- theme.green_light = "#3FDAA4"
-- theme.purple = "#EE64AE"
-- theme.purple_light = "#F075B7"
-- theme.red = "#E95678"
-- theme.red_light = "#EC6A88"
-- theme.yellow = "#FAB795"
-- theme.yellow_light = "#FBC3A7"


-- theme.useless_gap   = dpi(8)
-- theme.border_width  = dpi(0)
-- theme.border_normal = theme.bg_very_light
-- theme.border_focus  = theme.bg_very_light
-- theme.border_marked = theme.bg_very_light
-- theme.rounded_corners = true
-- theme.border_radius = dpi(6) -- set roundness of corners


-- -- bar config
-- theme.bar_position = "top"
-- theme.bar_height = dpi(28)
-- theme.bar_item_radius = dpi(10)
-- theme.bar_item_padding = dpi(3)
--
-- -- regular
--
-- theme.titlebar_height = dpi(28)

theme.wallpaper = "./simple-nix-black.png"

return theme
