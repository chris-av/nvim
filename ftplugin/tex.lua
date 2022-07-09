local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local wrap_tex = vim.api.nvim_create_augroup('WrapLineTeX', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = { '*.tex', '*.bib' },
  command = "setlocal wrap",
  group = wrap_tex
})

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = { '*.tex', '*.bib' },
  command = "setlocal nonumber",
  group = wrap_tex
})





-- here's the thing with pdflatex
-- (1): run <space>mk to do first pass pdflatex, will produce the pdf but if there are bibs, won't be loaded correctly
-- (2): run <space>bb to run bib on the main.bcf file. This will inject the bib references correctly into the bcf file
-- (3): run <space>mk AGAIN to do a second pass pdflatex. This time, it will catch the updated bcf file and fill in the bibliography correctly
keymap('n', '<space>mk', "'<Esc>:w! | !pdflatex -output-directory=\"%:p:h/output\" <c-r>% <CR>", opts)
keymap('n', '<space>bb', "'<Esc>:w! | !biber    -output-directory=output %:r.bcf  <CR>", opts)
keymap('n', '<space>cl', "'<Esc>:w! | !rm output/* <CR>", opts)



