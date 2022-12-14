#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 7.5e
#  in conjunction with Tcl version 8.6
#    May 28, 2022 07:15:47 PM PDT  platform: Linux

import sys
import tkinter as tk
import tkinter.ttk as ttk
from tkinter.constants import *
import os.path

_script = sys.argv[0]
_location = os.path.dirname(_script)

import cal_support

_bgcolor = 'wheat'  # X11 color: #f5deb3
_fgcolor = '#000000'  # X11 color: 'black'
_compcolor = '#b2c9f4' # Closest X11 color: 'SlateGray2'
_ana1color = '#eaf4b2' # Closest X11 color: '{pale goldenrod}'
_ana2color = '#f4bcb2' # Closest X11 color: 'RosyBrown2'
_tabfg1 = 'black' 
_tabfg2 = 'black' 
_tabbg1 = 'grey75' 
_tabbg2 = 'grey89' 
_bgmode = 'light' 

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''

        top.geometry("568x411+833+450")
        top.minsize(1, 1)
        top.maxsize(1905, 1050)
        top.resizable(1,  1)
        top.title("Calendar 2")
        top.configure(background="wheat")
        top.configure(highlightbackground="wheat")
        top.configure(highlightcolor="black")

        self.top = top

        self.Custom1 = cal_support.Custom(self.top)
        self.Custom1.place(relx=0.16, rely=0.219, relheight=0.467, relwidth=0.68)

        self.Button1 = tk.Button(self.top)
        self.Button1.place(relx=0.44, rely=0.803, height=37, width=72)
        self.Button1.configure(activebackground="#f4bcb2")
        self.Button1.configure(background="wheat")
        self.Button1.configure(command=cal_support.quit)
        self.Button1.configure(disabledforeground="#b8a786")
        self.Button1.configure(highlightbackground="wheat")
        self.Button1.configure(text='''Quit''')

def start_up():
    cal_support.main()

if __name__ == '__main__':
    cal_support.main()




