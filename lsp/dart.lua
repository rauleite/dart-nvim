return {

  -- Configuração do lua_ls
  -- vim.lsp.config.lua_ls = {
  -- cmd = { "lua-language-server" }, -- Ou caminho completo: vim.fn.stdpath("data") .. "/mason/bin/lua-language-server"
  -- name = "dart_ls",

  cmd = { "/usr/bin/dart", "language-server", "--protocol=lsp" }, -- Ou caminho completo: vim.fn.stdpath("data") .. "/mason/bin/lua-language-server"
  filetypes = { "dart" },
  -- capabilities = require('cmp_nvim_lsp').default_capabilities(),  -- Adiciona suporte ao nvim-cmp
  -- root_markers = { "pubspec.yaml", "pubspec.lock" },
  -- Insira aqui a configuração para formatação e mapeamentos ao salvar
  -- on_attach = function(client, bufnr)
  --   -- Verifica se o servidor suporta formatação do documento
  --   if client.server_capabilities.documentFormattingProvider then
  --     -- Cria um grupo de autocmd para limpar possíveis regras duplicadas
  --     vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = "LspFormatOnSave",
  --       buffer = bufnr,
  --       callback = function()
  --         vim.lsp.buf.format({ bufnr = bufnr })
  --       end,
  --     })
  --   end
  --
  --   -- Mapeia uma tecla para formatação manual se preferir
  --   vim.keymap.set("n", "<leader>xf", vim.lsp.buf.format, {
  --     buffer = bufnr,
  --     desc = "Formatar arquivo via LSP",
  --   })
  -- end,
  init_options = {
    onlyAnalyzeProjectsWithOpenFiles = true,
    suggestFromUnimportedLibraries = true,
    -- closingLabels = true,
    -- outline = true,
    -- flutterOutline = true,
  },

  settings = {
    dart = {
      -- analysisExcludedFolders = {},
      lineLength = 70,
      completeFunctionCalls = true,
      -- showTodos = false,
      -- renameFilesWithClasses = "prompt",
      enableSnippets = true,
      updateImportsOnRename = true,
      includeDependenciesInWorkspaceSymbol = false,
    },
  },
  --   settings = {
  --     dart = {
  --     completeFunctionCalls = true,
  -- enableSnippets = true,
  -- documentation = true,
  --
  --   },
  -- },
  -- root_markers = { "pubspec.yaml" },
}
