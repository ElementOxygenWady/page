#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 7.5e
#  in conjunction with Tcl version 8.6
#    May 28, 2022 07:16:49 PM PDT  platform: Linux

import sys
import tkinter as tk
import tkinter.ttk as ttk
from tkinter.constants import *
import os.path

_script = sys.argv[0]
_location = os.path.dirname(_script)

import Autocomplete_support

_bgcolor = '#fffaf0'  # X11 color: '{floral white}'
_fgcolor = '#2208cc'  # Closest X11 color: '{medium blue}'
_compcolor = '#d9d9d9' # X11 color: 'gray85'
_ana1color = '#d9d9d9' # X11 color: 'gray85'
_ana2color = '#ececec' # Closest X11 color: 'gray92'
_tabfg1 = 'black' 
_tabfg2 = 'black' 
_tabbg1 = 'grey75' 
_tabbg2 = 'grey89' 
_bgmode = 'light' 

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''

        top.geometry("354x142+650+150")
        top.minsize(120, 1)
        top.maxsize(3844, 1061)
        top.resizable(1,  1)
        top.title("Autocomplete")
        top.configure(background="#fffaf0")
        top.configure(highlightbackground="wheat")
        top.configure(highlightcolor="black")

        self.top = top
        self.vtxtValue = tk.StringVar()

        self.txtValue = tk.Entry(self.top)
        self.txtValue.place(relx=0.198, rely=0.683, height=26, relwidth=0.746)
        self.txtValue.configure(background="white")
        self.txtValue.configure(disabledforeground="#b6b6b6")
        self.txtValue.configure(font="-family {DejaVu Sans Mono} -size 10")
        self.txtValue.configure(foreground="#2208cc")
        self.txtValue.configure(highlightbackground="wheat")
        self.txtValue.configure(selectbackground="blue")
        self.txtValue.configure(selectforeground="white")
        self.txtValue.configure(textvariable=self.vtxtValue)

        self.btngGetValue = tk.Button(self.top)
        self.btngGetValue.place(relx=0.429, rely=0.465, height=24, width=80)
        self.btngGetValue.configure(activebackground="#ffffcd")
        self.btngGetValue.configure(activeforeground="#2208cc")
        self.btngGetValue.configure(background="#fffaf0")
        self.btngGetValue.configure(command=Autocomplete_support.btnGetValue_Click)
        self.btngGetValue.configure(disabledforeground="#b6b6b6")
        self.btngGetValue.configure(foreground="#2208cc")
        self.btngGetValue.configure(highlightbackground="#fffaf0")
        self.btngGetValue.configure(pady="0")
        self.btngGetValue.configure(text='''Get Value''')

        self.Frame1 = tk.Frame(self.top)
        self.Frame1.place(relx=0.201, rely=0.204, relheight=0.176
                , relwidth=0.734)
        self.Frame1.configure(relief='groove')
        self.Frame1.configure(borderwidth="2")
        self.Frame1.configure(relief="groove")
        self.Frame1.configure(background="#fffaf0")
        self.Frame1.configure(highlightbackground="wheat")

        self.cmbTest = Autocomplete_support.Custom(self.Frame1)
        self.cmbTest.place(relx=0.0, rely=0.0, relheight=1.0, relwidth=1.0)

        self.Label1 = tk.Label(self.top)
        self.Label1.place(relx=0.04, rely=0.211, height=21, width=50)
        self.Label1.configure(activebackground="#f9f9f9")
        self.Label1.configure(background="#fffaf0")
        self.Label1.configure(disabledforeground="#b6b6b6")
        self.Label1.configure(foreground="#2208cc")
        self.Label1.configure(highlightbackground="wheat")
        self.Label1.configure(text='''Payee :''')

        self.Label2 = tk.Label(self.top)
        self.Label2.place(relx=0.014, rely=0.704, height=21, width=65)
        self.Label2.configure(activebackground="#f9f9f9")
        self.Label2.configure(background="#fffaf0")
        self.Label2.configure(disabledforeground="#b6b6b6")
        self.Label2.configure(foreground="#2208cc")
        self.Label2.configure(highlightbackground="wheat")
        self.Label2.configure(text='''Selected :''')

def start_up():
    Autocomplete_support.main()

if __name__ == '__main__':
    Autocomplete_support.main()



