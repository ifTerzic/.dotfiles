vim.keymap.set("n", "<leader>gs", vim.cmd.Git, {desc = '[G]it Status'})

local ITerzic_FUgitive = vim.api.nvim_create_augroup("ITerzic_FUgitive", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {

    group = ITerzic_FUgitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "<leader>p", function()
            vim.cmd [[ Git push ]]
        end, opts)

        vim.keymap.set("n", "<leader>P", function ()
            vim.cmd [[ Git pull ]]
        end)

        vim.keymap.set("n", "<leader>t", ":Git push -u origin", opts)
    end
})
