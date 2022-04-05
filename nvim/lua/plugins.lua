-- Install Packer package manager
-- git clone https://github.com/wbthomason/packer.nvim\
-- ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
-- https://github.com/wbthomason/packer.nvim
--

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(
  function()
    use {'wbthomason/packer.nvim'}

    -- Themes
    use 'rakr/vim-one'
    use 'morhetz/gruvbox'

    -- Git integration
    -- use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- File manager
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
    }

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
    use 'junegunn/fzf.vim'
    use 'preservim/nerdcommenter'
    use 'jiangmiao/auto-pairs'
    use 'Yggdroot/indentLine'
    -- use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
    -- use { 'neoclide/coc.nvim', branch = 'release' }
    use 'tpope/vim-surround'

    if packer_bootstrap then
      require('packer').sync()
    end
  end
)
