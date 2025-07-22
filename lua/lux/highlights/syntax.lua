-- Syntax highlighting definitions for traditional Vim syntax groups
-- These groups provide basic syntax highlighting for all file types
local M = {}

-- Sets up traditional Vim syntax highlighting groups
-- @param colors table: Color palette and semantic color mappings
-- @param utils table: Utility functions including highlight_all
M.setup = function(colors, utils)
    local c  = colors.palette
    local s  = colors.semantic
    local hl = utils.highlight_all

    hl({
        -- Core UI Elements
        Normal            = { fg = c.fg0, bg = c.bg0 },           -- Default text and background
        Cursor            = { fg = c.bg0, bg = s.cursor },        -- Cursor appearance
        CursorLine        = { bg = c.bg1 },                       -- Current line highlight
        CursorLineNr      = { fg = s.cursor, bold = true },       -- Current line number
        LineNr            = { fg = c.fg3 },                       -- Line numbers
        Visual            = { bg = s.selection },                 -- Visual selection
        StatusLine        = { fg = c.fg0, bg = c.bg2, bold = true }, -- Active status line
        StatusLineNC      = { fg = c.fg1, bg = c.bg1 },          -- Inactive status line
        VertSplit         = { fg = c.border },                    -- Window separator

        -- Search & Matching
        Search            = { fg = c.bg0, bg = s.search },        -- Search matches
        IncSearch         = { fg = c.bg0, bg = s.prompt },        -- Incremental search
        MatchParen        = { fg = s.match, bg = c.bg3, bold = true }, -- Matching parentheses
        Directory         = { fg = s.info, bold = true },         -- Directory names

        -- Comments and Documentation
        Comment           = { fg = s.comment, italic = true },    -- Code comments

        -- Constants & Literals
        Constant          = { fg = s.constant },                  -- Constants
        Number            = { fg = s.number },                    -- Numeric literals
        Boolean           = { fg = s.boolean, bold = true },      -- Boolean values
        Float             = { fg = s.number },                    -- Floating point numbers
        String            = { fg = s.string },                    -- String literals
        Character         = { fg = s.string },                    -- Character literals

        -- Identifiers and Functions
        Identifier        = { fg = s.function_ },                 -- Variable names
        Function          = { fg = s.function_, bold = true },    -- Function names

        -- Keywords & Statements
        Keyword           = { fg = s.keyword, bold = true },      -- Language keywords
        Statement         = { fg = s.keyword, bold = true },      -- Programming statements
        Conditional       = { fg = s.keyword },                   -- if/else statements
        Repeat            = { fg = s.keyword },                   -- Loop statements

        -- Preprocessor / Attributes / Macros
        PreProc           = { fg = s.accent_secondary },          -- Preprocessor directives
        Macro             = { fg = s.accent_secondary, bold = true }, -- Macro definitions

        -- Types & Structures
        Type              = { fg = s.type, bold = true },         -- Data types
        Typedef           = { fg = s.type },                      -- Type definitions
        Structure         = { fg = s.type },                      -- Struct/class keywords
        StorageClass      = { fg = s.accent_secondary },          -- Storage modifiers

        -- Operators and Miscellaneous
        Operator          = { fg = s.operator },                  -- Mathematical operators
        Special           = { fg = s.special },                   -- Special characters
        Underlined        = { fg = s.accent_primary, underline = true }, -- Underlined text
        Ignore            = { fg = c.bg3 },                       -- Ignored content

        -- Diagnostics
        Error             = { fg = s.error, bold = true },        -- Error messages
        Todo              = { fg = s.warning, bg = c.bg1, bold = true }, -- TODO comments

        -- Spelling
        SpellBad          = { undercurl = true, sp = s.error },   -- Misspelled words
        SpellCap          = { undercurl = true, sp = s.warning }, -- Capitalization errors
        SpellLocal        = { undercurl = true, sp = s.hint },    -- Local dictionary words
        SpellRare         = { undercurl = true, sp = s.info },    -- Rare words
    })
end

return M
