require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'angularls',
    'quick_lint_js',
    'tsserver',
    'vtsls',
    'tailwindcss'
  }
})

-- require("mason-null-ls").setup({
--     ensure_installed = {
--       'prettier',
--       'eslint_d',
--       'stylua',
--     },
-- })
--
-- require 'mason-null-ls'.setup_handlers() -- If `automatic_setup` is true.

local on_attach = function(_,_)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
