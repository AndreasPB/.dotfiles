if !exists('g:loaded_telescope') | finish | endif

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<cr>

lua << EOF
local actions = require('telescope.actions')

require('telescope').setup{
defaults = {
    mappings = {
        n = {
            ["q"] = actions.close
            },
        },
    }
}
EOF
