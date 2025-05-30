return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
			"nvim-neotest/nvim-nio"
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")

			require("dapui").setup()
			require("dap-go").setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
			vim.keymap.set('n', '<F8>', function() require('dap').step_over() end)
			vim.keymap.set('n', '<F9>', function() require('dap').step_into() end)
			vim.keymap.set('n', '<F10>', function() require('dap').step_out() end)
			vim.keymap.set('n', '<Leader>dc', function() require('dap').clear_breakpoints() end)
			vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)


			vim.keymap.set('n', '<Leader>w', function() dapui.open() end)
			vim.keymap.set('n', '<Leader>W', function() dapui.close() end)

			vim.fn.sign_define("DapBreakpoint", {text = "⏺", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl="DapBreakpoint"})
		end,
	}
}
