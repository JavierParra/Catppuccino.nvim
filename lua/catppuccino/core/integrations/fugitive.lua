local M = {}

function M.get(cpt)
	return {
		fugitiveHeader = { fg = cpt.pink },
		fugitiveSymbolicRef = { fg = cpt.green },
		diffSubName = { fg = cpt.magenta },
		gitcommitSummary = { fg = cpt.yellow },
		gitCommitOverflow = { fg = cpt.pink },
		gitCommitSelectedType = { fg = cpt.green },
		gitCommitSelectedFile = { fg = cpt.cyan },
		gitcommitUntrackedFile = { fg = cpt.white },
		gitcommitDiscardedFile = { fg = cpt.white },
		gitcommitDiscardedType = { fg = cpt.orange },
	}
end

return M
