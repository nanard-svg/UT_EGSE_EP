import ok
import time
import array as arr

import math
import matplotlib.pyplot as plt
import numpy as np

from tkinter import *

class DESTester:
    def __init__(self):
        return

    def InitializeDevice(self):
        # Open the first device we find.
        self.xem = ok.FrontPanelDevices().Open()
        if not self.xem:
            print ("A device could not be opened.  Is one connected?")
        else:
            print ("A device is opened")

        # Get some general information about the device.
        self.devInfo = ok.okTDeviceInfo()
        if (self.xem.NoError != self.xem.GetDeviceInfo(self.devInfo)):
            print ("Unable to retrieve device information.")
            return(False)
        print("         Product: " + self.devInfo.productName)
        print("Firmware version: %d.%d" % (self.devInfo.deviceMajorVersion, self.devInfo.deviceMinorVersion))
        print("   Serial Number: %s" % self.devInfo.serialNumber)
        print("       Device ID: %s" % self.devInfo.deviceID)

        # Download the configuration file.
        #if (self.xem.NoError != self.xem.ConfigureFPGA("C:\XEM7310-A75-bitfile\Counters.bit")):
            #print ("FPGA configuration failed.")
        #else:
            #print("FPGA configuration done.")


        # Check for FrontPanel support in the FPGA configuration.
        if (False == self.xem.IsFrontPanelEnabled()):
            print ("FrontPanel support is not available.")
        else:
            print("FrontPanel support is available.")
            return(False)

        print ("FrontPanel support is available.")
        return(True)

    def ResetDES(self):
        self.xem.SetWireInValue(0x00, 0x01)
        self.xem.UpdateWireIns()

    def unResetDES(self):
        self.xem.SetWireInValue(0x00, 0x00)
        self.xem.UpdateWireIns()

    def start_capture(self):
        self.xem.SetWireInValue(0x00, 0x02)
        self.xem.UpdateWireIns()

    def setwire(self):

        self.xem.SetWireInValue(0x01, level_trig)
        self.xem.UpdateWireIns()

    def getwire(self):
        global get
        self.xem.UpdateWireOuts();
        get = self.xem.GetWireOutValue(0x20);

    def setpipein(self,list_pipe_in,adresse):
        self.xem.WriteToPipeIn(adresse, list_pipe_in)

    def getpipeout(self):
        self.xem.ReadFromPipeOut(0xA1,array_pipe_out)
        return(array_pipe_out)


def get_entry_l(event) :
    valeur = v.get()
    print(valeur)

def get_entry_l1(event) :
    valeur = v1.get()
    print(valeur)

def Reset_unreset(event) :

    print("RESET")
    des.ResetDES()
    time.sleep(3)
    ################################## UNRESET #############################################
    print("unRESET")
    des.unResetDES()

def InitializeDevice(event) :
    print("------ DES Encrypt/Decrypt Tester in Python ------")

    if (False == des.InitializeDevice()):
        exit
    print("------------------------------------------------------------")


gui = Tk() # nom fenetre principale

l = Label( gui, text = "Level : " )
l.pack( side = LEFT ) # pack l'ojb à gui

v = Entry( gui, bd = 5 )
v.pack( side = RIGHT )  # pack l'ojb à gui

v1 = Entry( gui, bd = 5 )
v1.pack( side = RIGHT )  # pack l'ojb à gui

B = Button(gui,text="Reset_unreset")
B.pack()

B1 = Button(gui,text="InitializeDevice")
B1.pack()

# these lines are showing the
# working of bind function
# it is universal widget method
v.bind('<Return>', get_entry_l)
v1.bind('<Return>', get_entry_l1)
B.bind('<Button-1>', Reset_unreset)
B1.bind('<Button-1>', InitializeDevice)

des = DESTester()

gui.mainloop()