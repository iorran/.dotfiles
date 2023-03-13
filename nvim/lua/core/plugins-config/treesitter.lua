require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "tsx", "typescript", "lua", "vim", "help", "query" },

    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
    },
    autotag = {
      enable = true,
    }
}
