
nmap <leader>3 _i<space><backspace>//<return>
nmap <leader>33 _v)<cr>//<cr>v)zf
nmap <leader>22 0zov-xx

fu Compile()
    execute '!clear'
    execute 'w!'
    execute '!g++ % -o run'
    sleep 100m
    execute '!./run'
endfu

inoremap }{ {}<left><c-j><up><right><c-j>
"inoremap }{ {}<c-j><up><right><c-j>
nmap <F5> :call Compile() <CR>

"nmap <leader>3 _i//<return>
"nmap <leader>3 echo 'test'

