
" Comment
vmap 3 _)
vmap 33 <return>#<return>zf-
nmap <leader>3 _i<space><backspace>#<return>
nmap <leader>33 _v)<cr>#<cr>v)zf
nmap <leader>22 0zov-x

noremap <F3> :call GodotHelp()<cr>
noremap <F4> :w!<bar>!godot -v -d --fullscreen<cr> 
noremap <silent><F5> :w!<cr>:call Godot()<cr>
noremap <F6> :w!<bar>!godot --script %<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Godot()
    """ Will turn psaces to tabs, go to godot workspace and run the game 
    "exe /"retab"
python3 << EOF

import vim
from pyautogui import hotkey
from time import sleep

hotkey("alt", "2")
sleep(0.5)
hotkey("F5")
EOF
endfunction


""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
function GodotHelp()
py3 << EOF

import vim
#import pyperclip
import pyautogui
from pyautogui import hotkey
from time import sleep

pyautogui.PAUSE = 0.5
hotkey("shift", "ctrl", "c")
hotkey("alt", "2")
hotkey("F4")
hotkey("ctrl", "v")
hotkey("enter")
EOF
endfunction

""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
fu Control()
	put = 'func _input(event: InputEvent) -> void:'
	put = '    if event is InputEventKey and event.scancode == KEY_Q:'
	put = '        get_tree().quit()'
endfu
nmap 'co :call Control()<CR>

""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
fu Wide()
    execute '!less ~/GodotEngineProjects/widescreen >> project.godot'
    execute '!less ~/GodotEngineProjects/widescreen'
endfu
nmap 'wi :call Wide()<cr>

""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
fu Timer()
    normal oyield(get_tree().create_timer(1), "timeout")
    normal F1
endfu
nmap 'yt :call Timer()<CR>

""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
fu YieldTween()
    normal oyield(t, "tween_completed")
    normal F1
endfu
nmap 'yw :call YieldTween()<CR>
""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
fu Animation()
    normal oyield(get_node("anim"), "animation_finished")
    normal F1
endfu
nmap 'ya :call Animation()<CR>

""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""
fu Tween()
put = '    var tween = Tween.new(); add_child(tween)'
put = ''
put = '    tween.interpolate_property(node, \"property\", # node, property'
put = '                              rand_vec, Vector2(0,0), # start, end '
put = '                              4.0, # time'
put = '                              Tween.TRANS_QUAD, '
put = '                              Tween.EASE_IN, '
put = '                              0) # delay'
put = '    tween.start()'
endfu
nmap 'tw :call Tween()<CR>

""""""""""""""""""""""""""""" GODOT """"""""""""""""""""""""""""""""""""""""""""""""""""



