local wezterm = require 'wezterm'

local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices

-- change config now
config.default_domain = 'WSL:Ubuntu-24.04'

-- my coolnight colorscheme
config.colors = {
  foreground = "#CBE0F0",
  background = "#011423",
  cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
--	selection_bg = "#033259",
--	selection_fg = "#CBE0F0",
--	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
--	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

--config.font = wezterm.font("MesloLGS Nerd Font Mono")

config.font_size = 12

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.1
config.win32_system_backdrop = 'Tabbed'



-- reduce paddings
config.window_padding = {
  left = 2,
  right = 2,
  top = 1,
  bottom = 0,
}

-- keys
config.keys = {
  -- paste from the clipboard
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
  -- paste from the primary selection
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
}


-- and finally, return the configuration to wezterm
return config
