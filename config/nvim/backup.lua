-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            -- Additional lua configuration, makes nvim stuff amazing
            'folke/neodev.nvim',
        },
    }

    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp','hrsh7th/cmp-buffer','L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets' },
    }

    use { 'mhartington/formatter.nvim' }
    use { -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    }

    use { -- Additional text objects via treesitter
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
    }

    use 'dhruvasagar/vim-table-mode'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'

    --use 'preservim/nerdcommenter'

    use 'numToStr/Comment.nvim'

    use 'kyazdani42/nvim-tree.lua'
    use 'norcalli/nvim-colorizer.lua'

    -- Git related plugins
    --use 'tpope/vim-fugitive'
    --use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'


    -- themes
    use 'morhetz/gruvbox'
    --use 'projekt0n/github-nvim-theme'
    use 'joshdick/onedark.vim'
    use 'ayu-theme/ayu-vim'
    use 'folke/tokyonight.nvim'
    use { "ntk148v/habamax.nvim", requires={ "rktjmp/lush.nvim" } }
    use 'sonph/onehalf'
    --use 'huyvohcmc/atlas.vim'
    --use 'adrian5/oceanic-next-vim'
    --use 'Mofiqul/vscode.nvim'
    --use 'ryanoasis/vim-devicons' use 'wojciechkepka/vim-github-dark'
    --use 'nyoom-engineering/oxocarbon.nvim'
    --use 'rockerBOO/boo-colorscheme-nvim'
    --use 'navarasu/onedark.nvim' -- Theme inspired by Atom
    --use 'shaunsingh/solarized.nvim'
    --use 'Yazeed1s/oh-lucy.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }


    use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use 'mbbill/undotree'

use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
--use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

use 'Pocco81/auto-save.nvim'

-- Fuzzy Finder (files, lsp, etc)
use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }


-- Add custom plugins to packer from ~/.config/nvim/lua/custom/plugins.lua
local has_plugins, plugins = pcall(require, 'custom.plugins')
if has_plugins then
    plugins(use)
end

if is_bootstrap then
    require('packer').sync()
end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
print '=================================='
print '    Plugins are being installed'
print '    Wait until Packer completes,'
print '       then restart nvim'
print '=================================='
return
end

vim.o.hlsearch = true
vim.wo.number = true
vim.o.mouse = nil
vim.o.breakindent = true
vim.o.undofile = true
vim.o.errorbells = false
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.shadafile = "NONE"
vim.o.incsearch = true
vim.o.splitbelow = true
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
--vim.o.relativenumber = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.smartcase = true
vim.o.scrolloff = 8
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'
vim.o.signcolumn = 'yes'
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.cmd [[set scl=yes ]]
--vim.cmd [[highlight LineNr guifg=#a95e01]]
vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
vim.o.completeopt = 'menuone,noselect'
vim.cmd [[colorscheme tokyonight-night ]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

function map(mode, shortcut, command)
vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

map('n', '<leader>ft', ":NvimTreeToggle<CR>")
map('n', '<leader>h', ":wincmd h<CR>")
map('n', '<leader>j', ":wincmd j<CR>")
map('n', '<leader>k', ":wincmd k<CR>")
map('n', '<leader>l', ":wincmd l<CR>")
map('v', '<', "<gv")
map('v', '>', ">gv")
map('i', 'jk', "<Esc>")
map('n', '<leader>q', ":q<CR>")
map('n', '<leader>fs', ":w<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--map('n', '<leader>p', ":Files<CR>")
map('n', '<leader>gf', ":GFiles<CR>")
map('n', '<leader>sv', ":vsplit<CR>")
map('n', '<leader>sh', ":split<CR>")

local tree_attach = function(bufnr)
    local api = require "nvim-tree.api"
    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.keymap.set('n', 's', api.node.open.vertical, opts('Help'))
end

-- OR setup with some options
require("nvim-tree").setup({
    on_attach = tree_attach,
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
                modified = false,
                diagnostics = false,
                bookmarks = false,
            },
        },
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false
            }
        }
    }
})

require('gitsigns').setup()

require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
    },
}

require('nvim-treesitter.configs').setup {
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = { 'c', 'markdown', 'javascript', 'java', 'typescript', 'cpp', 'go', 'lua', 'python', 'rust', 'vim', 'svelte' },

    highlight = { enable = true },
    indent = { enable = true, disable = { 'python' } },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<c-backspace>',
        },
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['aa'] = '@parameter.outer',
                ['ia'] = '@parameter.inner',
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                [']m'] = '@function.outer',
                [']]'] = '@class.outer',
            },
            goto_next_end = {
                [']M'] = '@function.outer',
                [']['] = '@class.outer',
            },
            goto_previous_start = {
                ['[m'] = '@function.outer',
                ['[['] = '@class.outer',
            },
            goto_previous_end = {
                ['[M'] = '@function.outer',
                ['[]'] = '@class.outer',
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ['<leader>a'] = '@parameter.inner',
            },
            swap_previous = {
                ['<leader>A'] = '@parameter.inner',
            },
        },
    },
}

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)


-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
    -- NOTE: Remember that lua is a real programming language, and as such it is possible
    -- to define small helper and utility functions so you don't have to repeat yourself
    -- many times.
    --
    -- In this case, we create a function that lets us more easily define mappings specific
    -- for LSP related items. It sets the mode, buffer and description for us each time.
    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end

        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
    nmap('<leader>fr', vim.lsp.buf.format, 'FR')


    -- See `:help K` for why this keymap
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

    -- Lesser used LSP functionality
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    nmap('<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist Folders')

    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
end

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
    -- clangd = {},
    --gopls = {},
    -- pyright = {},
    -- rust_analyzer = {},
    --tsserver = {},

    --sumneko_lua = {
    --Lua = {
    --workspace = { checkThirdParty = false },
    --telemetry = { enable = false },
    --},
    --},
}

--require'colorizer'.setup()

-- Setup neovim lua configuration
--require('neodev').setup()
--
-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
    ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
        }
    end,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
        { update_in_insert = true })


-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    },
    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'buffer',  options = { keyword_length = 1 } },
    },
}

require('Comment').setup({
    padding = true,
    sticky = false,
    ignore = nil,
    toggler = {
        ---Line-comment toggle keymap
        line = 'cc',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO',
        ---Add comment on the line below
        below = 'gco',
        ---Add comment at the end of line
        eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})
