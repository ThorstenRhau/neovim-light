-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- Launch Telescope main window
vim.keymap.set("n", "<c-t>", ":Telescope<CR>")

-- Setting up register for 'which key' with keymappings
local wk = require("which-key")
wk.add({
    { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy" },
    { "<leader>o", "<cmd>Oil --float<cr>", desc = "Oil file manager" },
    { "<leader>p", "<cmd>Pounce<cr>", desc = "Pounce" },
    { "<leader>s", '<cmd> lua require("persistence").load() <cr>', desc = "Restore last session" },
    { "<leader>t", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal toggle" },
    { "<leader>U", "<cmd>Telescope undo<cr>", desc = "Undo" },
    --                                  ╭────────╮
    --                                  │ Buffer │
    --                                  ╰────────╯
    { "<leader>b", group = "Buffer" },
    { "<leader>bb", "<cmd>bprev<CR>", desc = "Previous" },
    { "<leader>be", "<cmd>Neotree buffers<CR>", desc = "Neotree buffers" },
    { "<leader>bl", "<cmd>ls<CR>", desc = "List" },
    --                                   ╭──────╮
    --                                   │ Find │
    --                                   ╰──────╯
    { "<leader>f", group = "Find" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
    { "<leader>fm", "<cmd>Telescope man_pages<cr>", desc = "man pages" },
    { "<leader>fn", "<cmd>Telescope notify<cr>", desc = "Notify messages" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
    { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Fuzzy find in buffer" },
    { "<leader>fy", "<cmd>Telescope neoclip<cr>", desc = "Old Yanks" },
    { "<leader>fz", "<cmd>Telescope spell_suggest<cr>", desc = "Spelling suggestions" },
    --                                    ╭─────╮
    --                                    │ Git │
    --                                    ╰─────╯
    { "<leader>g", group = "Git" },
    { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Blame toggle" },
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Shows previous commits" },
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Interactive Git" },
    { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Status" },
    --                                 ╭───────────╮
    --                                 │ Interface │
    --                                 ╰───────────╯
    { "<leader>u", group = "Interface" },
    { "<leader>uC", "<cmd>set colorcolumn=80<CR>", desc = "Colorcolumn at 80" },
    { "<leader>uh", "<cmd>set list!<CR>", desc = "Hidden Characters Toggle" },
    { "<leader>ul", "<cmd>set number!<cr>", desc = "Line number toggle" },
    { "<leader>ur", "<cmd>set relativenumber!<cr>", desc = "Relative line number toggle" },
    { "<leader>uw", "<cmd>set wrap!<cr>", desc = "Wrap line toggle" },
})
