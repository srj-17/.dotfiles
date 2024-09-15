return {
    "williamboman/mason.nvim",
   config = function()
       require("mason").setup({
           ensure_installed= {
               "css-lsp",
               "stylua",
               "selene",
               "luacheck",
               "shellcheck",
               "shfmt",
               "tailwindcss-language-server",
               "typescript-language-server",
               "css-lsp",
           },
       })
   end
}
