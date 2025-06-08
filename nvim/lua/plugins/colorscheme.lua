return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_colors = function(colors)
      colors.bg_statusline = colors.none -- To check if its working try something like "#ff00ff" instead of colors.none
    end,
    on_highlights = function(hightlight, colors)
      -- TabLineFill is currently set to black
      hightlight.TabLineFill = {
        bg = colors.none,
      }
    end,
  },
}
