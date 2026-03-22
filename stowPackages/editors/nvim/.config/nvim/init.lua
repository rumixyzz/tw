vim.opt.nu = true;
vim.opt.rnu = true;
vim.opt.fcs = { eob = " " };
vim.opt.et = true;
vim.opt.sw = 4;
vim.opt.si = true;
vim.opt.ai = true;
vim.opt.hls = false;
vim.opt.cb = "unnamedplus";
vim.cmd.colo("retrobox")


vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/ellisonleao/gruvbox.nvim",
    "https://github.com/nvim-lualine/lualine.nvim"
})
require("nvim-treesitter").setup()
require("nvim-treesitter").install({"python","lua"})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python','lua' },
  callback = function() vim.treesitter.start() end,
})

vim.cmd.colorscheme("gruvbox")
require("lualine").setup()
