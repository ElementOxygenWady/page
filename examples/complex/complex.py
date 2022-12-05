#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 7.5e
#  in conjunction with Tcl version 8.6
#    May 28, 2022 08:33:50 AM PDT  platform: Linux

import sys
import tkinter as tk
import tkinter.ttk as ttk
from tkinter.constants import *
import os.path

_script = sys.argv[0]
_location = os.path.dirname(_script)

import complex_support

_bgcolor = '#f5deb3'  # X11 color: 'wheat'
_fgcolor = '#000000'  # X11 color: 'black'
_compcolor = '#b2c9f4' # Closest X11 color: 'SlateGray2'
_ana1color = '#eaf4b2' # Closest X11 color: '{pale goldenrod}'
_ana2color = '#f4bcb2' # Closest X11 color: 'RosyBrown2'
_tabfg1 = 'black' 
_tabfg2 = 'black' 
_tabbg1 = 'grey75' 
_tabbg2 = 'grey89' 
_bgmode = 'light' 
font12 = "-family {DejaVu Sans Mono} -size 14"

_style_code_ran = 0
def _style_code():
    global _style_code_ran
    if _style_code_ran:
       return
    style = ttk.Style()
    if sys.platform == "win32":
       style.theme_use('winnative')
    style.configure('.',background=_bgcolor)
    style.configure('.',foreground=_fgcolor)
    style.configure('.',font='-family {DejaVu Sans Mono} -size 14')
    style.map('.',background =
       [('selected', _compcolor), ('active',_ana2color)])
    if _bgmode == 'black':
       style.map('.',foreground =
         [('selected', 'white'), ('active','white')])
    else:
       style.map('.',foreground =
         [('selected', 'black'), ('active','black')])
    style.map('TNotebook.Tab', background =
            [('selected', _bgcolor), ('active', _tabbg1),
            ('!active', _tabbg2)], foreground =
            [('selected', _fgcolor), ('active', _tabfg1), ('!active',  _tabfg2)])
    _style_code_ran = 1

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''

        top.geometry("565x513+659+261")
        top.minsize(1, 1)
        top.maxsize(1905, 1050)
        top.resizable(1,  1)
        top.title("Complex Example")
        top.configure(background="#f5deb3")
        top.configure(highlightbackground="#f5deb3")
        top.configure(highlightcolor="black")

        self.top = top

        _style_code()
        self.TPanedwindow1 = ttk.Panedwindow(self.top, orient="vertical")
        self.TPanedwindow1.place(relx=0.053, rely=0.058, relheight=0.799
                , relwidth=0.885)
        self.TPanedwindow1_p1 = ttk.Labelframe(self.TPanedwindow1, height=75
                , text='Pane 1')
        self.TPanedwindow1.add(self.TPanedwindow1_p1, weight=0)
        self.TPanedwindow1_p1.configure(text='''Pane 1''')
        self.TPanedwindow1_p2 = ttk.Labelframe(self.TPanedwindow1, text='Pane 2')

        self.TPanedwindow1.add(self.TPanedwindow1_p2, weight=0)
        self.TPanedwindow1_p2.configure(text='''Pane 2''')
        self.__funcid0 = self.TPanedwindow1.bind('<Map>', self.__adjust_sash0)

        self.TPanedwindow2 = ttk.Panedwindow(self.TPanedwindow1_p2
                , orient="horizontal")
        self.TPanedwindow2.place(relx=0.08, rely=0.091, relheight=0.848
                , relwidth=0.86, bordermode='ignore')
        self.TPanedwindow2_p1 = ttk.Labelframe(self.TPanedwindow2, width=85
                , text='Pane 1')
        self.TPanedwindow2.add(self.TPanedwindow2_p1, weight=0)
        self.TPanedwindow2_p1.configure(text='''Pane 1''')
        self.TPanedwindow2_p2 = ttk.Labelframe(self.TPanedwindow2, text='Pane 2')

        self.TPanedwindow2.add(self.TPanedwindow2_p2, weight=0)
        self.TPanedwindow2_p2.configure(text='''Pane 2''')
        self.__funcid1 = self.TPanedwindow2.bind('<Map>', self.__adjust_sash1)

        self.TNotebook1 = ttk.Notebook(self.TPanedwindow2_p2)
        self.TNotebook1.place(relx=0.059, rely=0.107, relheight=0.829
                , relwidth=0.888, bordermode='ignore')
        self.TNotebook1.configure(takefocus="")
        self.TNotebook1_t0 = tk.Frame(self.TNotebook1)
        self.TNotebook1.add(self.TNotebook1_t0, padding=3)
        self.TNotebook1.tab(0, text='''Page 1''', compound="none"
                ,underline='''-1''', )
        self.TNotebook1_t0.configure(background="#f5deb3")
        self.TNotebook1_t0.configure(highlightbackground="#f5deb3")
        self.TNotebook1_t1 = tk.Frame(self.TNotebook1)
        self.TNotebook1.add(self.TNotebook1_t1, padding=3)
        self.TNotebook1.tab(1, text='''Page 2''', compound="none"
                ,underline='''-1''', )
        self.TNotebook1_t1.configure(background="#f5deb3")
        self.TNotebook1_t1.configure(highlightbackground="#f5deb3")

        self.Label1 = tk.Label(self.TNotebook1_t0)
        self.Label1.place(relx=0.133, rely=0.2, height=27, width=114)
        self.Label1.configure(activebackground="#ffffcd")
        self.Label1.configure(background="#f5deb3")
        self.Label1.configure(disabledforeground="#b8a786")
        self.Label1.configure(font="-family {DejaVu Sans Mono} -size 14")
        self.Label1.configure(highlightbackground="#f5deb3")
        self.Label1.configure(text='''First Page''')

        self.Button2 = tk.Button(self.TNotebook1_t0)
        self.Button2.place(relx=0.367, rely=0.5, height=37, width=72)
        self.Button2.configure(activebackground="#f4bcb2")
        self.Button2.configure(background="#f5deb3")
        self.Button2.configure(command=complex_support.qqq)
        self.Button2.configure(disabledforeground="#b8a786")
        self.Button2.configure(font="-family {DejaVu Sans Mono} -size 14")
        self.Button2.configure(highlightbackground="#f5deb3")
        self.Button2.configure(text='''Redo''')

        self.Message1 = tk.Message(self.TNotebook1_t1)
        self.Message1.place(relx=70.0, rely=60.0, relheight=33.0, relwidth=157.0)

        self.Message1.configure(background="#f5deb3")
        self.Message1.configure(font="-family {DejaVu Sans Mono} -size 14")
        self.Message1.configure(highlightbackground="#f5deb3")
        self.Message1.configure(text='''Second Page''')
        self.Message1.configure(width=157)

        self.TSizegrip1 = ttk.Sizegrip(self.top)
        self.TSizegrip1.place(anchor='se', relx=1.0, rely=1.0)

        self.Button1 = tk.Button(self.top)
        self.Button1.place(relx=0.442, rely=0.897, height=37, width=72)
        self.Button1.configure(activebackground="#f4bcb2")
        self.Button1.configure(background="#f5deb3")
        self.Button1.configure(command=complex_support.quit)
        self.Button1.configure(disabledforeground="#b8a786")
        self.Button1.configure(font="-family {DejaVu Sans Mono} -size 14")
        self.Button1.configure(highlightbackground="#f5deb3")
        self.Button1.configure(text='''Quit''')

    def __adjust_sash0(self, event):
        paned = event.widget
        pos = [75, ]
        i = 0
        for sash in pos:
            paned.sashpos(i, sash)
            i += 1
        paned.unbind('<map>', self.__funcid0)
        del self.__funcid0

    def __adjust_sash1(self, event):
        paned = event.widget
        pos = [85, ]
        i = 0
        for sash in pos:
            paned.sashpos(i, sash)
            i += 1
        paned.unbind('<map>', self.__funcid1)
        del self.__funcid1

def start_up():
    complex_support.main()

if __name__ == '__main__':
    complex_support.main()




