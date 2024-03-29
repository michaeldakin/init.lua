local builtin = require('telescope.builtin').setup {
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
require('telescope').load_extension('fzf')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '(TS) Find files [<leader>pf]' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = '(TS) Git files [C-p]' })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = '(TS) View Help tags [<leader>vh]' })
