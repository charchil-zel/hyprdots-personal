-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	event = { "BufReadPre", "BufNewFile" },
-- 	build = ":TSUpdate",
-- 	dependencies = {
-- 		"windwp/nvim-ts-autotag",
-- 	},
-- 	config = function()
-- 		-- import nvim-treesitter plugin
-- 		local treesitter = require("nvim-treesitter.configs")
--
-- 		-- configure treesitter
-- 		treesitter.setup({ -- enable syntax highlighting
-- 			highlight = {
-- 				enable = true,
-- 			},
-- 			-- enable indentation
-- 			indent = { enable = true },
-- 			-- enable autotagging (w/ nvim-ts-autotag plugin)
-- 			autotag = {
-- 				enable = true,
-- 			},
-- 			-- ensure these language parsers are installed
-- 			ensure_installed = {
-- 				"json",
-- 				"javascript",
-- 				"typescript",
-- 				"tsx",
-- 				"yaml",
-- 				"html",
-- 				"css",
-- 				"prisma",
-- 				"markdown",
-- 				"markdown_inline",
-- 				"svelte",
-- 				"graphql",
-- 				"bash",
-- 				"lua",
-- 				"vim",
-- 				"dockerfile",
-- 				"gitignore",
-- 				"query",
-- 				"vimdoc",
-- 				"c",
-- 			},
-- 			incremental_selection = {
-- 				enable = true,
-- 				keymaps = {
-- 					init_selection = "<C-space>",
-- 					node_incremental = "<C-space>",
-- 					scope_incremental = false,
-- 					node_decremental = "<bs>",
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
--
local M = {
	"nvim-treesitter/nvim-treesitter",
	-- event = { "BufReadPost", "BufNewFile" },
	-- build = ":TSUpdate",
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			-- event = "VeryLazy",
		},
	},
}

function M.config()
	local wk = require("which-key")
	wk.register({
		["<leader>Ti"] = { "<cmd>TSConfigInfo<CR>", "Info" },
	})

	require("nvim-treesitter.configs").setup({
		ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "c" }, -- put the language you want in this array
		ignore_install = { "" },
		sync_install = false,
		highlight = {
			enable = true,
			-- disable = { "markdown" },
			additional_vim_regex_highlighting = false,
		},
		auto_install = true,
		modules = {},
		indent = {
			enable = true,
			disable = { "yaml" },
		},
		autopairs = { enable = true },
		textobjects = {
			select = {
				enable = true,
				-- Automatically jump forward to textobj, similar to targets.vim
				lookahead = true,
				keymaps = {
					-- You can use the capture groups defined in textobjects.scm
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["at"] = "@class.outer",
					["it"] = "@class.inner",
					["ac"] = "@call.outer",
					["ic"] = "@call.inner",
					["aa"] = "@parameter.outer",
					["ia"] = "@parameter.inner",
					["al"] = "@loop.outer",
					["il"] = "@loop.inner",
					["ai"] = "@conditional.outer",
					["ii"] = "@conditional.inner",
					["a/"] = "@comment.outer",
					["i/"] = "@comment.inner",
					["ab"] = "@block.outer",
					["ib"] = "@block.inner",
					["as"] = "@statement.outer",
					["is"] = "@scopename.inner",
					["aA"] = "@attribute.outer",
					["iA"] = "@attribute.inner",
					["aF"] = "@frame.outer",
					["iF"] = "@frame.inner",
				},
			},
		},
	})
end

return M
