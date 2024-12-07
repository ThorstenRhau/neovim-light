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
    --                                 ╭───────────╮
    --                                 │ Root menu │
    --                                 ╰───────────╯
    { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy - plugin manager" },
    { "<leader>o", "<cmd>Oil --float<cr>", desc = "Oil - file manager" },
    { "<leader>p", "<cmd>Pounce<cr>", desc = "Pounce - motion" },
    { "<leader>s", '<cmd>lua require("persistence").load()<cr>', desc = "Restore last session" },
    { "<leader>t", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal" },
    --                                  ╭────────╮
    --                                  │ Buffer │
    --                                  ╰────────╯
    { "<leader>b", group = "Buffer" },
    { "<leader>ba", "<cmd>b#<CR>", desc = "Switch to alternate" },
    { "<leader>be", "<cmd>Neotree buffers<CR>", desc = "Neotree" },
    { "<leader>bf", "<cmd>Telescope buffers<cr>", desc = "Find" },
    { "<leader>bl", "<cmd>ls<CR>", desc = "List" },
    { "<leader>bm", "<cmd>bm<CR>", desc = "Go to next modified" },
    { "<leader>bn", "<cmd>bnext<CR>", desc = "Previous" },
    { "<leader>bp", "<cmd>bprevious<CR>", desc = "Previous" },
    --                                   ╭──────╮
    --                                   │ Find │
    --                                   ╰──────╯
    { "<leader>f", group = "Find" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "File" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
    { "<leader>fm", "<cmd>Telescope man_pages<cr>", desc = "man pages" },
    { "<leader>fn", "<cmd>Telescope notify<cr>", desc = "Notifications" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
    { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "FZF in buffer" },
    { "<leader>fy", "<cmd>Telescope neoclip<cr>", desc = "Yanks" },
    { "<leader>fz", "<cmd>Telescope spell_suggest<cr>", desc = "Spelling suggestions" },
    --                                    ╭─────╮
    --                                    │ Git │
    --                                    ╰─────╯
    { "<leader>g", group = "Git" },
    { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Blame" },
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Commits" },
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Interactive" },
    { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Status" },
    --                                 ╭───────────╮
    --                                 │ Interface │
    --                                 ╰───────────╯
    { "<leader>u", group = "Interface" },
    {
        "<leader>uC",
        function()
            if vim.wo.colorcolumn == "" then
                vim.wo.colorcolumn = "80"
            else
                vim.wo.colorcolumn = ""
            end
        end,
        desc = "Colorcolumn",
    },
    { "<leader>uH", "<cmd>set list!<CR>", desc = "Hidden Characters" },
    --                                  ╭─────────╮
    --                                  │ Window  │
    --                                  ╰─────────╯
    { "<leader>w", group = "Window" },
    { "<leader>wc", "<cmd>close<cr>", desc = "Close" },
    { "<leader>wo", "<cmd>only<cr>", desc = "Close all but not current" },
    { "<leader>ws", "<cmd>split<cr>", desc = "Split horizontal" },
    { "<leader>wv", "<cmd>vsplit<cr>", desc = "Split vertical" },
})
