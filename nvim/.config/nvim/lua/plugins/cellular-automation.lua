return {
    "Eandrju/cellular-automaton.nvim",
    lazy=true,
    config = function()
        vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
    end
}
