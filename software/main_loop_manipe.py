import ok
import time
import array as arr

import math
import matplotlib.pyplot as plt
import numpy as np

count = 0
count_data = 0
ligne = 0
i = 0
indice=0
lignes = []
list_array_pipe_out_MSB = []
list_array_pipe_out_LSB = []




#list_pipe_in_array = np.ones(2048).astype(int)

#list_pipe_in = np.linspace(0,511,512).astype(int)
#list_pipe_in_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ,14 ,15 ,16 ,15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,0,-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13 ,-14 ,-15 ,-16 ,-15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1,0])


array_pipe_out = np.ones(1028).astype(int)

#################################################
#list_pipe_in = np.array(ma_liste)
#ma_list = list(mon_tab)
###############################################

#################################### CLASS ######################################

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
        self.xem.SetWireInValue(0x00, 0x80000001)
        self.xem.UpdateWireIns()

    def unResetDES(self):
        self.xem.SetWireInValue(0x00, 0x80000000)
        self.xem.UpdateWireIns()

    def start_capture(self):
        self.xem.SetWireInValue(0x00, 0x80000002)
        self.xem.UpdateWireIns()

    def setwire(self):

        self.xem.SetWireInValue(0x01, level_trig)
        self.xem.UpdateWireIns()

    def setwire_TH_rise(self):

        self.xem.SetWireInValue(0x02, TH_rise)
        self.xem.UpdateWireIns()

    def setwire_TH_fall(self):

        self.xem.SetWireInValue(0x03, TH_fall)
        self.xem.UpdateWireIns()

    def getwire(self,adress_wire_out_science):
        global get
        self.xem.UpdateWireOuts();
        get = self.xem.GetWireOutValue(adress_wire_out_science)

    def setpipein(self,list_pipe_in,adresse):
        self.xem.WriteToPipeIn(adresse, list_pipe_in)

    def getpipeout(self,adresse_pipe_out_read):
        self.xem.ReadFromPipeOut(adresse_pipe_out_read,array_pipe_out)
        return(array_pipe_out)

def tohex(val, nbits):
  return hex((val + (1 << nbits)) % (1 << nbits))


#################################### Main code ######################################

print ("------ DES Encrypt/Decrypt Tester in Python ------")
des = DESTester()
if (False == des.InitializeDevice()):
    exit
print ("------------------------------------------------------------")
time.sleep(1)
################################## RESET #############################################
print ("RESET")
des.ResetDES()
time.sleep(3)

################################## UNRESET #############################################
print ("unRESET")
des.unResetDES()

#################################  LOAD COEF  ###################################################
print ("Coef")
file = open('coef_V2.txt', "r")
lines_coef = file.readlines()
formated_lines_coef = []
for elm in lines_coef :
    formated_lines_coef.append(int(elm[:-1]))##la liste lines a des eleementr ascii dont on supprime\n avec :-1
    #formated_lines.append(elm[:-1])

#print("la liste coef est \n {}".format(formated_lines_coef))
list_pipe_in_array = np.array(formated_lines_coef)
#print("le tableau coef est \n {}".format(list_pipe_in_array))
adresse=0x81  # filter0
des.setpipein(list_pipe_in_array,adresse)

print ("Coef")
file = open('coef_V2_1.txt', "r")
lines_coef_1 = file.readlines()
formated_lines_coef_1 = []
for elm in lines_coef_1 :
    formated_lines_coef_1.append(int(elm[:-1]))##la liste lines a des eleementr ascii dont on supprime\n avec :-1
    #formated_lines.append(elm[:-1])

#print("la liste coef est \n {}".format(formated_lines_coef))
list_pipe_in_array_1 = np.array(formated_lines_coef_1)
#print("le tableau coef est \n {}".format(list_pipe_in_array))
adresse=0x82 # filter1
des.setpipein(list_pipe_in_array_1,adresse)

###################################  SET LEVEL TRIGG  ###############################################
print ("set trigger_level")
#level_trig=0xFFFF8EB8
level_trig=5
level_trig=int(np.uint32(level_trig))
print(level_trig)
des.setwire()

print ("set trigger_TH_rise")
#level_trig=0xFFFF8EB8
TH_rise=1000
TH_rise=int(np.uint32(TH_rise))
print(TH_rise)
des.setwire_TH_rise()

print ("set trigger_TH_fall")
#level_trig=0xFFFF8EB8
TH_fall=1000
TH_fall=int(np.uint32(TH_fall))
print(TH_fall)
des.setwire_TH_fall()


###################################  START CAPTURE  ###############################################
print ("start_capture")
des.start_capture()

#print("le nombre elements dans tableau est {}".format(len(list_pipe_in_array)))

