call plug#begin('~/.vim/plugged')

Plug 'projekt0n/github-nvim-theme'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'adrian5/oceanic-next-vim'
Plug 'Mofiqul/vscode.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'wojciechkepka/vim-github-dark'


Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'yuttie/comfortable-motion.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'

"Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'lervag/vimtex'


Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'rust-lang/rust.vim'
Plug 'digitaltoad/vim-pug'
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
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

call plug#end()
