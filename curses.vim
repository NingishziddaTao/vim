""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Search()
if search("curses") == 0
    
else
    echo 'curses found'
    badd ~/vim_files/HelpFiles/curses_functions.txt
    loadview
    "normal gg
endif
endfu
autocmd VimEnter * call Search()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Curses()
    badd /vim/curses_shortcuts
    put = 'import curses'
    put = 'from curses import panel'
    put = 'from curses import wrapper'
    put = '' 
    put = 'def main(stdscr):'
    put = '    stdscr = curses.initscr()'
    put = '' 
    put = '    curses.endwin()'
    put = 'wrapper(main)'
endfu

