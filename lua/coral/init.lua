local M = {}

function M.setup()
  local colors = require("coral.palette")

  vim.opt.background = "light"

  local highlights = {
    -- basic & ui
    Normal = { bg = colors.bg, fg = colors.fg },
    Comment = { fg = colors.comment, italic = true },
    CursorLine = { bg = colors.cursor },
    LineNr = { fg = colors.line_nr },

    -- syntax & highlighting
    Keyword = { fg = colors.keyword, bold = true },
    String = { fg = colors.string },
    Function = { fg = colors.func },
    Variable = { fg = colors.variable },
    Constant = { fg = colors.constant },
    Type = { fg = colors.type },
    Operator = { fg = colors.operator },
    Special = { fg = colors.special },

    -- diagnostics & git
    Error = { fg = colors.error },
    Warning = { fg = colors.warning },
    Info = { fg = colors.info },
    Hint = { fg = colors.hint },
    Git_Add = { fg = colors.git_add },
    Git_Change = { fg = colors.git_change },
    Git_Delete = { fg = colors.git_delete },
  }

  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
