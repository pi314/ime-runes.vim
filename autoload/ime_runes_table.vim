call ime#log('runes', 'Loading runes table...')
let s:table = {}
let s:table[','] = ['ᛮ', 'ᛯ', 'ᛰ']
let s:table['.'] = ['᛫', '᛬', '᛭']
let s:table['a'] = {}
let s:table['a']['_'] = ['ᚨ', 'ᚪ', 'ᛅ', 'ᛆ']
let s:table['a']['e'] = ['ᚫ']
let s:table['b'] = ['ᛒ', 'ᛓ']
let s:table['c'] = ['ᚳ', 'ᛍ', 'ᛢ', 'ᛣ', 'ᛤ']
let s:table['d'] = ['ᛞ', 'ᛑ']
let s:table['e'] = {}
let s:table['e']['_'] = ['ᛖ', 'ᛂ']
let s:table['e']['a'] = ['ᛠ']
let s:table['e']['n'] = {}
let s:table['e']['n']['g'] = ['ᛜ', 'ᛝ']
let s:table['f'] = ['ᚠ']
let s:table['g'] = ['ᚴ', 'ᚷ', 'ᚸ', 'ᚵ', 'ᚶ']
let s:table['h'] = ['ᚺ', 'ᚻ', 'ᚼ', 'ᚽ']
let s:table['i'] = {}
let s:table['i']['_'] = ['ᛁ', 'ᛇ']
let s:table['i']['o'] = ['ᛡ']
let s:table['j'] = ['ᛃ', 'ᛄ']
let s:table['k'] = ['ᚲ', 'ᚴ']
let s:table['l'] = ['ᛚ', 'ᛛ']
let s:table['m'] = ['ᛗ', 'ᛘ', 'ᛙ']
let s:table['n'] = ['ᚾ', 'ᚿ', 'ᛀ']
let s:table['o'] = {}
let s:table['o']['_'] = ['ᚩ', 'ᚬ', 'ᚭ', 'ᚮ', 'ᚯ', 'ᛟ']
let s:table['o']['n'] = ['ᚰ']
let s:table['p'] = ['ᛈ', 'ᛔ', 'ᛕ']
let s:table['q'] = ['ᛩ']
let s:table['r'] = ['ᚱ', 'ᛦ', 'ᛧ', 'ᛨ']
let s:table['s'] = ['ᛊ', 'ᛋ', 'ᛌ', 'ᛥ']
let s:table['t'] = {}
let s:table['t']['_'] = ['ᛏ', 'ᛐ']
let s:table['t']['h'] = ['ᚦ', 'ᚧ']
let s:table['u'] = ['ᚢ']
let s:table['v'] = ['ᚡ']
let s:table['w'] = ['ᚥ', 'ᚹ']
let s:table['x'] = ['ᛉ', 'ᛪ']
let s:table['y'] = ['ᚣ', 'ᚤ']
let s:table['z'] = ['ᛉ', 'ᛎ']
call ime#log('runes', 'Loading runes table...done')


function! ime_runes_table#table ()
    return s:table
endfunction
