--
-- Lazy post-startup options
--

vim.cmd.colorscheme("catppuccin")

-- dart requires manual enabling as it is not managed by Mason
vim.lsp.enable({ 'dart' })
