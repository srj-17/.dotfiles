-- What we are using?
-- nvim-cmp: shows the completion list as you type. Needs third party plugins for sources
-- luasnip: snippet engine for neovim written in lua. Source of snippets / snippet expansion tool for nvim cmp
-- cmp_luasnip: luasnip's completion "engine / source" for nvim-cmp.
--     - Provides nvim-cmp with a list of possible completions while you type, which luasnip will expand
-- friendly_snippet: vscode-like snippets that can be loaded by luasnip
-- cmp-nvim-lsp: nvim-cmp's source for snippets extracted from nvim's built in lsp-client
--
--
-- How they're being used?
-- basically, everything else are sources that nvim-cmp extracts from
-- and nvim-cmp powers the window that you see while you type
-- completion-engine / sources --> nvim-cmp <-- snippet engine + snippet sources
-- completion-engine = cmp-luasnip + cmp-nvim-lsp
-- snippet-engine = friendly-snippets (source) , luasnip (engine)

return {
    {
        -- brackets autocompletion, unrelated to anything below
        'm4xshen/autoclose.nvim',
        config = function ()
            require("autoclose").setup()
        end
    },
    {
        -- this doesn't seem to be working
        -- Did the setup of the servers to have snip-providing-capabilities
        -- In mason-lspconfig
        -- But didn't work [worked]
        -- -- Didn't work before - worked after using this as a dependency 
        'hrsh7th/cmp-nvim-lsp',
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            -- vscode like friendly-snippets
            'rafamadriz/friendly-snippets',
        },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            'L3MON4D3/LuaSnip',
        },
        config = function()
            local ls = require("luasnip")

            -- load friendly snippets
            require('luasnip.loaders.from_vscode').lazy_load()

            -- Set up nvim-cmp.
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    -- snippets provided by luasnip, which are then expanded by nvim-cmp
                    expand = function(args)
                        -- we're using luasnip as snippet engine
                        ls.lsp_expand(args.body) 
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),

                    -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    -- https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip
                    -- LITERALLY MAGIC
                    ['<CR>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if ls.expandable() then
                                ls.expand()
                            else
                                cmp.confirm({
                                    select = true,
                                })
                            end
                        else
                            fallback()
                        end
                    end),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif ls.locally_jumpable(1) then
                            ls.jump(1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif ls.locally_jumpable(-1) then
                            ls.jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                }),
                -- completion sources
                sources = cmp.config.sources({
                    -- { name = 'nvim_lsp' },
                    { name = 'luasnip' }, -- For luasnip users.
                    { name = 'nvim_lsp'},
                    { name = 'path' },
                    { name = 'buffer' },
                })
            })
        end
    },
}
