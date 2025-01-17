local M = {}


function M.setup()
  -- Enable necessary plugins and file type detection}
  vim.cmd([[
    filetype plugin indent on
    set termguicolors
    set encoding=utf-8
  ]])

  -- vim.cmd.colorscheme "catppuccin"
  -- Highlight comments in green
  vim.api.nvim_set_hl(0, "Comment", { ctermfg = "green" })

  -- General editor settings
  vim.o.expandtab = true          -- Convert tabs to spaces
  vim.o.hlsearch = true           -- Highlight all search results
  vim.o.number = true             -- Show line numbers
  vim.o.ruler = true              -- Always show the cursor position
  vim.o.shiftwidth = 2            -- Number of spaces to use for each step of (auto)indent
  vim.o.tabstop = 2               -- Number of spaces that a <Tab> in the file counts for
  --vim.o.novisualbell = true       -- Disable visual bell
  --vim.o.noerrorbells = true       -- Disable error bells
  vim.o.lazyredraw = true         -- Redraw only when necessary
  vim.o.smartcase = true          -- Smart case sensitivity
  vim.o.clipboard = "unnamedplus" -- Use system clipboard
  vim.wo.colorcolumn = "80"       -- Set color column at 80th column
  vim.o.conceallevel = 1          -- Show concealable characters

  -- vim.o.background = "dark"       -- Set background to dark

  -- Auto indent settings
  vim.o.autoindent = true


  -- keymaps
  -- Enable 24-bit RGB colors
  vim.o.termguicolors = true

  -- Persistent undo setup
  if vim.fn.has('persistent_undo') == 1 then
    -- Create the undo directory if it does not exist
    local undodir = vim.fn.expand('$HOME/.vimhis')
    if not vim.fn.isdirectory(undodir) then
      vim.fn.mkdir(undodir, 'p')
    end

    -- Set the undodir and undo-related settings
    vim.o.undodir = undodir
    vim.o.undolevels = 5000
    vim.o.undofile = true
  end
end

return M
