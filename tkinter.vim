echo 'vim has opened ~/.vim/tkinter.vim :call HelpTkinter() for more info' 

"Tkinter_snippets
fu Tc() 
    normal ifrom Tkinter import *
    normal oimport tkFont
    normal oimport pyautogui
    normal o
    normal o#help("Tkinter")
    normal o#help("tkFont")
    normal o#help("pyautogui")
    normal o#pyautogui.displayMousePosition()
    normal opyg.PAUSE = 0.25
    normal o
    normal oclass App:
    normal o""" """
    normal odef __init__(self, root):
    normal oself.root = root
    normal oself.font1 = tkFont.Font(size = 18)
    normal oself.root.bind("<Escape>", lambda bind_event: root.destroy())
    normal o    
    normal o
    normal oroot =Tk()
    normal oApp(root)
    normal oroot.mainloop()
    /\<App\>
endfunction

"tkinter button
fu Tb(arg)
    let arg_nr = a:arg
    let s:widget = "self.button"
    let s:widget_nr = 0
    normal o
    while s:widget_nr < arg_nr
        let  s:widget_nr += 1 
        put = '#tk_button'
        put = s:widget . s:widget_nr . \" = Button(root, text = '', font = None, fg = None, bg = None, width = None, command = None)\"\"
        put = s:widget . s:widget_nr . \".grid(row = None, column = None, ipadx = None)\"
    endwhile
endfu

"tkinter frame
fu Tf(arg)
    let arg_nr = a:arg
    let s:widget = "self.frame"
    let s:widget_nr = 0
    normal o
    while s:widget_nr < arg_nr
        let  s:widget_nr += 1 
        put = '#tk_frame'
        put = s:widget . s:widget_nr . \" = Frame(root, image = None, bg = None, borderwidth = None)\"
        put = s:widget . s:widget_nr . \".pack(side = None)\"
    endwhile
endfu

"tkinter label
fu Tl(arg)
    let arg_nr = a:arg
    let s:widget = "self.label"
    let s:widget_nr = 0
    normal o
    while s:widget_nr < arg_nr
        let  s:widget_nr += 1 
        put = '#tk_label'
        put = s:widget . s:widget_nr . \" = Label(root, text = '', font = None, fg = None, bg = None, width = None, command = None)\"
        put = s:widget . s:widget_nr . \".grid(row = None, column = None, ipadx = None)\"
    endwhile
endfu

"tkinter entry
fu Te(arg)
    let arg_nr = a:arg
    let s:widget = "self.entry"
    let s:widget_nr = 0
    normal o
    while s:widget_nr < arg_nr
        let  s:widget_nr += 1 
        put = '#tk_entry'
        put = s:widget . s:widget_nr . \"= Entry(root, font = None, width = None, show = '' )\"
        put = s:widget . s:widget_nr . \".grid(row = None, column = None, ipadx = None)\"
        put = s:widget . s:widget_nr . \".focus()\"
        put = s:widget . s:widget_nr . \".insert(0, '')\"
    endwhile
endfu

"pyautogui click
fu Ac(arg)
    let arg_nr = a:arg
    let s:widget_nr = 0
    normal o
    while s:widget_nr < arg_nr
        let  s:widget_nr += 1 
        normal o#auto_click
        normal opyautogui.click(x = 760, y = 649, clicks = 1, button = "left")
    endwhile
endfu

