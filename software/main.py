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
lignes = []
list_array_pipe_out_MSB = []
list_array_pipe_out_LSB = []

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
adresse=0x81
des.setpipein(list_pipe_in_array,adresse)

###################################  SET LEVEL TRIGG  ###############################################
print ("set trigger_level")
#level_trig=0xFFFF8EB8
level_trig=-20000
level_trig=int(np.uint32(level_trig))
print(level_trig)
des.setwire()


###################################  START CAPTURE  ###############################################
print ("start_capture")
des.start_capture()

#print("le nombre elements dans tableau est {}".format(len(list_pipe_in_array)))

#################################### INJECTION PULSE ##########################################

print ("injection")
file = open('Signal_ADC.txt', "r")
lines = file.readlines()
formated_lines = []
for elm in lines :
	formated_lines.append(int(elm[:-1]))
	#formated_lines.append(elm[:-1])

list_pipe_in_array = np.array(formated_lines)

adresse=0x80
des.setpipein(list_pipe_in_array,adresse)

################################### TEST fifo pipe out read pointer##############################################

des.getwire()
while (get != 512):
	print("############################################")
	print("read pointer  {}".format(get))
	print("############################################")
	des.getwire()

print("############################################")
print("read pointer  {}".format(get))
print("############################################")

################################ READ FIFO  Pipe out ##########################################################

des.getpipeout()
print(array_pipe_out.itemsize)
print(array_pipe_out)
list_array_pipe_out = list(array_pipe_out)


################### SPLITE 32 bit Science from Pipe out ##########################################################

for elm in list_array_pipe_out :
	#list_array_pipe_out_MSB.append(int(elm/2**16))
	list_array_pipe_out_MSB.append(np.short((elm & 0xFFFF0000)/2**16))
	# list_array_pipe_out_LSB.append((int(elm*2**16))/2**16)
	list_array_pipe_out_LSB.append(np.short(elm & 0xFFFF))




#print("list_array_pipe_out_MSB \n {}".format(list_array_pipe_out_MSB))
print("list_array_pipe_out_LSB \n {}".format(list_array_pipe_out_LSB))

##################### WRITE FILE WITH SCIENCE from Pipe out ################################################
file = open("list_array_pipe_out.data", "w")
for items in list_array_pipe_out:
	file.write('%s\n' %items)
file.close()


####################### PLOT ################################
print("Mean of res_twos_complement is ", np.mean(list_array_pipe_out_MSB))
print("min list_array_pipe_out_MSB",min(list_array_pipe_out_MSB))
print("max list_array_pipe_out_MSB",max(list_array_pipe_out_MSB))
print("Mean of res_twos_complement is ", np.mean(list_array_pipe_out_LSB))
print("min list_array_pipe_out_LSB",min(list_array_pipe_out_LSB))
print("max list_array_pipe_out_LSB",max(list_array_pipe_out_LSB))
plt.plot(list_array_pipe_out_MSB)
plt.plot(list_array_pipe_out_LSB)
plt.show()

print("script done")