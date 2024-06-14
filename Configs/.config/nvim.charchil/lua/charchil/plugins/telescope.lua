-- return {
-- 	"nvim-telescope/telescope.nvim",
-- 	branch = "0.1.x",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
-- 		"nvim-tree/nvim-web-devicons",
-- 		"folke/todo-comments.nvim",
-- 	},
-- 	config = function()
-- 		local telescope = require("telescope")
-- 		local actions = require("telescope.actions")
--
-- 		telescope.setup(
--
--        extensions = {
--     fzf = {
--       fuzzy = true,                    -- false will only do exact matching
--       override_generic_sorter = true,  -- override the generic sorter
--       override_file_sorter = true,     -- override the file sorter
--       case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
--                                        -- the default case_mode is "smart_case"
--     },
--   },
--
--       {
-- 			defaults = {
-- 				path_display = { "smart" },
-- 				mappings = {
-- 					i = {
-- 						["<C-k>"] = actions.move_selection_previous, -- move to prev result
-- 						["<C-j>"] = actions.move_selection_next, -- move to next result
-- 						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- move the selected to quick fix lists
-- 					},
-- 				},
-- 			},
-- 		})
--
-- 		telescope.load_extension("fzf")
-- 		telescope.load_extension("noice")
-- 		-- set keymaps
-- 		local keymap = vim.keymap -- for conciseness
--
-- 		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- 		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
-- 		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
-- 		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
-- 		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
-- 	end,
-- }
-- --
-- --
-- --
-- -- return {
-- -- 	"nvim-telescope/telescope.nvim",
-- -- 	branch = "0.1.x",
-- -- 	dependencies = {
-- -- 		"nvim-lua/plenary.nvim",
-- -- 		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
-- -- 		"nvim-tree/nvim-web-devicons",
-- -- 		"folke/todo-comments.nvim",
-- -- 	},
-- -- 	config = function()
-- -- 		local telescope = require("telescope")
-- -- 		local actions = require("telescope.actions")
-- --
-- -- 		telescope.setup({
-- -- 			defaults = {
-- -- 				path_display = { "smart" },
-- -- 				mappings = {
-- -- 					i = {
-- -- 						["<C-k>"] = actions.move_selection_previous, -- move to prev result
-- -- 						["<C-j>"] = actions.move_selection_next, -- move to next result
-- -- 						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- move the selected to quick fix lists
-- -- 					},
-- -- 				},
-- -- 				-- Customize the find command to include hidden files and folders
-- -- 				vimgrep_arguments = {
-- -- 					"rg",
-- -- 					-- "--color=never",
-- -- 					"--no-heading",
-- -- 					"--with-filename",
-- -- 					"--line-number",
-- -- 					"--column",
-- -- 					"--smart-case",
-- -- 					-- "--hidden", -- Include hidden files
-- -- 					"--glob",
-- -- 					-- "!.git/", -- Exclude .git directory
-- -- 				},
-- -- 			},
-- -- 			-- 	pickers = {
-- -- 			-- 		find_files = {
-- -- 			-- 			find_command = { "fd", "--type", "f", "--hidden", "--follow", "--exclude", ".git" },
-- -- 			-- 			-- Uncomment the following line if you prefer the `find` command over `fd`
-- -- 			-- 			-- find_command = { "find", ".", "-type", "f", "-iname", ".*" }
-- -- 			-- 		},
-- -- 			-- 	},
-- -- 		})
-- --
-- -- 		telescope.load_extension("fzf")
-- -- 		telescope.load_extension("noice")
-- -- 		-- set keymaps
-- -- 		local keymap = vim.keymap -- for conciseness
-- --
-- -- 		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- -- 		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
-- -- 		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
-- -- 		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
-- -- 		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
-- -- 	end,
-- -- }

-- return {
-- 	"nvim-telescope/telescope.nvim",
-- 	branch = "0.1.x",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
-- 		"nvim-tree/nvim-web-devicons",
-- 		"folke/todo-comments.nvim",
-- 	},
-- 	config = function()
-- 		local telescope = require("telescope")
-- 		local actions = require("telescope.actions")
--
-- 		telescope.setup({
-- 			extensions = {
-- 				fzf = {
-- 					fuzzy = true,
-- 					override_generic_sorter = true,
-- 					override_file_sorter = true,
-- 					case_mode = "smart_case",
-- 				},
-- 			},
-- 			defaults = {
-- 				path_display = { "smart" },
-- 				mappings = {
-- 					i = {
-- 						["<C-k>"] = actions.move_selection_previous,
-- 						["<C-j>"] = actions.move_selection_next,
-- 						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
-- 					},
-- 				},
-- 			},
-- 		})
--
-- 		telescope.load_extension("fzf")
-- 		vim.g.zoxide_use_select = true
-- 		telescope.load_extension("noice")
--
-- 		local keymap = vim.keymap
--
-- 		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- 		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
-- 		keymap.set(
-- 			"n",
-- 			"<leader>fs",
-- 			"<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()cr>",
-- 			{ desc = "live greP" }
-- 		)
-- 		keymap.set("n", "<leader>fc", "<cmd>lua require('telescope.builtin').live_grep({ glob_pattern = "!{spec,test}"})<CR>", { desc = "live grep code "})
-- 		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
-- 	end,
-- }

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
		local themes = require("telescope.themes")

		telescope.setup({
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")
		vim.g.zoxide_use_select = true
		telescope.load_extension("noice")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set(
			"n",
			"<leader>fs",
			-- "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",

			"<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
			{ desc = "live greP" }
		)
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>lua require('telescope.builtin').live_grep({ glob_pattern = '!{spec,test}' })<cr>",
			{ desc = "live grep code" }
		)
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
		keymap.set(
			"n",
			"<leader>fw",
			"<cmd>lua require('telescope.builtin').grep_string()<cr>",
			{ desc = "Find Word under Cursor" }
		)

		require("todo-comments")
	end,
}
