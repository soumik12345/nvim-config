return { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.config', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
        ensure_installed = {
            'lua',
            'python',
            'javascript',
            'typescript',
            'vimdoc',
            'vim',
            'regex',
            'terraform',
            'sql',
            'dockerfile',
            'toml',
            'json',
            'go',
            'gitignore',
            'graphql',
            'yaml',
            'make',
            'cmake',
            'markdown',
            'markdown_inline',
            'bash',
            'css',
            'html',
            'rust',
            'c',
            'cpp',
            'latex',
        },
        auto_install = true, -- Autoinstall languages that are not installed
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = { 'ruby' },
        },
        indent = { enable = true, disable = { 'ruby' } },
    },
}