return {
  "ej-shafran/compile-mode.nvim",
  config = function()
    local compile_mode = require("compile-mode")
    compile_mode.setup({
      -- you can disable colors by uncommenting this line
      -- no_baleia_support = true,
      default_command = "make -k",
      same_window_errors = true,
    })
    vim.keymap.set("n", "<leader>ne", function()
      compile_mode.next_error()
    end, {})
    vim.keymap.set("n", "<leader>pe", function()
      compile_mode.prev_error()
    end, {})
  end,
  lazy = false,
  dependencies = {
    { "m00qek/baleia.nvim", tag = "v1.3.0" },
  }
}
