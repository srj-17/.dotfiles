return {
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1001,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_better_performance = 1
            vim.g.gruvbox_material_enable_bold = 1
            vim.g.gruvbox_material_enable_italic = 1
            vim.g.gruvbox_material_transparent_background = 1
            vim.g.gruvbox_material_dim_inactive_windows = 1

            -- vim.cmd.colorscheme("gruvbox-material")

            require("lualine").setup({
                options = {
                    theme = "gruvbox-material",
                },
            })
        end,
    },
}
