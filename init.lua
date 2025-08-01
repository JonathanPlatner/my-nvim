local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
print(lazypath)

require 'config.keymap'
require 'config.events'
require 'config.options'
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
	  require 'plugins.neo-tree',
	  require 'plugins.theme',
	  require 'plugins.telescope',
	  require 'plugins.mini',
	  require 'plugins.gitsigns',
	  require 'plugins.which-key',
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- automatically check for plugin updates
  checker = { enabled = true },
})
