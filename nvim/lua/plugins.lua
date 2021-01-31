-- Install Packer package manager
-- git clone https://github.com/wbthomason/packer.nvim\
-- ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
-- https://github.com/wbthomason/packer.nvim
--

vim.cmd('packadd packer.nvim')

require('packer').startup(
  function()
    use {'wbthomason/packer.nvim', opt = true}
    use 'preservim/nerdtree'
    use 'rakr/vim-one'
    use 'junegunn/fzf.vim'
    use 'airblade/vim-gitgutter'
    use 'preservim/nerdcommenter'
    use 'jiangmiao/auto-pairs'
    use 'Yggdroot/indentLine'
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use 'tpope/vim-surround'
    use 'ryanoasis/vim-devicons'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
  end
)
