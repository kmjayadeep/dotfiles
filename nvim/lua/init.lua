require("plugins")
require("opts")

vim.cmd('colo one')

require("setup")
require("binds")
require("lsp")

-- Plugins

require("plugins.compe")
require("plugins.treesitter")
require("plugins.lspsaga")

-- LSP
require("lsp.servers")

require('hardline').setup {}
