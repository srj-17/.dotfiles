-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- vi like bindings
hl.unbind("SUPER + H") -- no prev binding
hl.unbind("SUPER + J") -- was previously "toggle window split"
hl.unbind("SUPER + K") -- was previously "show keybinds"
hl.unbind("SUPER + L") -- was previously "toggle workspace layout"

o.bind("SUPER + H", "Go to left window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + J", "Go to down window", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Go to up window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Go to down window", hl.dsp.focus({ direction = "r" }))

o.bind("SUPER + SHIFT + H", "Go to left window", hl.dsp.window.move({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Go to down window", hl.dsp.window.move({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Go to up window", hl.dsp.window.move({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Go to down window", hl.dsp.window.move({ direction = "r" }))

-- for prev binds that were changed
o.bind("SUPER + D", "show keybinDs", "omarchy menu keybindings")

-- custom binds
o.bind("SUPER + N", "Open Note", "note-omarchy")

hl.unbind("SUPER + SHIFT + M")
o.bind("SUPER + SHIFT + M", "Open Youtube Music", "omarchy-launch-webapp 'https://music.youtube.com'")
