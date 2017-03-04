echom "Loading runes table..."
let s:table = {}
let s:table[','] = ['ᛮ', 'ᛯ', 'ᛰ']
let s:table['.'] = ['᛫', '᛬', '᛭']
let s:table['a'] = ['ᚨ', 'ᚪ', 'ᛅ', 'ᛆ']
let s:table['ae'] = ['ᚫ']
let s:table['b'] = ['ᛒ', 'ᛓ']
let s:table['c'] = ['ᚳ', 'ᛍ', 'ᛢ', 'ᛣ', 'ᛤ']
let s:table['d'] = ['ᛞ', 'ᛑ']
let s:table['e'] = ['ᛖ', 'ᛂ']
let s:table['ea'] = ['ᛠ']
let s:table['eng'] = ['ᛜ', 'ᛝ']
let s:table['f'] = ['ᚠ']
let s:table['g'] = ['ᚴ', 'ᚷ', 'ᚸ', 'ᚵ', 'ᚶ']
let s:table['h'] = ['ᚺ', 'ᚻ', 'ᚼ', 'ᚽ']
let s:table['i'] = ['ᛁ', 'ᛇ']
let s:table['io'] = ['ᛡ']
let s:table['j'] = ['ᛃ', 'ᛄ']
let s:table['k'] = ['ᚲ', 'ᚴ']
let s:table['l'] = ['ᛚ', 'ᛛ']
let s:table['m'] = ['ᛗ', 'ᛘ', 'ᛙ']
let s:table['n'] = ['ᚾ', 'ᚿ', 'ᛀ']
let s:table['o'] = ['ᚩ', 'ᚬ', 'ᚭ', 'ᚮ', 'ᚯ', 'ᛟ']
let s:table['on'] = ['ᚰ']
let s:table['p'] = ['ᛈ', 'ᛔ', 'ᛕ']
let s:table['q'] = ['ᛩ']
let s:table['r'] = ['ᚱ', 'ᛦ', 'ᛧ', 'ᛨ']
let s:table['s'] = ['ᛊ', 'ᛋ', 'ᛌ', 'ᛥ']
let s:table['t'] = ['ᛏ', 'ᛐ']
let s:table['th'] = ['ᚦ', 'ᚧ']
let s:table['u'] = ['ᚢ']
let s:table['v'] = ['ᚡ']
let s:table['w'] = ['ᚥ', 'ᚹ']
let s:table['x'] = ['ᛉ', 'ᛪ']
let s:table['y'] = ['ᚣ', 'ᚤ']
let s:table['z'] = ['ᛉ', 'ᛎ']
echom "Done"


function! boshiamy_runes_autoload#table()
    return s:table
endfunction
