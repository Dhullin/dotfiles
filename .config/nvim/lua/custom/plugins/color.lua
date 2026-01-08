return {
  'uga-rosa/ccc.nvim',
  -- Load on these events for universal highlighting
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local ccc = require 'ccc'
    ccc.setup {
      highlighter = {
        auto_enable = true, -- This ensures it starts with the file
        lsp = true,
      },
    }
  end,
  keys = {
    { '<leader>cp', '<cmd>CccPick<cr>', desc = 'Color Picker' },
    { '<leader>cv', '<cmd>CccConvert<cr>', desc = 'Color Convert' },
    { '<leader>ct', '<cmd>CccHighlighterToggle<cr>', desc = 'Toggle Color Highlighter' },
  },
}
