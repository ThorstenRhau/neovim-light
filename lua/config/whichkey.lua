-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- Launch Telescope main window
vim.keymap.set("n", "<c-t>", ":Telescope<CR>")

-- Setting up register for 'which key' with keymappings
local wk = require("which-key")
wk.register({
    ["<leader>l"] = { "<cmd>Lazy<cr>", "Lazy" },
    ["<leader>t"] = { "<cmd>Telescope<cr>", "Telescope" },
    ["<leader>p"] = { "<cmd>Pounce<cr>", "Pounce" },
    ["<leader>U"] = { "<cmd>Telescope undo<cr>", "Undo" },
    ["<leader>o"] = { "<cmd>Oil --float<cr>", "Oil file manager" },
    ["<leader>s"] = { [[<cmd> lua require("persistence").load() <cr>]], "Restore last session" },

    ["<leader>"] = {
        b = {
            name = "Buffer",
            b = { "<cmd>bprev<CR>", "Previous" },
            e = { "<cmd>Neotree buffers<CR>", "Neotree buffers" },
            l = { "<cmd>ls<CR>", "List" },
        },
        f = {
            name = "Find",
            b = { "<cmd>Telescope buffers<cr>", "Buffers" },
            f = { "<cmd>Telescope find_files<cr>", "Files" },
            g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
            h = { "<cmd>Telescope help_tags<cr>", "Help tags" },
            m = { "<cmd>Telescope man_pages<cr>", "man pages" },
            n = { "<cmd>Telescope notify<cr>", "Notify messages" },
            o = { "<cmd>Telescope oldfiles<cr>", "Recent files" },
            s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Fuzzy find in buffer" },
            y = { "<cmd>Telescope neoclip<cr>", "Old Yanks" },
            z = { "<cmd>Telescope spell_suggest<cr>", "Spelling suggestions" },
        },
        g = {
            name = "Git",
            b = { "<cmd>GitBlameToggle<cr>", "Blame toggle" },
            c = { "<cmd>Telescope git_commits<cr>", "Shows previous commits" },
            g = { "<cmd>Neogit<cr>", "Interactive Git" },
            s = { "<cmd>Telescope git_status<cr>", "Status" },
        },
        u = {
            name = "User Interface",
            C = { "<cmd>set colorcolumn=80<CR>", "Colorcolumn at 80" },
            h = { "<cmd>set list!<CR>", "Hidden Characters Toggle" },
            l = { "<cmd>set number!<cr>", "Line number toggle" },
            r = { "<cmd>set relativenumber!<cr>", "Relative line number toggle" },
            t = { "<cmd>ToggleTerm direction=float<cr>", "Terminal toggle" },
            w = { "<cmd>set wrap!<cr>", "Wrap line toggle" },
        },
    },
})
