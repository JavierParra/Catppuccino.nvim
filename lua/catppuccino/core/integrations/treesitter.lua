local util = require("catppuccino.utils.util")
local M = {}

function M.get(cpt)
	return {
		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		-- TSBoolean           = { };    -- For booleans.
		-- TSCharacter         = { };    -- For characters.
		-- TSComment           = { };    -- For comment blocks.
		TSNote = { fg = cpt.bg, bg = cpt.info },
		TSWarning = { fg = cpt.bg, bg = cpt.warning },
		TSDanger = { fg = cpt.bg, bg = cpt.error },
		TSConstructor = { fg = cpt.white }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConditional       = { fg = cpt.pink };    -- For keywords related to conditionnals.
		TSConstant = { fg = cpt.cyan }, -- For constants
		TSConstBuiltin = { fg = cpt.magenta }, -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in cpt.
		-- TSError             = { };    -- For syntax/parser errors.
		-- TSException         = { };    -- For exception related keywords.
		TSField = { fg = cpt.white }, -- For fields.
		rustTSField = { fg = util.darken(cpt.white, 0.75) }, -- For fields.
		TSFloat             = { fg = cpt.magenta };    -- For floats.
		TSFunction = { fg = cpt.green }, -- For function (calls and definitions).
		TSFuncBuiltin = { fg = cpt.cyan }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro = { fg = cpt.green }, -- For macro defined functions (calls and definitions): each `macro_rules` in Ruscpt.
		TSInclude           = { fb = cpt.pink };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword = { fg = cpt.pink, style = cpc.styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction = { fg = cpt.pink, style = cpc.styles.functions }, -- For keywords used to define a fuction.
		TSLabel = { fg = cpt.pink }, -- For labels: `label:` in C and `:label:` in Lua.
		TSMethod            = { fg = cpt.green  };    -- For method calls and definitions.
		TSNamespace = { fg = cpt.magenta }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		TSNumber            = { fg = cpt.magenta  };    -- For all numbers
		TSOperator = { fg = cpt.pink }, -- For any operator: `+`, but also `->` and `*` in cpt.
		TSParameter = { fg = cpt.white }, -- For parameters of a function.
		TSParameterReference= { fg = cpt.white };    -- For references to parameters of a function.
		TSProperty = { fg = cpt.white }, -- Same as `TSField`.
		tomlTSProperty = { fg = cpt.blue }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = util.string_to_color(cpt, "", cpt.fg_alt) }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = cpt.white }, -- For brackets and parenthesis.
		TSPunctSpecial = { fg = cpt.pink }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat            = { fg = cpt.pink };    -- For keywords related to loops.
		TSString            = { fg = cpt.yellow, style = cpc.styles.strings };    -- For strings.
		TSStringRegex = { fg = cpt.magenta, style = cpc.styles.strings }, -- For regexes.
		TSStringEscape = { fg = cpt.magenta, style = cpc.styles.strings }, -- For escape characters within a string.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		TSType              = { fg = cpt.cyan  };    -- For types.
		TSTypeBuiltin = { fg = cpt.cyan }, -- For builtin types.
		TSVariable = { style = cpc.styles.variables }, -- Any variable name that does not have another highlighcpt.
		TSVariableBuiltin = { fg = cpt.orange }, -- Variable names that are defined by the languages, like `this` or `self`.
		TSTag               = { fg = cpt.pink };    -- Tags like html tag names.
		TSTagDelimiter      = { fg = util.darken(cpt.fg, 0.75) };    -- Tag delimiter like `<` `>` `/`
		-- TSText              = { };    -- For strings considered text in a markup language.
		TSTextReference = { fg = cpt.cyan },
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcpt.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcpt.
		-- TSURI               = { };    -- Any URI like a link or email.
	}
end

return M
