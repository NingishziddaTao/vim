""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu KivySearch()
" Search for the word kivy it is found add documentation file to buffer.
if search("kivy") == 0
    echo 'kivy not found'
else
    echo 'kivy found'
    badd /py3.7/kivy_py3.7/kivy-doc
    loadview
    "normal gg
endif
endfu
autocmd VimEnter * call KivySearch()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Kivyhelp()
    echo 'KivyName(name) #saves current files as name.py and name.kv'
    echo 'Kivy() #imports basic kivy classes and sets up a basic class'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu KivyName(name)
    "save kv and py file
    "This will write files for android kivy launcher
    execute '%s/\<main\>/' .  a:name . "/g"
    execute 'b! main.py'
    execute 'w! python2.7_projects/' .  a:name . ".py"
    redraw
    sleep 100m
    execute 'b! main.kv'
    execute 'w! python2.7_projects/' .  a:name . ".kv"
    redraw
    sleep 100m
    execute 'b! main.py'
    redraw
    sleep 100m
    normal u
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"import kivy
fu Kivy_box()
"Basic boxlayout
put = 'from kivy.app import App'
put = 'from kivy.uix.boxlayout import BoxLayout'
put = ''
put = 'class box(BoxLayout):'
put = '    def __init__(self, **kwargs):'
put = '        super(box, self).__init__(**kwargs)'
put = '        self.rows = 4'
put = '        self.cols = 4'
put = ''
put = 'class main(App):'
put = '    def build(self):'
put = '        pass'
put = ''
put = 'if __name__ == ''__main__'':'
put = '    main().run()'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Play_sound_kivy()
"Play sound and show sound variables
put = 'from kivy.core.audio import SoundLoader'
put = ''
put = '    #load sound file'
put = '    sound = SoundLoader.load(\"/home/valkyrie/sub_kick_36_B_16bit.wav\")'
put = ''
put = '    if sound:'
put = '        self.sound.play()'
put = '        self.sound.stop()'
put = '        self.sound.volume = 0.4'
put = '        self.sound.play()'
put = '        print(\"Sound found at %s\" % sound.source)'
put = '        print(\"Sound is %.3f seconds\" % sound.length)'
put = '        print(sound.state)'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Filebrowser_kivy()
put = '    browser = FileBrowser(select_string=\"Select\",'
put = '                          favorites=[(user_path, \"Documents\")])'
put = 'from kivy.uix.slider import Slider'
put = ''
put = '    #show results succes or canceled'
put = '    browser.bind('
put = '                on_success=self._fbrowser_success,'
put = '                on_canceled=self._fbrowser_canceled)'
put = '    return browser'
put = ''
put = 'def _fbrowser_canceled(self, instance):'
put = '    print (\"cancelled, Close self.\")'
put = ''
put = 'def _fbrowser_success(self, instance):'
put = '    print (instance.selection)'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Button_kivy()
put = 'from kivy.uix.button import Button'
put = '#button'
put = 'btn1 = Button(text=\"OK\")'
put = 'btn1.bind(on_press=self.buttonClicked)'
put = 'layout.add_widget(btn1)'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Sider_kivy()
put = 'from kivy.uix.slider import Slider'
put = 'self.slider Slider(min=-100, max=100, value=25)'
put = 'self.add_widget(self.slider)'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fu Switch_kivy()
put = 'from kivy.uix.switch import Switch'
put = ''
put = '#switch()'
put = 'self.switch = Switch()'
put = 'self.switch.bind(active=self.function)'
put = 'self.add_widget(self.switch)'
endfu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
