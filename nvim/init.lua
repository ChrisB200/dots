vim.g.mapleader = " "
vim.cmd("filetype plugin indent on")
require("config.remap")
require("config.set")
require("config.lazy")
require("config.gdscript")

-- override after theme loads
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE
  hi VertSplit guibg=NONE
  hi StatusLine guibg=NONE
  hi LineNr guibg=NONE
  hi EndOfBuffer guibg=NONE
]])

vim.filetype.add({
	extension = {
		gd = "gdscript",
	},
})
