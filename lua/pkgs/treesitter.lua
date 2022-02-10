require('nvim-treesitter.configs').setup({
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
})
