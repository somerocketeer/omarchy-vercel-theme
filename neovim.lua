-- LazyVim plugin spec: inject Vercel palette into Tokyonight
-- Place this file under LazyVim's plugin specs (Omarchy will copy/link when applying the theme)
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      on_colors = function(c)
        -- Core (Vercel)
        c.bg           = "#111111"
        c.bg_dark      = "#0A0A0A"
        c.bg_highlight = "#1A1A1A"
        c.fg           = "#FFFFFF"
        c.fg_dark      = "#D4D4D8"
        c.comment      = "#A1A1AA"

        -- Accents / semantic (Geist/NextUI)
        c.blue    = "#0072F5"
        c.cyan    = "#06B7DB"
        c.magenta = "#7828C8"
        c.red     = "#F31260"
        c.green   = "#17C964"
        c.yellow  = "#F5A524"

        -- Terminal palette
        c.terminal_black   = "#0A0A0A"
        c.terminal_red     = "#F31260"
        c.terminal_green   = "#17C964"
        c.terminal_yellow  = "#F5A524"
        c.terminal_blue    = "#0072F5"
        c.terminal_magenta = "#7828C8"
        c.terminal_cyan    = "#06B7DB"
        c.terminal_white   = "#FFFFFF"
      end,
      on_highlights = function(hl, c)
        -- Selection and cursor cues
        hl.Visual        = { bg = "#262626" }
        hl.CursorLine    = { bg = c.bg_highlight }
        hl.CursorLineNr  = { fg = c.blue, bold = true }
        hl.LineNr        = { fg = "#A1A1AA" }

        -- Floating windows and borders
        hl.NormalFloat   = { bg = c.bg_highlight, fg = c.fg }
        hl.FloatBorder   = { fg = c.blue, bg = c.bg_highlight }

        -- Popup menu
        hl.Pmenu         = { bg = c.bg_highlight, fg = c.fg }
        hl.PmenuSel      = { bg = "#262626", fg = c.fg, bold = true }

        -- Telescope
        hl.TelescopeBorder = { fg = c.blue, bg = c.bg_highlight }
        hl.TelescopeTitle  = { fg = c.blue, bold = true }

        -- Punctuation (tinted for scanability)
        hl.Delimiter = { fg = "#A1A1AA" }
        hl["@punctuation.delimiter"] = { fg = "#A1A1AA" }
        hl["@punctuation.bracket"]   = { fg = "#A1A1AA" }
        hl["@punctuation.special"]   = { fg = "#A1A1AA" }

        -- Diagnostics
        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn  = { fg = c.yellow }
        hl.DiagnosticInfo  = { fg = c.blue }
        hl.DiagnosticHint  = { fg = c.cyan }
        hl.DiagnosticVirtualTextError = { fg = c.red, bg = "NONE" }
        hl.DiagnosticVirtualTextWarn  = { fg = c.yellow, bg = "NONE" }
        hl.DiagnosticVirtualTextInfo  = { fg = c.blue, bg = "NONE" }
        hl.DiagnosticVirtualTextHint  = { fg = c.cyan, bg = "NONE" }

        -- Git signs (gitsigns.nvim)
        hl.GitSignsAdd    = { fg = c.green }
        hl.GitSignsChange = { fg = c.blue }
        hl.GitSignsDelete = { fg = c.red }

        -- Diffs
        hl.DiffAdd    = { fg = c.green, bg = "NONE" }
        hl.DiffChange = { fg = c.blue,  bg = "NONE" }
        hl.DiffDelete = { fg = c.red,   bg = "NONE" }
        hl.DiffText   = { fg = c.blue,  bg = "NONE" }

        -- Which-Key (LazyVim menu)
        hl.WhichKey         = { fg = c.blue, bold = true }
        hl.WhichKeyGroup    = { fg = c.blue }
        hl.WhichKeySeparator= { fg = "#A1A1AA" }
        hl.WhichKeyDesc     = { fg = c.fg }
        hl.WhichKeyValue    = { fg = c.cyan }

        -- Lazy.nvim UI
        hl.LazyButtonActive = { fg = c.bg, bg = c.blue, bold = true }
        hl.LazyH1           = { fg = c.bg, bg = c.blue, bold = true }
        hl.LazyProgressDone = { fg = c.blue }

        -- Alpha (LazyVim dashboard)
        hl.AlphaHeader     = { fg = c.blue, bold = true }
        hl.AlphaFooter     = { fg = "#A1A1AA" }
        hl.AlphaShortcut   = { fg = c.blue, bold = true }
        hl.AlphaButton     = { fg = c.cyan }
        hl.AlphaButtons    = { fg = c.cyan }
        hl.AlphaButtonText = { fg = c.cyan }

        -- Generic fallbacks
        hl.Title   = { fg = c.blue, bold = true }
        hl.Special = { fg = c.cyan }

        -- Statusline/tabline accents (optional examples)
        hl.StatusLine     = { bg = c.bg_highlight, fg = c.fg }
        hl.StatusLineNC   = { bg = c.bg_dark,      fg = c.comment }
        hl.TabLineSel     = { bg = c.bg_highlight, fg = c.blue, bold = true }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
