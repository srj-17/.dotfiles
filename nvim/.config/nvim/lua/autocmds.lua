local ac = vim.api.nvim_create_autocmd

ac("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 110 }) -- milliseconds
	end,
})

ac({ "BufNewFile", "BufRead" }, {
	callback = function()
		vim.filetype.add({
			pattern = {
				[".*.ejs"] = "html",
			},
		})
	end,
})
