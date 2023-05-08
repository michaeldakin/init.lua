local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

lsp.ensure_installed({
    'rust_analyzer',
    'gopls',
    'tsserver',
})

lsp.set_sign_icons({
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
