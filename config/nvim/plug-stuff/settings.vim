let g:NERDCreateDefaultMappings = 1
let g:NERDTreeStatusline = '%#NonText#'
let g:vim_markdown_folding_disabled = 1


set termguicolors 
let ayucolor="mirage"
let g:vscode_style = "dark"
let g:vscode_disable_nvimtree_bg = v:true
colorscheme vscode
let g:gruvbox_contrast_dark = ''
"if exists('+termguicolors')
"    let &t_8f = '\<Esc>[38;2;%lu;%lu;%lum'
"    let &t_8b = '\<Esc>[48;2;%lu;%lu;%lum'
"endif
"highlight ColorColumn ctermbg=0 guibg=grey6
"highlight Normal guibg=transparent

lua require'colorizer'.setup()


set conceallevel=0

