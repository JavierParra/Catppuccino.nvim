local M = {}

function M.get(cpt)
	return {
		NERDTreeCWD = { fg = cpt.pink },
		NERDTreeDir = { fg = cpt.magenta },
		NERDTreeDirSlash = { fg = cpt.green },
		NERDTreeClosable = { fg = cpt.green },
		NERDTreeOpenable = { fg = cpt.green },
		NERDTreeExecFile = { fg = cpt.cyan },
		NERDTreeUp = { fg = cpt.cyan },
	}
end

return M
