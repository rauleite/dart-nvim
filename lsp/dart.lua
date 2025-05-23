-- Defina sua função on_attach, onde você configura os mapeamentos para os comandos do LSP:
return {
  cmd = { "/usr/bin/dart", "language-server", "--protocol=lsp" }, -- Ou caminho completo: vim.fn.stdpath("data") .. "/mason/bin/lua-language-server"
  filetypes = { "dart" },
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  -- on_attach = on_attach,
  init_options = {
    onlyAnalyzeProjectsWithOpenFiles = false, -- só esse realmente eu não havia testado
    suggestFromUnimportedLibraries = true,
    closingLabels = true,
    completeFunctionCalls = true,
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
}
