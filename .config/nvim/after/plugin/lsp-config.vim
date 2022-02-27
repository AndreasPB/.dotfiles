" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.diagnostic.goto_prev()<CR>

" auto-format
" autocmd BufWritePre *.js lua vim.buf.formatting_sync(nil, 88)
" autocmd BufWritePre *.py lua vim.buf.formatting_sync(nil, 88)
