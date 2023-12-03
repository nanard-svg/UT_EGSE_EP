import ok
import time
import array as arr

import math
import matplotlib.pyplot as plt
import numpy as np

from tkinter import *

def get_entry(event) :
    valeur = v.get()
    print(valeur)

def hello_1(event) :
    print("Reset_unreset Button-1")

def hello_2(event) :
    print("Inject Button-2")


gui = Tk() # nom fenetre principale

l = Label( gui, text = "Level : " )
l.pack( side = LEFT ) # pack l'ojb à gui

v = Entry( gui, bd = 5 )
v.pack( side = RIGHT )  # pack l'ojb à gui

B = Button(gui,text="Reset_unreset")
B.pack()

B1 = Button(gui,text="Inject")
B1.pack()


# these lines are showing the
# working of bind function
# it is universal widget method
gui.bind('<Return>', get_entry)
gui.bind('<Button-1>', hello_1)
gui.bind('<Button-2>', hello_2)


gui.mainloop()

