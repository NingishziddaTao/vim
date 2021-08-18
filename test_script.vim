""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Test()
    !clear
python << EOF
import vim
import curses
import os
from curses import panel
from curses import wrapper

def main(stdscr):
#stdscr = curses.initscr()
    curses.raw()

    stdscr.addstr("o.o")
    stdscr.getch()
    stdscr.erase()

    curses.endwin()
    os.system("clear")
wrapper(main)

#os.system("clear")

#window = vim.current.window
#window.width = 100
#window.height = 35
#window.cursor = 1,1

EOF
!clear
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! Print_vim_variable_with_python(vim_variable)
python << EOF
import vim
#convert vim variable to python variable
help_argement = vim.eval("a:vim_variable")
help(help_argement)
EOF
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function Test1()
python << EOF
import vim
import curses
import os
from curses import panel
from curses import wrapper

def main(stdscr):
    stdscr = curses.initscr()
    curses.raw()

    while 1:
        stdscr.clear()
        stdscr.addstr("ddf")
        stdscr.refresh()
        key = stdscr.getch()

        if key == ord("q"):
            break

        else:
            def sub(stdscr):
                curses.endwin()
                os.system("ls")
                key = stdscr.getch()

                curses.endwin()
EOF
endfunction
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
fu GetGdFiles(arg)
    execute "!rsync -r --delete /sda5/GodotEngineProjects/".a:arg."/ /sda5/go"
    execute "%bd"
    execute "args /sda5/go/**/*.gd"
    execute "set rnu"
endfu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fu GetGdFiles(arg)
"
"    " Delete current buffers
"    execute "%bd"
"    execute args ~/GodotEngineProjects/".a:arg."/**/*.gd<cr>"
"    "
"    "normal :args ~/GodotEngineProjects//**/*.gd
"
"python << EOF
"
"import vim
"from pyautogui import hotkey
"from time import sleep
"
"for i in range(8):
"    hotkey("left")
"EOF
"endfu

