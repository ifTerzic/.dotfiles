local has = vim.fn.has
function ColorMyPencils(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

    if not  has "macunix" then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

end

ColorMyPencils()