for x in range(10000000):
    for c in range(10):

        print("############## read pointer spectrum filter 0 #####################")
        adress_wire_out_science = 0x21 #filter 0
        #adress_wire_out_science = 0x24 #filter1
        des.getwire(adress_wire_out_science)
        while (get != 1028):
            #print("############################################")
            #print("read pointer spectrum  {}".format(get))
            #print("############################################")
            des.getwire(adress_wire_out_science)
        print("read pointer spectrum filter 0 : {}".format(get))

        print("############## read pointer spectrum filter 1 #####################")
        #adress_wire_out_science = 0x21 #filter 0
        adress_wire_out_science = 0x24 #filter1
        des.getwire(adress_wire_out_science)
        while (get != 1028):
            #print("############################################")
            #print("read pointer spectrum  {}".format(get))
            #print("############################################")
            des.getwire(adress_wire_out_science)
        print("read pointer spectrum filter 1 : {}".format(get))




        print("################################ READ FIFO  Pipe spectrum filter 0 #############################################")
        adresse_pipe_out_read=0xA2         #filter0
        #adresse_pipe_out_read = 0xA4        #filter1
        des.getpipeout(adresse_pipe_out_read)
        #print(array_pipe_out.itemsize)
        #print("print array_pipe_out  {}".format(array_pipe_out))
        list_array_pipe_out = list(array_pipe_out)

        print("################################ HEADER spectrum filter 0 #############################################")
        print("Number Filter and Index Ram Spectrum : {}".format(tohex(list_array_pipe_out[0],32)))
        print(type(list_array_pipe_out[0]))
        print("TIME MSB : {}".format(tohex(list_array_pipe_out[1],32)))
        print("TIME  : {}".format(tohex(list_array_pipe_out[2],32)))
        print("TIME LSB  : {}".format(tohex(list_array_pipe_out[3],32)))

        print("################################ DATA of  spectrum filter 0 #############################################")
        for elm in list_array_pipe_out[4:] :
            #print(type(elm))
            #list_array_pipe_out_MSB.append(int(elm/2**16))
            list_array_pipe_out_MSB.append(np.short((elm & 0xFFFF0000)/2**16))
            #print("address : {}".format(np.short((elm & 0xFFFF0000) / 2 ** 16)))
            list_array_pipe_out_LSB.append(np.short(elm & 0xFFFF))
                #print("energy : {}".format(np.short(elm & 0xFFFF)))
            if (np.short(elm & 0xFFFF)) != 0 :
                print("spectrum",tohex(elm,32))

        print("################################ READ FIFO  Pipe spectrum filter 1 #############################################")
        #adresse_pipe_out_read=0xA2         #filter0
        adresse_pipe_out_read = 0xA4        #filter1
        des.getpipeout(adresse_pipe_out_read)
        #print(array_pipe_out.itemsize)
        #print("print array_pipe_out  {}".format(array_pipe_out))
        list_array_pipe_out_1 = list(array_pipe_out)

        print("################################ HEADER spectrum filter 1 #############################################")
        print("Number Filter and Index Ram Spectrum : {}".format(tohex(list_array_pipe_out_1[0],32)))
        print(type(list_array_pipe_out_1[0]))
        print("TIME MSB : {}".format(tohex(list_array_pipe_out_1[1],32)))
        print("TIME  : {}".format(tohex(list_array_pipe_out_1[2],32)))
        print("TIME LSB  : {}".format(tohex(list_array_pipe_out_1[3],32)))

        ################### SPLITE 32 bit Science from Pipe out spectrum #######################################

        print("################################ DATA of  spectrum filter 1 #############################################")
        for elm in list_array_pipe_out_1[4:] :
            #print(type(elm))
            #list_array_pipe_out_MSB.append(int(elm/2**16))
            list_array_pipe_out_MSB.append(np.short((elm & 0xFFFF0000)/2**16))
            #print("address : {}".format(np.short((elm & 0xFFFF0000) / 2 ** 16)))
            list_array_pipe_out_LSB.append(np.short(elm & 0xFFFF))
                #print("energy : {}".format(np.short(elm & 0xFFFF)))
            if (np.short(elm & 0xFFFF)) != 0 :
                print("spectrum",tohex(elm,32))

        adress_wire_out_science = 0x22
        des.getwire(adress_wire_out_science)

        print("############################################")
        print("read counter pulse filter 0 add=0x22 {}".format(get))
        print("############################################")

        adress_wire_out_science = 0x25
        des.getwire(adress_wire_out_science)

        print("############################################")
        print("read counter pulse filter 1 add=0x25 {}".format(get))
        print("############################################")

print("script done")