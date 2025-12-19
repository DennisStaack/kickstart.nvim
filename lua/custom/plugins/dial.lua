return {
  'monaqa/dial.nvim',
  keys = {
    {
      '<C-a>',
      function()
        require('dial.map').manipulate('increment', 'normal')
      end,
      mode = 'n',
      desc = 'Dial Increment',
    },
    {
      '<C-x>',
      function()
        require('dial.map').manipulate('decrement', 'normal')
      end,
      mode = 'n',
      desc = 'Dial Decrement',
    },

    {
      'g<C-a>',
      function()
        require('dial.map').manipulate('increment', 'gnormal')
      end,
      mode = 'n',
      desc = 'Dial G Increment',
    },
    {
      'g<C-x>',
      function()
        require('dial.map').manipulate('decrement', 'gnormal')
      end,
      mode = 'n',
      desc = 'Dial G Decrement',
    },

    {
      '<C-a>',
      function()
        require('dial.map').manipulate('increment', 'visual')
      end,
      mode = 'v',
      desc = 'Dial Increment',
    },
    {
      '<C-x>',
      function()
        require('dial.map').manipulate('decrement', 'visual')
      end,
      mode = 'v',
      desc = 'Dial Decrement',
    },
    {
      'g<C-a>',
      function()
        require('dial.map').manipulate('increment', 'gvisual')
      end,
      mode = 'v',
      desc = 'Dial G Increment',
    },
    {
      'g<C-x>',
      function()
        require('dial.map').manipulate('decrement', 'gvisual')
      end,
      mode = 'v',
      desc = 'Dial G Decrement',
    },
  },

  config = function()
    local augend = require 'dial.augend'
    require('dial.config').augends:register_group {
      default = {
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.date.alias['%Y/%m/%d'],
        augend.constant.alias.bool,
        augend.constant.new {
          elements = { 'and', 'or' },
          word = true,
          cyclic = true,
        },
      },
    }
  end,
}
