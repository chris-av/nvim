local cmp = require'cmp'
require'nvim-autopairs'.setup({
  enable_check_bracket_line = false
})

cmp.setup({

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },

  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.replace
    }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'nvim_lua' },
    { name = 'path' },
    { name = 'buffer', keyword_length = 8 },
  },

  formatting = {
        format = function(entry, vim_item)
            vim_item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                vsnip = "[vsnip]",
                nvim_lua = "[Lua]",
                luasnip = "[luasnip]",
                latex_symbols = "[Latex]",
            })[entry.source.name]
            vim_item.kind = ({
                Text          = ' Text',
                Method        = ' Method',
                Function      = ' Function',
                Constructor   = ' Constructor',
                Field         = ' Field',
                Variable      = ' Variable',
                Class         = ' Class',
                Interface     = 'ﰮ Interface',
                Module        = ' Module',
                Property      = ' Property',
                Unit          = ' Unit',
                Value         = ' Value',
                Enum          = ' Enum',
                Keyword       = ' Keyword',
                Snippet       = '﬌ Snippet',
                Color         = ' Color',
                File          = ' File',
                Reference     = ' Reference',
                Folder        = ' Folder',
                EnumMember    = ' EnumMember',
                Constant      = ' Constant',
                Struct        = ' Struct',
                Event         = ' Event',
                Operator      = 'ﬦ Operator',
                TypeParameter = ' TypeParameter',
            })[vim_item.kind]
            return vim_item
        end,
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
    },

})

local cmp_autopairs = require'nvim-autopairs.completion.cmp'
cmp.event:on(
  "confirm_done",
  cmp_autopairs.on_confirm_done()
)

require('Comment').setup()
require('telescope').setup ()

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = false,
  highlight = {
    enable = true,
    disable = "",

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
  autopairs = {
    enable = true
  },
  indent = {
    enable = false,
    disable = { 'yaml', 'python', 'javascript' }
  },
  autotag = {
    enable = true,
    disable = { 'xml' }
  }
}


