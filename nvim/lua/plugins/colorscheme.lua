return {
	'EdenEast/nightfox.nvim',
	colorscheme = "carbonfox",
	lazy = false,
	priority = 1000,
	config = function()
		require('nightfox').setup()
		vim.cmd("colorscheme carbonfox")
	end
}
