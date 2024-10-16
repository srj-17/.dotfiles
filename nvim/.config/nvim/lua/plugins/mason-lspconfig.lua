return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "mason.nvim",
        -- this is for broadcasting to the lsp about our 
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        require("mason-lspconfig").setup({
            automatic_installation = true,
            -- this setup will read all data from mason and 
            -- pull the list of all installed servers
            -- will pass items on that list to handlers who will setup the servers
            -- one by one
            handlers = {
                function (server_name)
                    local capabilities = require("cmp_nvim_lsp").default_capabilities()
                    require("lspconfig")[server_name].setup({
                        -- Also, setup up completion configuration provided by cmp-nvim-lsp for each server
                        capabilities = capabilities,
                        on_attach = function(client, bufnr)
                            local opts = {buffer = bufnr, remap = false}
                            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                        end,
                    })
                end,
            },

            ensure_installed= {
                "lua_ls",
                "clangd",
                "markdown_oxide",
                "ts_ls",
                "cssls",
                "tailwindcss",
                -- "grammarly",
            },
        })
    end
},
}
