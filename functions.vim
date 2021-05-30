""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:space_count = 0
fu Line()
    "this will go to the begin of the line when executed for the first time
    "second time it will go to the end of the line and repeat
    if g:space_count == 0 
        normal _
        let g:space_count += 1
    elseif g:space_count == 1
        normal $
        let g:space_count = 0
    endif
    "echo g:space_count
endfu


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:space_count = 0
fu VisLine()
    "this will go to the begin of the line when executed for the first time
    "second time it will go to the end of the line and repeat
    if g:space_count == 0 
        exe 'normal gv_'
        let g:space_count += 1
    elseif g:space_count == 1
        exe 'normal gv$'
        let g:space_count = 0
    endif
    "echo g:space_count
endfu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:mark_count = 0
fu MarkCounter()
    """ Will adds 1 to mark_count and create one mark from the numbers 1 to 4
    " and resets to 1. "
    let g:mark_count += 1
    if g:mark_count == 1
        echo "Created mark ".g:mark_count
        normal m1
    elseif g:mark_count == 2
        echo "Created mark ".g:mark_count
        normal m2
    elseif g:mark_count == 3
        echo "Created mark ".g:mark_count
        normal m3
    elseif g:mark_count == 3
        echo "Created mark ".g:mark_count
        normal m4
    elseif g:mark_count == 4
        echo "Created mark ".g:mark_count
        normal m4
        let g:mark_count = 0
    endif
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Pydoc(arg)
    " Takes a argument that should refer to a module and creates a temporary
    " file to store its documentation,.then it will load the file into a
    " bufffer after that it will attempt to create an index out of functions only
    " and append the original documentation again
    execute "!pydoc ".a:arg." > /pydoc_temp.py"
    find /pydoc_temp.py
    " Delete all lines except lines with )
    g!/)/d
    " Delete all lines with |
    g/|/d
    " Delete all lines with -
    g/-/d
    " Write the file so it can append the file again else it will delete.
    w!  
    execute "!pydoc ".a:arg." >> /pydoc_temp.py"
    normal gg

endfu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu SnippetCreator()
    " This takes the selection from vmode and does the following things.
    " Replace all single quotes with double quotes.
    '<,'>s/\'/\"/g
    " Cancel out double quote with slash for put.
    '<,'>s/\"/\\"/g
    " Puts put = ' on beggining of a line.
    '<,'>s/^/put = '/
    " Puts single quote on the end of the line.
    '<,'>s/$/'/
    
endfu
nnoremap 'sn :call SnippetCreator()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Yank()
"This will copy the 1stword of a line and paste into the next line udnerneath
"If this line will start with the word 'self' it will copy self the dot  and the
"following word to work faster with objects

    exe 'normal _"ryw'

    if getreg("r") == 'self'
        echo getreg("r")
        exe 'normal "ry3w'
        exe "normal o\<c-R>r"

    else
        echo getreg("r")
        exe "normal o\<c-R>r"
        exe "normal <s-a>"

    endif
endfu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function CopyPaste()
python3 << EOF

import vim
import pyperclip
import pyautogui
from pyautogui import hotkey
from time import sleep

pyautogui.PAUSE = 0.2

hotkey("shift", "ctrl", "c")
hotkey("shift", "ctrl", "c")
hotkey("`", "0")
hotkey("shift", "ctrl", "v")
EOF
endfunction
nnoremap <c-c> :call CopyPaste()<cr>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Java()
    "!javac %
    echo %
endfu

