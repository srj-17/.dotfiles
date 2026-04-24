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

local function setMakePrg()
	-- Create an augroup to prevent duplicating autocmds if config is reloaded
	local set_makeprg_group = vim.api.nvim_create_augroup("SetMakePrg", { clear = true })

	-- Define default makeprg mappings based on filetype
	local ft_makeprg = {
		python = "python3 %",
		rust = "cargo build",
		go = "go run %",
		cpp = "g++ % -o %<",
		c = "gcc % -o %<",
		javascript = "node %",
		markdown = "pandoc % -o %<.pdf",
		php = "php %",
		java = "javac %",
		make = "make",
	}

	vim.api.nvim_create_autocmd("FileType", {
		group = set_makeprg_group,
		pattern = "*", -- Runs on every filetype
		callback = function(args)
			local ft = args.match

			if ft_makeprg[ft] then
				-- Use setlocal to only apply to this buffer
				vim.bo[args.buf].makeprg = ft_makeprg[ft]
			end
		end,
	})
end

setMakePrg()
