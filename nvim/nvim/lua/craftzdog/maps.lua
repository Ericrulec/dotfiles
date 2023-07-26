local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

keymap.set('n', 'te', ':tabedit')
keymap.set("n", "<C-I>", "<C-I>", { noremap = true })
keymap.set("n", "<C-P>", "<C-I>")

-- New tab

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Rebind some Altgr keys
keymap.set('i', "å", "[")
keymap.set('i', "¨", "]")
keymap.set('i', "Å", "{")
keymap.set('i', "^", "}")
keymap.set('c', "å", "[")
keymap.set('c', "¨", "]")
keymap.set('c', "Å", "{")
keymap.set('c', "^", "}")
keymap.set('n', "å", "[")
keymap.set('n', "¨", "]")
keymap.set('n', "Å", "{")
keymap.set('n', "^", "}")

-- Make Ctrl-c behave like ESC
keymap.set("i", "<C-c>", "<Esc>")
keymap.set("c", "<C-c>", "<Esc>")
keymap.set("n", "<C-c>", "<Esc>")
keymap.set("", "<C-c>", "<Esc>")

-- Vertical movement
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
