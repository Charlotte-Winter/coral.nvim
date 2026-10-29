local M = {}

function M.setup()
  local colors = require("coral.palette")

  vim.opt.background = "light"

  local highlights = {
    Normal = { bg = colors.bg, fg = colors.fg },
    Comment = { fg = colors.comment, italic = true },
    Keyword = { fg = colors.keyword, bold = true },
    String = { fg = colors.string },
    LineNr = { fg = colors.line_nr },
    CursorLine = { bg = colors.cursor },
  }

  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
