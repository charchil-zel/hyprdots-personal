return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		local lualine_theme = require("lualine.themes.gruvbox-material")
		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = lualine_theme,
				transparent = true,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
					{
						function()
							return os.date("%I:%M")
						end,
					},
				},

				lualine_a = {
					"buffers",
				},

				lualine_b = {
					"fileformat",
				},

				-- lualine_c = {
				-- 	function()
				-- 		return os.date("%I:%M")
				-- 	end,
				-- },
			},
		})
	end,
}
--
--
--
-- -require('lualine').setup {
--   options = {
--     icons_enabled = true,
--     component_separators = '|',
--     section_separators = '',
--   },
--   sections = {
--     lualine_x = {
--       {
--         require("noice").api.statusline.mode.get,
--         cond = require("noice").api.statusline.mode.has,
--         color = { fg = "#ff9e64" },
--       },
--       {
--         require("noice").api.status.command.get,
--         cond = require("noice").api.status.command.has,
--         color = { fg = "#ff9e64" },
--       },
--     },
--     lualine_a = {
--       {
--         'buffers',
--       }
--     }
--   }
-- }-
-- end,
--
--
