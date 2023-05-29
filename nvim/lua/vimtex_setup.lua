vim.g.vimtex_view_method = 'zathura'
vim.g.latex_view_general_viewer = 'zathura'
vim.g.vimtex_indent_enabled = 1

vim.g.vimtex_compiler_progname = 'nvr'
vim.g.tex_flavor = 'latex'
vim.g.vimtex_quickfix_mode = 0
vim.g.Tex_MultipleCompileFormats = 'pdf,bibtex,pdf'

vim.g.tex_conceal = 'abdmg'

vim.cmd [[let g:vimtex_compiler_latexmk = {'build_dir': 'build', 'options' : ['-shell-escape', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode']}]]
vim.cmd [[set conceallevel=1]]
vim.cmd [[hi Conceal ctermbg=none]]
