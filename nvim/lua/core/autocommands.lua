vim.cmd([[
  augroup _lsp
    autocmd!
    autocmd BufWritePre *.ex lua vim.lsp.buf.format(nil, 5000)
    autocmd BufWritePre *.exs lua vim.lsp.buf.format(nil, 5000)
    autocmd BufWritePre *.lua lua vim.lsp.buf.format()
    autocmd BufWritePre *.go lua vim.lsp.buf.format()
    autocmd BufWritePre *.tf lua vim.lsp.buf.format()
    autocmd BufWritePre *.py lua vim.lsp.buf.format()
    autocmd BufWritePre *.erl lua vim.lsp.buf.format(nil, 5000)
    autocmd BufWritePre *.jsx lua vim.lsp.buf.format()
    autocmd BufWritePre *.css lua vim.lsp.buf.format()
    autocmd BufWritePre *.html lua vim.lsp.buf.format()
  augroup end
]])
