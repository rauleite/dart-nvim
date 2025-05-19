-- Função para determinar o diretório raiz
local function get_root_dir()
  -- Usa o diretório de trabalho atual
  local cwd = vim.loop.cwd()
  -- Procura recursivamente por um diretório .git a partir do cwd usando a API vim.fs (disponível no Neovim 0.11)
  local git_dir = vim.fs.find(".git", { path = cwd, upward = true })[1]
  return git_dir and vim.fs.dirname(git_dir) or cwd
end

return {
  -- name = "yamlls",
  -- capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Adiciona suporte ao nvim-cmp
  cmd = { "/home/raul/.local/share/nvim/mason/bin/yaml-language-server", "--stdio" },
  filetypes = { "yaml", "yml" },
  -- root_dir = get_root_dir(), -- Define a raiz do projeto
  settings = {
    yaml = {
      validate = true,
      hover = true,
      completion = true,
      format = { enable = true },
      -- customTags = { "!fn", "!Ref", "!Sub" },
      -- Caso queira associar schemas a certos arquivos:
      -- schemas = {
      --   ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      -- },
    },
  },
}
-- Inicia o LSP com a configuração definida
-- vim.lsp.start(config)
