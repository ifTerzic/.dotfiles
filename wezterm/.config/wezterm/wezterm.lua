-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'nord'
config.font = wezterm.font "IosevkaTerm Nerd Font Mono"
config.font_size = 14.0

-- tab bar
config.hide_tab_bar_if_only_one_tab = true

-- background image
config.window_background_image = "/Users/ivan/Pictures/Backgrounds/cyberpunk-blur.png"
config.window_background_image_hsb = {
  brightness = 0.1,
  hue = 1.0,
  saturation = 0.7,
}
config.window_close_confirmation = 'AlwaysPrompt'

-- and finally, return the configuration to wezterm
return config
