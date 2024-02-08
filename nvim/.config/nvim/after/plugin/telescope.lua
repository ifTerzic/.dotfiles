local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

require('telescope').setup {
    pickers = {
        live_grep = {
            additional_args = function()
                return {"--hidden"}
            end
        },
        git_files = {
            use_git_root = false,
            show_untracked = true

        }
    },
}

