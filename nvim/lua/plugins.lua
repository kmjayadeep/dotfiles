-- Install Packer package manager
-- git clone https://github.com/wbthomason/packer.nvim\
-- ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
-- https://github.com/wbthomason/packer.nvim
--

vim.cmd('packadd packer.nvim')

require('packer').startup(
  function()

    -- Themes
    use 'rakr/vim-one'
    use 'morhetz/gruvbox'

    -- Git integration
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- File manager
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'glepnir/lspsaga.nvim'

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Snippets
    -- use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets'

    -- Status line
    use {'ojroques/nvim-hardline'}


    -- JS
    use { 'prettier/vim-prettier', run = 'yarn install' }

    -- Common
    use {'wbthomason/packer.nvim', opt = true}
    use 'junegunn/fzf.vim'
    use 'preservim/nerdcommenter'
    use 'jiangmiao/auto-pairs'
    use 'Yggdroot/indentLine'
    -- use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
    -- use { 'neoclide/coc.nvim', branch = 'release' }
    use 'tpope/vim-surround'
  end
)
