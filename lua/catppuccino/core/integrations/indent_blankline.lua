local M = {}

function M.get(cpt)
	return {
		IndentBlanklineChar = { fg = cpt.red },
	}
end

return M
