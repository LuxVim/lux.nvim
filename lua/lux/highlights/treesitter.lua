-- Treesitter-based syntax highlighting definitions
-- These groups provide modern, accurate syntax highlighting using treesitter
local M = {}

-- Sets up treesitter highlight groups for enhanced syntax highlighting
-- @param colors table: Color palette and semantic color mappings
-- @param utils table: Utility functions including highlight_all
M.setup = function(colors, utils)
    local c  = colors.palette
    local s  = colors.semantic
    local hl = utils.highlight_all

    hl({
        -- Comments & Documentation
        ['@comment']               = { fg = c.fg2, italic = true },        -- Code comments

        -- Literals
        ['@string']                = { fg = s.string },                    -- String literals
        ['@character']             = { fg = s.string },                    -- Character literals
        ['@number']                = { fg = s.number },                    -- Numeric literals
        ['@boolean']               = { fg = s.boolean, bold = true },      -- Boolean values
        ['@float']                 = { fg = s.number },                    -- Floating point numbers

        -- Constants & Variables
        ['@constant']              = { fg = s.constant },                  -- Constants
        ['@constant.builtin']      = { fg = s.function_ },                 -- Built-in constants
        ['@constant.macro']        = { fg = s.accent_secondary },          -- Macro constants
        ['@variable']              = { fg = c.teal },                      -- Variable names
        ['@variable.builtin']      = { fg = c.flamengo },                  -- Built-in variables
        ['@variable.parameter']    = { fg = c.aqua },                      -- Function parameters
        ['@property']              = { fg = c.cyan },                      -- Object properties

        -- Functions & Methods
        ['@function']              = { fg = s.function_, bold = true },    -- Function definitions
        ['@function.builtin']      = { fg = s.accent_secondary },          -- Built-in functions
        ['@function.call']         = { fg = s.function_ },                 -- Function calls
        ['@function.macro']        = { fg = s.accent_secondary, bold = true }, -- Function macros
        ['@function.method']       = { fg = s.function_ },                 -- Method definitions
        ['@function.method.call']  = { fg = s.accent_primary, bold = true }, -- Method calls
        ['@constructor']           = { fg = c.orange },                    -- Constructor functions

        -- Keywords
        ['@keyword']               = { fg = s.keyword, bold = true },      -- Language keywords
        ['@keyword.import']        = { fg = s.keyword, bold = true },      -- Import statements
        ['@keyword.function']      = { fg = s.keyword },                   -- Function keywords
        ['@keyword.operator']      = { fg = s.operator },                  -- Operator keywords
        ['@keyword.coroutine']     = { fg = c.magenta, italic = true },    -- Coroutine keywords

        -- Types & Attributes
        ['@type']                  = { fg = s.type, bold = true },         -- Type names
        ['@type.builtin']          = { fg = s.type },                      -- Built-in types
        ['@type.definition']       = { fg = c.orange },                    -- Type definitions
        ['@type.qualifier']        = { fg = c.indigo },                    -- Type qualifiers
        ['@attribute']             = { fg = c.indigo, italic = true },     -- Attributes/decorators

        -- Modules & Namespaces
        ['@namespace']             = { fg = c.blue },                      -- Namespaces
        ['@module']                = { fg = c.blue },                      -- Module names

        -- Operators, Control Flow & Punctuation
        ['@operator']              = { fg = s.operator },                  -- Operators
        ['@conditional']           = { fg = s.keyword },                   -- Conditional statements
        ['@repeat']                = { fg = s.keyword },                   -- Loop statements
        ['@label']                 = { fg = c.indigo },                    -- Labels
        ['@punctuation.delimiter'] = { fg = c.fg1 },                      -- Delimiters (commas, semicolons)
        ['@punctuation.bracket']   = { fg = c.fg2 },                      -- Brackets and braces
        ['@punctuation.special']   = { fg = c.orange },                   -- Special punctuation

        -- Tags (HTML, XML, JSX)
        ['@tag']                   = { fg = c.orange },                    -- HTML/XML tags
        ['@tag.attribute']         = { fg = c.coral },                    -- Tag attributes
        ['@tag.delimiter']         = { fg = c.fg3 },                      -- Tag delimiters

        -- Decorators & Annotations
        ['@decorator']             = { fg = c.indigo, italic = true },     -- Decorators
        ['@annotation']            = { fg = c.indigo, italic = true },     -- Annotations

        -- Embedded/injected languages
        ['@embedded']              = { fg = c.flamengo },                  -- Embedded code
        ['@language']              = { fg = c.cyan },                      -- Language identifiers
    })
end

return M
