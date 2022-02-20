require 'nvim-treesitter.configs'.setup {
-- One of "all", "maintained" (parsers with maintainers), or a list of languages
ensure_installed = {
    'python',
    'lua',
    'javascript',
    'elixir',
},

-- Install languages synchronously (only applied to `ensure_installed`)
sync_install = false,

highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
},
}
