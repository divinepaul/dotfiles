call plug#begin('~/.vim/plugged')

Plug 'projekt0n/github-nvim-theme'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'adrian5/oceanic-next-vim'
Plug 'Mofiqul/vscode.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'wojciechkepka/vim-github-dark'


Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'rust-lang/rust.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'donRaphaco/neotex', { 'for': 'tex' }

Plug 'mattn/emmet-vim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
Plug 'Pocco81/AutoSave.nvim'

Plug 'airblade/vim-rooter'

Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

call plug#end()
