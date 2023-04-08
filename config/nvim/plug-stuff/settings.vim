let g:NERDCreateDefaultMappings = 1
let g:NERDTreeStatusline = '%#NonText#'
let g:vim_markdown_folding_disabled = 1
let g:mkdp_browser = 'brave'

set termguicolors 
let ayucolor="mirage"
let g:vscode_style = "dark"
"let g:vscode_disable_nvimtree_bg = v:true
let g:tokyonight_style = "night"
"let g:tokyonight_transparent = 0 
colorscheme tokyonight
let g:gruvbox_contrast_dark = 'hard'


"enable transparency on complete.lua

if exists('+termguicolors')
    let &t_8f = '\<Esc>[38;2;%lu;%lu;%lum'
    let &t_8b = '\<Esc>[48;2;%lu;%lu;%lum'
endif

"highlight ColorColumn ctermbg=0 guibg=grey6
"highlight Normal guibg=transparent ctermbg=NONE 

"highlight SignColumn guibg=NONE
"highlight GitSignsAdd guibg=NONE
"highlight GitSignsChange guibg=NONE
"highlight GitSignsDelete guibg=NONE

lua require'colorizer'.setup()


"set conceallevel=0



" nvim tree settings

let g:nvim_tree_git_hl = 1
