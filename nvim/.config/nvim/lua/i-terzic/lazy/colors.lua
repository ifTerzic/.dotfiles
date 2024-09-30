function ColorMyPencils(color)
	color = color or "nightfox"
	vim.cmd.colorscheme(color)
end

return {
	{
		"EdenEast/nightfox.nvim",
		config = function()
			ColorMyPencils()
		end,
	},
}
