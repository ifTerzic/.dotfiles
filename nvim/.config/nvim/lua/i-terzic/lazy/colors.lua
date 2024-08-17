function ColorMyPencils(color)
  color = color or "onedark"
  vim.cmd.colorscheme(color)
end

return {
  {
    "navarasu/onedark.nvim",
    config = function()
      ColorMyPencils()
    end,
  },
}
