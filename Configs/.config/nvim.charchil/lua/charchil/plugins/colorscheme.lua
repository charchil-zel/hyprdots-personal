-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   config = function ()
--       vim.cmd("colorscheme tokyonight")
--     end
--   }
--
--
-- return {
-- 	{
-- 		"craftzdog/solarized-osaka.nvim",
-- 		lazy = true,
-- 		priority = 1000,
-- 		opts = function()
-- 			return {
-- 				transparent = true,
-- 			}
-- 		end,
-- 	},
-- }
--
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme gruvbox")
-- 	end,
-- }
--
return {
	"bluz71/vim-moonfly-colors",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme moonfly")
	end,
}
