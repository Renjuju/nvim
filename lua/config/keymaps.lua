local M = {}

function M.setup()
  -- ChatGPT
  vim.keymap.set("n", "<leader>gc", "<cmd>ChatGPT<CR>")

  vim.keymap.set('n', '<leader>gs', '<cmd>ChatGPTRun summarize<CR>')
  vim.keymap.set('v', '<leader>gs', '<cmd>ChatGPTRun summarize<CR>')

  vim.keymap.set("n", "<leader>ge", "<cmd>ChatGPTRun explain_code<CR>")
  vim.keymap.set("v", "<leader>ge", "<cmd>ChatGPTRun explain_code<CR>")

  vim.keymap.set("n", "<leader>gg", "<cmd>ChatGPTRun grammar_correction<CR>")
  vim.keymap.set("v", "<leader>gg", "<cmd>ChatGPTRun grammar_correction<CR>")

  Toggle_neotree = function()
    vim.cmd('Neotree toggle')
    vim.cmd('wincmd p')
  end

  --Neotree
  vim.keymap.set('n', '<leader>t', Toggle_neotree, { noremap = true, silent = true })
  vim.keymap.set('n', '<leader>r', '<cmd>Neotree current reveal_force_cwd<CR>')


  -- Open config files
  vim.keymap.set('n', '<leader>c', function()
    vim.cmd('cd ~/.config/nvim/')
    vim.cmd('tabnew ~/.config/nvim/lua/config/keymaps.lua')
    Toggle_neotree()
  end, { noremap = true, silent = true })

  -- Removes trailing spaces on save
  vim.api.nvim_create_autocmd("BufWritePre", {
    command = [[%s/\s\+$//e]],
  })
end

return M
