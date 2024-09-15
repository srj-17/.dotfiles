return {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    config = function() 
        require("markview").setup({

            -- which modes to use markview on
            modes = { "n", "no", "c" }, -- Change these modes
            -- to what you need

            -- hybrid_modes = { "n" },     -- Uses this feature on
            -- normal mode

            -- This is nice to have
            callbacks = {
                on_enable = function (_, win)
                    vim.wo[win].conceallevel = 2;
                    vim.wo[win].concealcursor = "c";
                end
            },
        })
        vim.cmd("Markview enableAll");
    end
}
