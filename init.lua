local g = vim.g
local o = vim.o -- global
local opt = vim.opt -- local and global

o.cmdheight = 1 -- default
o.showtabline = 2 -- default
o.laststatus = 3 -- always amd only last window

-- UI
opt.guicursor = ''
opt.termguicolors = true
opt.isfname:append('@-@')

-- line numbers
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.number = true

-- search
opt.hlsearch = false -- disable search highlighting
opt.incsearch = true -- only match exact search

-- enable mouse
o.mouse = 'a' -- dont judge me
o.mousescroll = 'ver:8,hor:6'
o.mousemoveevent = true

-- tabs
o.tabstop = 4
o.vartabstop = '4'
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.autoindent = true
o.colorcolumn = '80'

-- case insensitive search
o.ignorecase = true
o.smartcase = true

-- line breaks
o.linebreak = false
o.breakindent = false
o.wrap = false

-- we dont want no swap file 
o.swapfile = false
o.backup = false
o.undofile = true
o.undodir = os.getenv('HOME') .. '/.vim/undodir'

-- misc
o.scrolloff = 8

-- popups
o.updatetime = 50
o.pumblend = 20 -- menu transparency

g.mapleader = ' ' -- append leader key before requiring Lazy init.lua

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')

-- require('plugins.remap') -- pulls all files from plugins (init.lua, remap.lua, set.lua)
-- require('plugins.set')
