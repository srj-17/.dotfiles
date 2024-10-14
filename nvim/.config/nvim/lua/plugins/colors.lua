return {
    {
        -- theme kanagawa
        "rebelot/kanagawa.nvim",
        config = function()
            -- set theme catppucchin each time nvim starts
            -- vim.cmd.colorscheme("kanagawa-wave")
        end,
    },
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
        },
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                transparent = false,
                styles = {
                    -- sidebars = "transparent",
                    -- floats = "transparent",
                    functions = {
                        italic = true,
                        bold = true,
                    },
                    keywords = {
                        bold = true,
                        italic = false,
                    },
                    variables = { },
                    comments = { },
                },
            })
            -- vim.cmd.colorscheme("tokyonight-night")
            require("lualine").setup({
                options = { theme = "auto" },
             })
        end,
    },
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
        config = function()
            -- vim.cmd.colorscheme("solarized-osaka")
        end
	},
    {
        "morhetz/gruvbox",
        config = function()
            --
            -- require("lualine").setup({
                --     options = { theme = "tokyonight-moon", }
                --  })
        --     vim.cmd.colorscheme("gruvbox");
        --
        --     -- this is for transparency 
        --     -- credit to theprimeagen
        --     function ColorMyPencils(color) 
        --         color = color or "gruvbox"
        --         vim.cmd.colorscheme(color)
        --
        --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        --
        --     end
        --     ColorMyPencils()
        -- end
    },
}
