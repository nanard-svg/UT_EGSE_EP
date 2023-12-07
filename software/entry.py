import ok
import time
import array as arr

import math
import matplotlib.pyplot as plt
import numpy as np

from tkinter import *

def get_entry_l(event) :
    valeur = v.get()
    print(valeur)

def get_entry_l1(event) :
    valeur = v1.get()
    print(valeur)

def Reset_unreset(event) :
    print("Reset_unreset Button-1")

def Inject(event) :
    print("Inject Button-2")


gui = Tk() # nom fenetre principale

l = Label( gui, text = "Level : " )
l.pack( side = LEFT ) # pack l'ojb à gui

v = Entry( gui, bd = 5 )
v.pack( side = RIGHT )  # pack l'ojb à gui

v1 = Entry( gui, bd = 5 )
v1.pack( side = RIGHT )  # pack l'ojb à gui

B = Button(gui,text="Reset_unreset")
B.pack()

B1 = Button(gui,text="Inject")
B1.pack()


# these lines are showing the
# working of bind function
# it is universal widget method
v.bind('<Return>', get_entry_l)
v1.bind('<Return>', get_entry_l1)
B.bind('<Button-1>', Reset_unreset)
B1.bind('<Button-1>', Inject)



gui.mainloop()