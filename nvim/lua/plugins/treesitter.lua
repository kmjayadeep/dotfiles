require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "cmake",
    "comment",
    "css",
    "dockerfile",
    "elixir",
    "go",
    "gomod",
    "hcl",
    "http",
    "javascript",
    "java",
    "json",
    "latex",
    "make",
    "markdown",
    "python",
    "regex",
    "typescript",
    "vim",
    "yaml"
  }
  highlight = {
    enable = true -- false will disable the whole extension
  }
}

