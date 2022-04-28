vim.cmd([[
  augroup _lsp
    autocmd!
    autocmd BufWritePre *.ex lua vim.lsp.buf.formatting_sync(nil, 5000)
    autocmd BufWritePre *.exs lua vim.lsp.buf.formatting_sync(nil, 5000)
    autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync()
    autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync()
  augroup end
]])
