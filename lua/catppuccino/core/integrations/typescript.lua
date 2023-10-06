local M = {}

function M.get(cpt)
	return {
		tsxTSTag            = { fg = cpt.pink };    -- Tags like html tag names.
		tsxTSConstructor    = { fg = cpt.cyan };    -- Tags like html tag names.
	}
end

return M
