-- browsers in 1
hl.window_rule({ workspace = "1", match = { class = "zen" } })

-- terminals in 2
hl.window_rule({ workspace = "2", match = { class = "foot" } })

-- documents to read in 3
hl.window_rule({ workspace = "3", match = { class = "org.pwmt.zathura" } })
hl.window_rule({ workspace = "3", match = { class = "org.gnome.Evince" } })
hl.window_rule({ workspace = "3", match = { class = "sioyek" } })

-- video and music playback in 4
hl.window_rule({ workspace = "4", match = { class = ".*.youtube.com__-Default" } })
hl.window_rule({ workspace = "4", match = { class = "chrome-kisskh.id__-Default" } })

-- ai in 5
hl.window_rule({ workspace = "5", match = { class = "chatgpt" } })

-- extra browser in 9
hl.window_rule({ workspace = "9", match = { class = "chromium" } })

-- messaging in 10
hl.window_rule({ workspace = "10", match = { class = "chrome-messenger.com__-Default" } })
hl.window_rule({ workspace = "10", match = { class = "chrome-web.whatsapp.com__-Default" } })
hl.window_rule({ workspace = "10", match = { class = "chrome-discord.com__channels_@me-Default" } })

-- transparency off
hl.window_rule({ opacity = 1, match = { class = ".*" } })
