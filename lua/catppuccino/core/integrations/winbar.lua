local M = {}

function M.get(cpt)
	return {
		WinBar = { bg = cpc.transparency and cpt.none or cpt.bg, fg = cpt.fg },
		WinBarNC = { bg = cpc.transparency and cpt.none or cpt.bg, fg = cpt.fg },
		WinBarSeparator = { bg = cpt.none, fg = cpt.green },
		WinBarSeparatorNC = { bg = cpc.transparency and cpt.none or cpt.bg, fg = cpt.bg_inactive },
		WinBarContent = { bg = cpt.green, fg = cpt.true_black },
		WinBarContentNC = { bg = cpt.bg_inactive, fg = cpt.fg },
	}
end

return M
