return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    -- Configuration for barbecue
    attach_navic = true,
    show_basename = true,
    show_dirname = true,
    show_modified = true,

    theme = {
      normal = { fg = nil, bg = "NONE" },
      basename = { fg = nil, bg = "NONE", bold = true },
      dirname = { fg = nil, bg = "NONE" },
      context = { fg = nil, bg = "NONE" },
      separator = { fg = nil, bg = "NONE" },
      modified = { fg = nil, bg = "NONE" },
      ellipsis = { fg = nil, bg = "NONE" },

      -- context parts
      context_file = { fg = nil, bg = "NONE" },
      context_namespace = { fg = nil, bg = "NONE" },
      context_class = { fg = nil, bg = "NONE" },
      context_method = { fg = nil, bg = "NONE" },
    },
  },
  config = function(_, opts)
    require("barbecue").setup(opts)

    -- override highlights after colorscheme or UI loaded
    vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter", "UIEnter" }, {
      callback = function()
        vim.cmd([[
          hi TabLineFill guibg=NONE
          hi WinBar guibg=NONE
          hi! link TabLineFill Normal
          hi! link WinBar Normal

          hi BarbecueNormal guibg=NONE
          hi BarbecueBasename guibg=NONE
          hi BarbecueDirname guibg=NONE
          hi BarbecueContext guibg=NONE
          hi BarbecueSeparator guibg=NONE
          hi BarbecueModified guibg=NONE
          hi BarbecueEllipsis guibg=NONE
          hi BarbecueContextFile guibg=NONE
          hi BarbecueContextNamespace guibg=NONE
          hi BarbecueContextClass guibg=NONE
          hi BarbecueContextMethod guibg=NONE
        ]])
      end,
    })
  end,
}
