if exists('g:loaded_backscratch')
    finish
endif
let g:loaded_backscratch = 1

command! Scratchify setlocal nobuflisted noswapfile buftype=nofile bufhidden=delete
command! -nargs=1 -complete=command Scratch call backscratch#open(<q-mods>, <q-args>)
