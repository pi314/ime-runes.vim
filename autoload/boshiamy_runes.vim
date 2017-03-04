let s:table = {}

function! s:Handler (matchobj)
    let l:runes_str = a:matchobj[0]
    if strlen(l:runes_str) == 0
        return ' '
    endif

    if s:table == {}
        let s:table = boshiamy_runes_autoload#table()
    endif

    if has_key(s:table, l:runes_str)
        return s:table[(l:runes_str)]
    endif

    let ret_runes = ''
    let i = 0
    let j = 2
    while l:i <= l:j
        let t = l:runes_str[ (l:i) : (l:j) ]
        if has_key(s:table, l:t)
            let ret_runes = l:ret_runes . s:table[(l:t)][0]
            let i = l:j + 1
            let j = l:i + 2
        else
            let j = l:j - 1
        endif
    endwhile
    let remain = l:runes_str[(l:j + 1) : ]

    return [l:ret_runes . l:remain]
endfunction


function! boshiamy_runes#info ()
    return {
    \ 'type': 'standalone',
    \ 'icon': '[ᚱ]',
    \ 'description': 'Runes mode',
    \ 'pattern': '\v[.a-z,]+$',
    \ 'handler': function('s:Handler'),
    \ }
endfunction
