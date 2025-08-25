function ColorMyPencils(color)
	color = color or "nord"
	vim.cmd.colorscheme(color)
end

return {
	"shaunsingh/nord.nvim",
	-- "navarasu/onedark.nvim",
	-- "blazkowolf/gruber-darker.nvim",
	config = function()
		ColorMyPencils()
	end,
	priority = 2,
}
