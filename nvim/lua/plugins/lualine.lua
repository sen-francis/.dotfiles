return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	options = {
		theme = 'auto'
	},
	config = function()
		require('lualine').setup({
			sections = {
				-- Add the macro recording status in the mode section
				lualine_b = {
					'macro', {
						'macro',
						fmt = function()
							local reg = vim.fn.reg_recording()
							if reg ~= "" then
								return "Recording @" .. reg
							end
							return nil
						end,
						color = { fg = "#ff9e64" },
						draw_empty = false,
					}
				},
			},
		})
	end
}
