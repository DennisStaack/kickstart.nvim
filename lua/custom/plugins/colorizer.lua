return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup {
      '*',
      css = { rbf_fn = true },
    }
  end,
}
