local M = {}

function M.get(cpt)
	return {
		CocFadeOut = { fg = cpt.gray},
		CocPumVirtualText = { fg = cpt.comment },
		CocFadeOut = { fg = cpt.comment }, -- for faded out text, such as for highlighting unnecessary code.

		CocErrorSign = { fg = cpt.error }, -- for error signs.
		CocErrorVirtualText = { fg = cpt.error }, -- for error virtual text.
		CocErrorHighlight = { fg = cpt.comment }, -- for error code range.
		CocErrorLine = { fg = cpt.comment }, -- line highlight of sign which contains error.

		CocWarningSign = { fg = cpt.warning }, -- for warning signs.
		CocWarningVirtualText = { fg = cpt.warning }, -- for warning virtual text.
		CocWarningHighlight = { fg = cpt.warning }, -- for warning code range.
		CocWarningLine = { fg = cpt.comment }, -- line highlight of sign which contains warning.

		CocInfoSign = { fg = cpt.comment }, -- for information signs.
		CocInfoVirtualText = { fg = cpt.comment }, -- for information virtual text.
		-- CocInfoHighlight = { fg = cpt.fg }, -- for information code range.
		-- CocInfoLine = { fg = cpt.fg }, -- line highlight of sign which information.

		CocHintSign = { fg = cpt.comment }, -- for hint signs.
		CocHintVirtualText = { fg = cpt.comment }, -- for hint virtual text.
		CocHintHighlight = { fg = cpt.comment }, -- for hint code range.
		CocHintLine = { fg = cpt.comment }, -- line highlight of sign which contains hint.

		CocDeprecatedHighlight = { fg = cpt.warning }, -- for deprecated code range, links to
		-- CocUnusedHighlight = { fg = cpt.fg }, -- for unnecessary code range, links to |CocFadeOut| by default
	}
end

return M
