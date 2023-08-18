require("toggleterm").setup{
    size = function(term)
        if term.direction == "horizontal" then
            return vim.o.lines * 0.5
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.5
        end
    end,
    open_mapping = [[<C-t>]],
    direction = 'horizontal'

}
