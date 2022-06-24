let mapleader = " "
noremap <leader>ft :NERDTreeToggle<CR>
nnoremap <C-n> :NvimTreeToggle<CR>

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

nnoremap <silent> D :call comfortable_motion#flick(100)<CR>
nnoremap <silent> U :call comfortable_motion#flick(-100)<CR>

vnoremap < <gv
vnoremap > >gv

nnoremap gd :lua vim.lsp.buf.definition()<CR>
noremap  gD :lua vim.lsp.buf.declaration()<CR>
noremap  gH :lua vim.lsp.buf.hover()<CR>
noremap  gi :lua vim.lsp.buf.implementation()<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>p <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
