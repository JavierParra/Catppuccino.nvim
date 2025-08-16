local M = {}

function M.get(cpt)
	local config = require("catppuccino.config").options

	local root_dir_color = cpt.bg_sidebar

	if config.integrations.nvimtree.show_root then
		root_dir_color = cpt.pink
	end

	return {
		NvimTreeFolderName = { fg = cpt.magenta },
		NvimTreeFolderIcon = { fg = cpt.blue },
		NvimTreeNormal = { fg = cpt.fg, bg = cpc.transparency and cpt.none or cpt.bg_sidebar },
		NvimTreeOpenedFolderName = { fg = cpt.magenta, style = "bold,underline" },
		NvimTreeEmptyFolderName = { fg = cpt.blue_br },
		NvimTreeIndentMarker = { fg = cpt.green },
		NvimTreeVertSplit = { fg = cpt.black, bg = cpt.black },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cpt.blue },
		NvimTreeStatuslineNc = { fg = cpt.black, bg = cpt.black },
		NvimTreeGitDirty = { fg = cpt.git.change },
		NvimTreeGitNew = { fg = cpt.git.add },
		NvimTreeGitDeleted = { fg = cpt.git.delete },
		NvimTreeSpecialFile = { fg = cpt.cyan },
		NvimTreeImageFile = { fg = cpt.fg_sidebar },
		NvimTreeOpenedFile = { fg = cpt.magenta },
		NvimTreeWindowPicker = { bg = cpt.pink, fg = cpt.fg }
	}
end

return M
