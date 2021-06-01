
" Mapping
"noremap <F5> :w!<bar>:!clear<cr>:!python %<CR>
nmap <leader>3 _i<space><backspace>#<return>

" Comment
vmap 3 _)
vmap 33 <return>#<return>zf-
nmap <leader>3 _i<space><backspace>#<return>
nmap <leader>33 _v)<cr>#<cr>v)zf
nmap <leader>22 0zov-x

fu Run()
    execute 'w!'
    "execute '!clear'
    "sleep 100m
    execute '!python %'
endfu
nmap <F5> :call Run()<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu DefInit()
put = '    def __init__(self, **kwargs):'
put = '        super().__init__(**kwargs)'
endfu

nmap 'init :call DefInit()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
fu ArgParse()
    put = 'import argparse'
    put = ''
    put = 'parser = argparse.ArgumentParser(description = \"\")'
    put = 'parser.add_argument(\"arg\", help = \"\")'
    put = 'args = parser.parse_args()'
    put = ''
    put = 'def fu(arg):'
    put = '    pass'
    put = ''
    put = 'fu(args.arg)'
endfu
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
fu PyPrintVar()
    put = 'print(0)'
    "normal _iprint
    normal $i
    "normal A)
endfu
nmap 'v :call PyPrintVar()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
fu PyPrintStr()
    normal _iprint("
    normal A")
endfu
nmap 'prs :call PyPrintStr()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu PyPrintType()
    normal _iprint(type(
    normal A))
endfu
nmap 'prt :call PyPrintType()<CR>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu PrintTest()
    normal _oprint("O.o")
endfu

"
""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""

"fu BufPrint()
"    "put = 'print('''.bufname('%').''')'
"    put = 'print('''.bufname('%').': '')'
"    normal $
"endfu
"nmap 'tt :call BufPrint()<CR>

