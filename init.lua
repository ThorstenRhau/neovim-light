local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.termguicolors = true
-- Disabling netrw so that 'oil' can take it's place
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("lazy").setup({
    spec = {
        { import = "plugins" },
        { import = "themes" },
    },
    defaults = {
        lazy = true,
    },
    install = { colorscheme = { "catppuccin", "default" } },
    checker = {
        enabled = true,
        notify = true,
        frequency = 604800, -- Check for updates every week
    },
    ui = {
        size = { width = 0.9, height = 0.9 },
        border = "rounded",
    },
    rtp = {
        reset = true,
        ---@type string[]
        paths = {},
        ---@type string[]
        disabled_plugins = {
            "netrwPlugin",
            "tohtml",
            "tutor",
            "gzip",
            "rplugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        },
    },
    rocks = {
        hererocks = false,
        enabled = false,
    },
})

require("config.options")
require("config.whichkey")
require("config.autocmd")

require("config.intro")

vim.cmd.colorscheme("catppuccin")
vim.o.background = "light"
