-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
    enable_tab_bar = false,
    automatically_reload_config = true,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    font = wezterm.font('JetBrains Mono', {
        weight = 'Bold',
        italic = true
    }),
    font_size = 12.5,
    color_scheme = 'purplepeter',
    window_background_opacity = 0.3,
    macos_window_background_blur = 20,
	default_cursor_style = 'BlinkingBar',
    initial_cols = 120,
    initial_rows = 40,
    window_decorations = "NONE",
}

config.background = {{
    source = {
        -- File = "/Users/jaron/.config/wezterm/bg-monterey.png",
        Color = "#1E1946"
    },
    width = '100%',
    height = '100%',
    hsb = {
        hue = 1.0,
        saturation = 1.02,
        brightness = 0.25
    },
    opacity = 0.7,
    s
}}

-- Finally, return the configuration to wezterm:
return config
