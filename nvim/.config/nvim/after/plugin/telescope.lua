local builtin = require('telescope.builtin')
local project_actions = require("telescope._extensions.project.actions")
local action_state = require("telescope.actions.state")
local project_utils = require("telescope._extensions.project.utils")

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').setup {
    extensions = {
        project = {
            hidden_files = true, -- default: false
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true, -- default false
            -- default for on_project_selected = find project files
            on_project_selected = function(prompt_bufnr)
                -- Do anything you want in here. For example:
                -- Change dir to the selected project
                project_actions.change_working_directory(prompt_bufnr, false)

                -- Change monorepo directory to the selected project
                local selected_entry = action_state.get_selected_entry(prompt_bufnr)
                require("monorepo").change_monorepo(selected_entry.value)
                vim.cmd(string.format(":Ex %s", selected_entry.value))
            end
    }
}
}

vim.api.nvim_set_keymap(
        'n',
        '<leader>.',
        ":lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = false}
)

vim.keymap.set('n', '<leader>pa', function()
    project_utils.change_project_dir(vim.b.netrw_curdir)
    project_actions.add_project_cwd()
end)
