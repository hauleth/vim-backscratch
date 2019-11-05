function! backscratch#open(mods, cmd) abort
    if a:cmd is# ''
        let l:output = ''
    elseif a:cmd[0] is# '@'
        if strlen(a:cmd) is# 2
            let l:output = getreg(a:cmd[1], 1, v:true)
        else
            throw 'Invalid register'
        endif
    elseif a:cmd[0] is# '!'
        let l:cmd = a:cmd =~' %' ? substitute(a:cmd, ' %', ' ' . expand('%:p'), '') : a:cmd
        let l:output = systemlist(matchstr(l:cmd, '^!\zs.*'))
    else
        let l:output = split(execute(a:cmd), "\n")
    endif

    execute a:mods . ' new'
    Scratchify
    call setline(1, l:output)
endfunction
