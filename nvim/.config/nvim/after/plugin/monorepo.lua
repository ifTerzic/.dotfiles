vim.keymap.set("n", "<leader>pp", function()
    require("telescope").extensions.monorepo.monorepo()
end)

