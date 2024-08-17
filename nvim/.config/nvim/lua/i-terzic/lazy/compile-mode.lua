-- return {
--   "ej-shafran/compile-mode.nvim",
--   config = function()
--     vim.g.compile_mode = {
--       -- you can disable colors by uncommenting this line
--       -- no_baleia_support = true,
--       default_command = "make -k",
--     }
--     vim.keymap.set("n", "<leader>ne", function()
--       compile_mode.next_error()
--     end, {})
--     vim.keymap.set("n", "<leader>pe", function()
--       compile_mode.prev_error()
--     end, {})
--   end,
--   lazy = false,
--   dependencies = {
--     { "m00qek/baleia.nvim", tag = "v1.3.0" },
--   }
-- }
--
return {
  "ej-shafran/compile-mode.nvim",
  branch = "latest",
  -- or a specific version:
  -- tag = "v4.0.0"
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- if you want to enable coloring of ANSI escape codes in
    -- compilation output, add:
    { "m00qek/baleia.nvim", tag = "v1.3.0" },
  },
  config = function()
    ---@type CompileModeOpts
    vim.g.compile_mode = {
        -- to add ANSI escape code support, add:
        baleia_setup = true,
    }

    vim.keymap.set("n", "<leader>ne", function()
      compile_mode.next_error()
    end, {})
    vim.keymap.set("n", "<leader>pe", function()
      compile_mode.prev_error()
    end, {})
  end,
  lazy = false
}

