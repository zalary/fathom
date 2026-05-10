-- Fathom colorscheme for Neovim
-- https://github.com/zalary/fathom

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'fathom'
vim.o.termguicolors = true

local c = {
  bg      = '#323D44',
  bg_dark = '#2C3740',
  bg_mid  = '#3A454D',
  black   = '#4D5355',
  red     = '#949B79',
  green   = '#88908E',
  yellow  = '#99926B',
  blue    = '#7A8280',
  magenta = '#999999',
  cyan    = '#AAAAAA',
  fg      = '#C0C0C0',
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hi('Normal',           { fg = c.fg,      bg = c.bg })
hi('NormalFloat',      { fg = c.fg,      bg = c.bg_dark })
hi('NormalNC',         { fg = c.fg,      bg = c.bg })
hi('Cursor',           { fg = c.bg,      bg = c.fg })
hi('CursorLine',       { bg = c.bg_mid })
hi('CursorLineNr',     { fg = c.cyan,    bg = c.bg_mid,  bold = true })
hi('LineNr',           { fg = c.blue })
hi('SignColumn',       { fg = c.blue,    bg = c.bg })
hi('ColorColumn',      { bg = c.bg_mid })
hi('Folded',           { fg = c.blue,    bg = c.bg_mid })
hi('FoldColumn',       { fg = c.blue,    bg = c.bg })
hi('VertSplit',        { fg = c.black,   bg = c.bg })
hi('WinSeparator',     { fg = c.black,   bg = c.bg })
hi('StatusLine',       { fg = c.cyan,    bg = c.bg_dark })
hi('StatusLineNC',     { fg = c.blue,    bg = c.bg_dark })
hi('TabLine',          { fg = c.blue,    bg = c.bg_dark })
hi('TabLineFill',      { bg = c.bg_dark })
hi('TabLineSel',       { fg = c.fg,      bg = c.bg })
hi('Pmenu',            { fg = c.fg,      bg = c.bg_dark })
hi('PmenuSel',         { fg = c.fg,      bg = c.black })
hi('PmenuSbar',        { bg = c.bg_dark })
hi('PmenuThumb',       { bg = c.black })
hi('WildMenu',         { fg = c.fg,      bg = c.black })
hi('NonText',          { fg = c.black })
hi('Whitespace',       { fg = c.black })
hi('SpecialKey',       { fg = c.black })
hi('EndOfBuffer',      { fg = c.black })
hi('MatchParen',       { fg = c.cyan,    bold = true })
hi('Directory',        { fg = c.cyan })
hi('Title',            { fg = c.fg,      bold = true })
hi('Conceal',          { fg = c.blue })

-- Selection & search
hi('Visual',           { bg = c.black })
hi('VisualNOS',        { bg = c.black })
hi('Search',           { fg = c.bg,      bg = c.yellow })
hi('IncSearch',        { fg = c.bg,      bg = c.cyan })
hi('CurSearch',        { fg = c.bg,      bg = c.yellow })
hi('Substitute',       { fg = c.bg,      bg = c.red })

-- Messages
hi('ModeMsg',          { fg = c.green,   bold = true })
hi('MoreMsg',          { fg = c.green })
hi('WarningMsg',       { fg = c.yellow })
hi('ErrorMsg',         { fg = c.red })
hi('Question',         { fg = c.green })

-- Syntax
hi('Comment',          { fg = c.blue,    italic = true })
hi('Constant',         { fg = c.red })
hi('String',           { fg = c.yellow })
hi('Character',        { fg = c.yellow })
hi('Number',           { fg = c.red })
hi('Boolean',          { fg = c.red })
hi('Float',            { fg = c.red })
hi('Identifier',       { fg = c.fg })
hi('Function',         { fg = c.fg })
hi('Statement',        { fg = c.cyan })
hi('Conditional',      { fg = c.cyan })
hi('Repeat',           { fg = c.cyan })
hi('Label',            { fg = c.cyan })
hi('Operator',         { fg = c.fg })
hi('Keyword',          { fg = c.cyan })
hi('Exception',        { fg = c.cyan })
hi('PreProc',          { fg = c.magenta })
hi('Include',          { fg = c.magenta })
hi('Define',           { fg = c.magenta })
hi('Macro',            { fg = c.magenta })
hi('PreCondit',        { fg = c.magenta })
hi('Type',             { fg = c.green })
hi('StorageClass',     { fg = c.green })
hi('Structure',        { fg = c.green })
hi('Typedef',          { fg = c.green })
hi('Special',          { fg = c.blue })
hi('SpecialChar',      { fg = c.yellow })
hi('Tag',              { fg = c.cyan })
hi('Delimiter',        { fg = c.fg })
hi('SpecialComment',   { fg = c.blue })
hi('Underlined',       { underline = true })
hi('Error',            { fg = c.red,     bold = true })
hi('Todo',             { fg = c.bg,      bg = c.yellow, bold = true })

-- Diagnostics
hi('DiagnosticError',           { fg = c.red })
hi('DiagnosticWarn',            { fg = c.yellow })
hi('DiagnosticInfo',            { fg = c.cyan })
hi('DiagnosticHint',            { fg = c.blue })
hi('DiagnosticUnderlineError',  { undercurl = true, sp = c.red })
hi('DiagnosticUnderlineWarn',   { undercurl = true, sp = c.yellow })
hi('DiagnosticUnderlineInfo',   { undercurl = true, sp = c.cyan })
hi('DiagnosticUnderlineHint',   { undercurl = true, sp = c.blue })

-- Git diff
hi('DiffAdd',          { fg = c.green,   bg = c.bg_mid })
hi('DiffChange',       { fg = c.yellow,  bg = c.bg_mid })
hi('DiffDelete',       { fg = c.red,     bg = c.bg_mid })
hi('DiffText',         { fg = c.yellow,  bg = c.black })

-- Tree-sitter
hi('@comment',              { link = 'Comment' })
hi('@string',               { link = 'String' })
hi('@number',               { link = 'Number' })
hi('@boolean',              { link = 'Boolean' })
hi('@float',                { link = 'Float' })
hi('@function',             { link = 'Function' })
hi('@function.builtin',     { fg = c.cyan })
hi('@function.call',        { link = 'Function' })
hi('@method',               { link = 'Function' })
hi('@method.call',          { link = 'Function' })
hi('@keyword',              { link = 'Keyword' })
hi('@keyword.return',       { fg = c.cyan })
hi('@keyword.operator',     { fg = c.fg })
hi('@conditional',          { link = 'Conditional' })
hi('@repeat',               { link = 'Repeat' })
hi('@type',                 { link = 'Type' })
hi('@type.builtin',         { fg = c.green,  italic = true })
hi('@variable',             { fg = c.fg })
hi('@variable.builtin',     { fg = c.cyan })
hi('@parameter',            { fg = c.fg })
hi('@field',                { fg = c.fg })
hi('@property',             { fg = c.fg })
hi('@operator',             { link = 'Operator' })
hi('@punctuation.bracket',  { fg = c.fg })
hi('@punctuation.delimiter',{ fg = c.fg })
hi('@tag',                  { fg = c.cyan })
hi('@tag.attribute',        { fg = c.yellow })
hi('@tag.delimiter',        { fg = c.blue })
hi('@text.uri',             { fg = c.yellow, underline = true })
hi('@text.todo',            { link = 'Todo' })
