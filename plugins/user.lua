return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "davidgranstrom/scnvim",
    as = "scnvim",
    config = function()
      require('scnvim')
    end,
    lazy = false,
  },
  {
    'hkupty/iron.nvim',
    as = "iron",
    config = function()
      require('iron')
    end,
    lazy = false,
  },
  {
    "jceb/vim-orgmode",
  },
  {
    "rktjmp/lush.nvim"
  },
  {
    'kartikp10/noctis.nvim',
  },
}
