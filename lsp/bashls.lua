-- Exige que o shellcheck esteja instalado no computador:
-- https://github.com/bash-lsp/bash-language-server?tab=readme-ov-file#dependencies
return {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'bash', 'sh' },
  -- root_dir = '/home/raul/dev/dart/cli/',
  settings = {
    bash = {
      -- enableSourceErrorDiagnostics = true,
    },
  },
}
-- Uma função para definir o diretório raiz; ajuste conforme sua lógica
-- root_dir = function()
--   return vim.loop.cwd()
-- end,
-- config = {
--   enableSourceErrorDiagnostics = true
-- }
