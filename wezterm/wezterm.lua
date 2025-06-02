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
}}

local function center_window_once(window)
  wezterm.GLOBAL.windows_centered = wezterm.GLOBAL.windows_centered or {}

  local window_id = window:window_id() .. ""
  if wezterm.GLOBAL.windows_centered[window_id] then
    return
  end

  local screen = wezterm.gui.screens().active
  local ratio = 0.6
  local width = screen.width * ratio
  local height = screen.height * ratio

  window:set_inner_size(width, height)

  local dimensions = window:get_dimensions()
  local x = (screen.width - dimensions.pixel_width) * 0.5
  local y = (screen.height - dimensions.pixel_height) * 0.5

  wezterm.GLOBAL.windows_centered[window_id] = true

  window:set_position(x, y)
end

wezterm.on("update-status", function(window)
  center_window_once(window)
end)

-- Finally, return the configuration to wezterm:
return config
