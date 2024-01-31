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

require("lazy").setup({
    spec = {
        { import = "plugins" },
        { import = "themes" },
    },
    defaults = {
        lazy = true,
        version = false,
    },
    install = { colorscheme = { "catppuccin", "habamax" } },
    checker = {
        enabled = true,
        notify = true,
        frequency = 604800, -- Check for updates every week
    },
    performance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true, -- reset the package path to improve startup time
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
    ui = {
        size = { width = 0.9, height = 0.9 },
        border = "rounded",
    },
})

require("config.options")
require("config.whichkey")
require("config.autocmd")

require("config.intro")

vim.cmd.colorscheme("catppuccin")
