" Make it beautiful - colors and fonts
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  set background=dark
  " nothing works but solarized
  colorscheme solarized

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=80

  set guifont=Consolas:h20,Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1

  "tell the term has 256 colors
  set t_Co=256
  let base16colorspace=256  " Access colors present in 256 colorspace

  colorscheme base16-default
endif

