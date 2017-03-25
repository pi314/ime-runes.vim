let s:table = {}


function! s:log (msg)
    call ime#log('runes', a:msg)
endfunction


function! s:FlattenTable (result, prefix, probe)
    call extend(
        \ a:result,
        \ map(copy(get(a:probe, '_', [])), '{"word": v:val, "menu": a:prefix}')
        \ )

    for l:key in filter(keys(a:probe), 'v:val != "_"')
        if type(a:probe[(l:key)]) == type([])
            call extend(
                \ a:result,
                \ map(
                    \ copy(a:probe[(l:key)]),
                    \ '{"word": v:val, "menu": a:prefix . l:key}'
                \ )
            \ )
        endif
    endfor

    for l:key in filter(keys(a:probe), 'type(a:probe[(v:val)]) == type({})')
        call s:FlattenTable(a:result, a:prefix . l:key, a:probe[(l:key)])
    endfor
endfunction


function! ime_runes#handler (matchobj, trigger)
    if s:table == {}
        let s:table = ime_runes_table#table()
    endif

    let l:runes_str = a:matchobj[0] . a:trigger

    let l:result = []
    let l:result_idx = 0
    let l:probe = s:table
    for l:idx in range(strlen(l:runes_str))
        let l:alphabet = l:runes_str[(l:idx)]
        if has_key(l:probe, l:alphabet)
            if type(l:probe[(l:alphabet)]) == type([])
                let l:result = l:probe[(l:alphabet)]
                let l:probe = {}
            else
                let l:result = []
                let l:probe = l:probe[(l:alphabet)]
            endif
        else
            " reset all searching result,
            " start over to ignore unrecognized alphabets
            let l:result_idx = l:idx
            if type(s:table[(l:alphabet)]) == type([])
                let l:result = s:table[(l:alphabet)]
                let l:probe = s:table
            else
                let l:result = []
                let l:probe = s:table[(l:alphabet)]
            endif
        endif
    endfor

    let l:effective_len = strlen(l:runes_str) - l:result_idx - 1
    let l:effective_str = strpart(l:runes_str, l:result_idx)
    if l:result != []
        " only one possibility
        return {
        \ 'len': l:effective_len,
        \ 'options': map(copy(l:result), '{"word": v:val, "menu": l:effective_str}'),
        \ }
    else
        " multiple possibllities
        let l:result = []
        call s:FlattenTable(l:result, l:effective_str, l:probe)
        return {
        \ 'len': l:effective_len,
        \ 'options':
            \ [l:effective_str] +
            \ l:result,
        \ }
    endif
endfunction


function! ime_runes#info ()
    return {
    \ 'type': 'standalone',
    \ 'icon': '[ᚱ]',
    \ 'description': 'Runes mode',
    \ 'pattern': '\v[a-z,.]*$',
    \ 'handler': function('ime_runes#handler'),
    \ 'trigger': split('abcdefghijklmnopqrstuvwxyz,.', '\zs'),
    \ }
endfunction
