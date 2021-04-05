-- COC Language support
vim.g.coc_global_extensions = { 'coc-tsserver', 'coc-html', 'coc-css' }

-- Disable conceal cursor when using indentline
vim.g.indentLine_concealcursor=""
vim.g.vim_json_syntax_conceal = 0
vim.g.vim_markdown_conceal = 0
vim.g.vim_markdown_conceal_code_blocks = 0

-- NERDTree
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeIgnore = { '.pyc$', '__pycache__', '.git$' }
vim.g.NERDTreeShowHidden=1
vim.g.NERDTreeDirArrowExpandable = ' '
vim.g.NERDTreeDirArrowCollapsible = ' '

-- NerdCommenter
vim.g.NERDSpaceDelims = 1

-- GitGutter
vim.g.gitgutter_override_sign_column_highlight = 0
vim.g.gitgutter_sign_added                     = '+'
vim.g.gitgutter_sign_modified                  = '±'
vim.g.gitgutter_sign_removed                   = '-'
vim.g.gitgutter_sign_removed_first_line        = '×'
vim.g.gitgutter_sign_modified_removed          = '×'


-- FZF
vim.g.fzf_buffers_jump = 1


-- NERDTree Icons
vim.g.DevIconsEnableFoldersOpenClose = 1

vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = vim.empty_dict()
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jsx'] = 'ﰆ'
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yaml'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['yml'] = ''

vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols = vim.empty_dict()
vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*vimrc.*'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.gitignore'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.json'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['package.lock.json'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['node_modules'] = ''
vim.g.WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack.'] = 'ﰩ'

vim.g.NERDTreeHighlightFolders = 1
vim.g.NERDTreeHighlightFoldersFullName = 1
