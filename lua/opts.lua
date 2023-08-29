local keyset = vim.keymap.set

vim.opt.updatetime = 250 
vim.wo.number = true

vim.g.mapleader = ','

-- vim-gitgutter
vim.g.gitgutter_sign_added = '+'
vim.g.gitgutter_sign_modified = '~'
vim.g.gitgutter_sign_removed = '-'
vim.g.gitgutter_sign_removed_first_line = '^'
vim.g.gitgutter_sign_modified_removed = '~+'

local function close_current_buffer()
	current_buffer = vim.fn.bufnr("%")
	vim.cmd("bn")
	vim.cmd("bd " .. current_buffer)
end



-- keyset("mode", "keys", "function-called")
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
-- go to definition
keyset("n", "<leader>gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "<leader>gr", "<Plug>(coc-references)", {silent = true})
keyset("n", "<leader>nh", "<Plug>(GitGutterNextHunk)")
keyset("n", "<leader>ph", "<Plug>(GitGutterPrevHunk)")
keyset("n", "<leader>ccb", close_current_buffer)

