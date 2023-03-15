local wk = require("which-key")
local mappings = {
	q = {
		name = "Quit",
		q = { "<cmd>q<CR>", "Quit" },
	},
}
local opts = {
	prefix = "<leader>",
}
wk.register(mappings, opts)
