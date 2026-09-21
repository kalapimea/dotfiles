-- 1. Base color settings
vim.opt.background = "dark"
vim.opt.termguicolors = false -- Use terminal ANSI colors

-- 2. Pure Background-Only Transparency Hook
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- These are the only groups that handle backgrounds
    local bg_groups = {
      "Normal", "NormalNC", "SignColumn", "LineNr", 
      "CursorLineNr", "EndOfBuffer", "NonText"
    }
    for _, group in ipairs(bg_groups) do
      -- This clears the background but leaves text colors completely untouched
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})

-- 3. Load your chosen vibrant theme
vim.cmd("colorscheme desert") 
vim.cmd("syntax on")

-- clipboard
vim.opt.clipboard = "unnamedplus"
