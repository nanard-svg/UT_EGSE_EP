import ok
import time
import array as arr

import math
import matplotlib.pyplot as plt
import numpy as np

count = 0
count_data = 0

#list_pipe_in = np.linspace(0,511,512).astype(int)
list_pipe_in = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ,14 ,15 ,16 ,15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1,0])
array_pipe_out = np.ones(2048).astype(int)

#################################################
#list_pipe_in = np.array(ma_liste)
#ma_list = list(mon_tab)
###############################################

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

		self.xem.SetWireInValue(0x01, count_data)
		self.xem.UpdateWireIns()

	def getwire(self):
		self.xem.UpdateWireOuts();
		get=self.xem.GetWireOutValue(0x20);
		return(get)

	def setpipein(self,list_pipe_in,adresse):
		self.xem.WriteToPipeIn(adresse, list_pipe_in)

	def getpipeout(self):
		self.xem.ReadFromPipeOut(0xA1,array_pipe_out)
		return(array_pipe_out)




# Main code
print ("------ DES Encrypt/Decrypt Tester in Python ------")
des = DESTester()
if (False == des.InitializeDevice()):
	exit
print ("------------------------------------------------------------")
time.sleep(1)
print ("RESET")
des.ResetDES()
time.sleep(3)
print ("unRESET")
des.unResetDES()
print ("set trigger_level")
count_data=15
des.setwire()
print ("start_capture")
des.start_capture()
print ("injection")
adresse=0x80
des.setpipein(list_pipe_in,adresse)
print ("read pipe out")
#time.sleep(0.1)
des.getpipeout()
print(array_pipe_out.itemsize)
print(array_pipe_out)
list_array_pipe_out = list(array_pipe_out)

print("inject_coef")
adresse=0x81
des.setpipein(list_pipe_in,adresse)



print("Mean of res_twos_complement is ", np.mean(list_array_pipe_out))
print("min",min(list_array_pipe_out))
print("max",max(list_array_pipe_out))
plt.plot(list_array_pipe_out)
plt.show()

print("script done")