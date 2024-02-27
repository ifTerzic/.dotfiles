local compile_mode = require("compile-mode")
compile_mode.setup({
    -- you can disable colors by uncommenting this line
    no_baleia_support = true,
    default_command = "make -k",
    same_window_errors = true,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "compilation",
  command = "wincmd w",
})


vim.keymap.set('n', '<leader>ne', function() compile_mode.next_error() end, {})
vim.keymap.set('n', '<leader>pe', function() compile_mode.prev_error() end, {})
