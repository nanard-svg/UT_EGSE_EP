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
list_array_pipe_out_MSB_0 = []
list_array_pipe_out_LSB_0 = []


file_names = ['Signal_ADC_20keV.txt','Signal_ADC_100keV.txt','Signal_ADC_200keV.txt','Signal_ADC_400keV.txt','Signal_ADC_600keV.txt','Signal_ADC_800keV.txt','Signal_ADC_1000keV.txt']

#list_pipe_in_array = np.ones(2048).astype(int)

#list_pipe_in = np.linspace(0,511,512).astype(int)
#list_pipe_in_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ,14 ,15 ,16 ,15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,0,-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13 ,-14 ,-15 ,-16 ,-15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1,0])


array_pipe_out = np.ones(512).astype(int)

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
        self.xem.SetWireInValue(0x00, 0x00000001)
        self.xem.UpdateWireIns()

    def unResetDES(self):
        self.xem.SetWireInValue(0x00, 0x00000000)
        self.xem.UpdateWireIns()

    def start_capture(self):
        self.xem.SetWireInValue(0x00, 0x00000002)
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
level_trig= -29000
level_trig=int(np.uint32(level_trig))
print(level_trig)
des.setwire()

print ("set trigger_TH_rise")
#level_trig=0xFFFF8EB8
TH_rise= 200
TH_rise=int(np.uint32(TH_rise))
print(TH_rise)
des.setwire_TH_rise()

print ("set trigger_TH_fall")
#level_trig=0xFFFF8EB8
TH_fall= 200
TH_fall=int(np.uint32(TH_fall))
print(TH_fall)
des.setwire_TH_fall()


###################################  START CAPTURE  ###############################################
print ("start_capture")
des.start_capture()

#print("le nombre elements dans tableau est {}".format(len(list_pipe_in_array)))


for file_name in file_names:
#################################### read file from list name ##########################################
    file_name = open(file_name, "r")
    lines = file_name.readlines()
    formated_lines = []
    for elm in lines:
        formated_lines.append(int(elm[:-1]))
    print("############################################")
    print("file name fichier injecté {}".format(file_name))
    #print("print formated lines {}".format(formated_lines)) #### print liste ONE file
    print("min ", min(formated_lines))
    print("max ", max(formated_lines))
    print("max-min", max(formated_lines)-min(formated_lines))

#################################### write formated_lines to pipe in injection ##########################################
    list_pipe_in_array = np.array(formated_lines)
    #print("list_pipe_in_array{}".format(list_pipe_in_array))
    adresse = 0x80
    des.setpipein(list_pipe_in_array, adresse)

################################### TEST fifo pipe out read pointer FILTER 1 ##############################################
    adress_wire_out_science = 0x23
    des.getwire(adress_wire_out_science)
    while ((get != 1024) ):
        #print("############################################")
        print("read pointer  {}".format(get))
        #print("##############################################")
        des.getwire(adress_wire_out_science)

    print("############################################")
    print("read pointer filter 1 0x23  {}".format(get))
    print("############################################")

################################ READ FIFO  Pipe out raw data science FILTER 1  #############################################
    array_pipe_out = np.ones(get).astype(int)
    adresse_pipe_out_read=0xA3
    des.getpipeout(adresse_pipe_out_read)
    #print(array_pipe_out.itemsize)
    #print("print array_pipe_out  {}".format(array_pipe_out))
    list_array_pipe_out = list(array_pipe_out)

################################### TEST fifo pipe out read pointer FILTER 0 ##############################################
    adress_wire_out_science = 0x20
    des.getwire(adress_wire_out_science)
    while ((get != 1024) ):
        #print("############################################")
        print("read pointer  {}".format(get))
        #print("##############################################")
        des.getwire(adress_wire_out_science)

    print("############################################")
    print("read pointer filter 0 0x20  {}".format(get))
    print("############################################")

################################ READ FIFO  Pipe out raw data science FILTER 0  #############################################
    array_pipe_out = np.ones(get).astype(int)
    adresse_pipe_out_read=0xA1
    des.getpipeout(adresse_pipe_out_read)
    #print(array_pipe_out.itemsize)
    #print("print array_pipe_out  {}".format(array_pipe_out))
    list_array_pipe_out_0 = list(array_pipe_out)


################### SPLITE 32 bit Science from Pipe out ##########################################################

    for elm in list_array_pipe_out :
        #list_array_pipe_out_MSB.append(int(elm/2**16))
        list_array_pipe_out_MSB.append(np.short((elm & 0xFFFF0000)/2**16))
        # list_array_pipe_out_LSB.append((int(elm*2**16))/2**16)
        list_array_pipe_out_LSB.append(np.short(elm & 0xFFFF))

    for elm in list_array_pipe_out_0 :
        #list_array_pipe_out_MSB.append(int(elm/2**16))
        list_array_pipe_out_MSB_0.append(np.short((elm & 0xFFFF0000)/2**16))
        # list_array_pipe_out_LSB.append((int(elm*2**16))/2**16)
        list_array_pipe_out_LSB_0.append(np.short(elm & 0xFFFF))

############################ write "list_array_pipe_out file" in file indice name  ##########################################
    file_name_out = f"{indice}.txt"
    file = open(file_name_out, "w")
    for items in list_array_pipe_out_MSB:
        file.write('%s\n' % items)
    file.close()
    indice+=1

    plt.subplot(211)
    plt.plot(list_array_pipe_out_LSB_0)
    plt.plot(list_array_pipe_out_MSB_0)
    plt.title("Filter 0")
    plt.xlabel("temps")
    plt.ylabel("amplitude")
    plt.subplot(212)
    plt.plot(list_array_pipe_out_LSB)
    plt.plot(list_array_pipe_out_MSB)
    plt.title("Filter 1")
    plt.xlabel("temps")
    plt.ylabel("amplitude")
    plt.show()

print("script done")