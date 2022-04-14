let mapleader = " "
nnoremap <C-n> :NERDTree<CR>
noremap <leader>ft :NERDTreeToggle<CR>
noremap <leader>ff :NERDTreeFind<CR>

noremap <leader>p :GFiles<CR>
noremap <leader>nf :Files<CR>
noremap <leader>to :term<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>sq :wq<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <C-j>    :resize -2<CR>
nnoremap <C-k>    :resize +2<CR>
nnoremap <C-h>    :vertical resize -2<CR>
nnoremap <C-l>    :vertical resize +2<CR>

nnoremap <leader>u :UndotreeShow<CR>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap jk <Esc>

vnoremap < <gv
vnoremap > >gv

nnoremap gd :lua vim.lsp.buf.definition()<CR>
noremap  gD :lua vim.lsp.buf.declaration()<CR>
noremap  gH :lua vim.lsp.buf.hover()<CR>
noremap  gi :lua vim.lsp.buf.implementation()<CR>
