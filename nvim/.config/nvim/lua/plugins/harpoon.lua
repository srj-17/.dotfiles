return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function ()
        require("harpoon").setup({})
        local map = vim.keymap

        map.set('n', '<leader>mh',function() require("harpoon.mark").add_file() end, { desc = "harpoon mark" })
        map.set('n', '<leader>h',function() require("harpoon.ui").toggle_quick_menu() end, { desc = "toggle harpoon menu" })

        -- main file of the project lies at this location, ex: main.js, main.c, etc.
        map.set('n', '<leader>j',function() require("harpoon.ui").nav_file(1) end, { desc = "goto harpoon 1" })

        -- secondary file of the project, files dependent on this file can be navigated through fuzzyfind
        map.set('n', '<leader>k',function() require("harpoon.ui").nav_file(2) end, { desc = "goto harpoon 2" })

        -- these are files that you have to keep at the back, and less, 
        -- but should be there since you don't want to keep adding them, ex: index.html, or styles
        map.set('n', '<leader>l',function() require("harpoon.ui").nav_file(3) end, { desc = "goto harpoon 3" })
        map.set('n', '<leader>;',function() require("harpoon.ui").nav_file(4) end, { desc = "goto harpoon 4" })

        map.set('n', '<leader><',function() require("harpoon.ui").nav_next() end, { desc = "navigate to next harpoon" })
        map.set('n', '<leader>>',function() require("harpoon.ui").nav_prev() end, { desc = "navigate to prev harpoon" })
    end
}
