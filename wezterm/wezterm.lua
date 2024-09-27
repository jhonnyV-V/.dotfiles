-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.use_resize_increments = true

--config.font_size = 10.7

-- For example, changing the color scheme
-- config.color_scheme = "Tokyo Night Storm"

-- and finally, return the configuration to wezterm
return config
