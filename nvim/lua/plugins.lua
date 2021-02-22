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

    -- Git integration
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    -- File manager
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- JS
    use 'prettier/vim-prettier'

    use {'wbthomason/packer.nvim', opt = true}
    use 'junegunn/fzf.vim'
    use 'preservim/nerdcommenter'
    use 'jiangmiao/auto-pairs'
    use 'Yggdroot/indentLine'
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use 'tpope/vim-surround'
  end
)
