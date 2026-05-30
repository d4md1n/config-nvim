vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
return {
	--- Improved terminal toggle
	"akinsho/toggleterm.nvim",
	version = "v2.*",
	config = function()
		require("toggleterm").setup({
			-- size can be a number or function which is passed the current terminal
			--size = 20 |
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<leader>tt]],
			insert_mappings = false,
			--direction = 'vertical' | 'horizontal' | 'tab' | 'float',
			direction = "horizontal",
			close_on_exit = true, -- close the terminal window when the process exits
			shell = "/usr/bin/bash", -- change the default shell
		})
	end,
}
