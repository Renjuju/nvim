return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  --keymaps = function()
  --  -- key bindings for ChatGPT
  --  vim.keymap.set("n", "<leader>g", "<cmd>lua require('chatgpt').open()<CR>")
  --end
}
