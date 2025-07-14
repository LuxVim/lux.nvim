local M = {}

M.setup = function(colors, utils)
    local c  = colors.palette
    local hl = utils.highlight_all

    hl({
        NvimTreeNormal           = { fg = c.fg1,    bg   = c.bg_dark },
        NvimTreeRootFolder       = { fg = c.orange, bold = true      },
        NvimTreeGitDirty         = { fg = c.yellow                   },
        NvimTreeGitNew           = { fg = c.gold                     },
        NvimTreeGitDeleted       = { fg = c.red                      },
        NvimTreeSpecialFile      = { fg = c.pink, underline = true   },
        NvimTreeIndentMarker     = { fg = c.gold                     },
        NvimTreeImageFile        = { fg = c.magenta                  },
        NvimTreeSymlink          = { fg = c.coral                    },
        NvimTreeFolderName       = { fg = c.orange                   },
        NvimTreeFolderIcon       = { fg = c.orange                   },
    })
end

return M
