return {
  cmd = { "/usr/bin/dart", "language-server", "--protocol=lsp" }, -- Ou caminho completo: vim.fn.stdpath("data") .. "/mason/bin/lua-language-server"
  filetypes = { "dart" },
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
}
