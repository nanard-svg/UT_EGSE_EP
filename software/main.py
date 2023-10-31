import ok
import time
import array as arr
import numpy as np

count = 0
count_data = 0
#list_pipe_in = arr.array('l',[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31])



list_pipe_in = np.linspace(0,511,512).astype(int)
list_pipe_in_inv = np.linspace(511,0,512).astype(int)
flip_flop=0
list_pipe_out = np.ones(512).astype(int)

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
		self.xem.ReadFromPipeOut(0xA1,list_pipe_out)
		return(list_pipe_out)




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
time.sleep(1)
while count_data < 10 :
	count_data=count_data+1

	# write wire in
	des.setwire()
	# waiting time
	time.sleep(0.003)

	#read wire out
	get=des.getwire()
	print("valeur lue sur le wire out:%s"%(get))

time.sleep(1)

count_data = 0
#print pipe in
while count_data < 1000 :
	count_data = count_data + 1
	adresse=0x80

	if flip_flop == 0 :

		des.setpipein(list_pipe_in,adresse)
		print(list_pipe_in.itemsize)
		print(len(list_pipe_in))
		flip_flop=1
	else :
		des.setpipein(list_pipe_in_inv,adresse)
		print(list_pipe_in.itemsize)
		print(len(list_pipe_in))
		flip_flop=0

	# print pipe out
	#time.sleep(0.1)
	des.getpipeout()
	print(list_pipe_out.itemsize)
	print(len(list_pipe_out))
	print(list_pipe_out)

adresse=0x81
des.setpipein(list_pipe_in,adresse)
time.sleep(5)
des.setpipein(list_pipe_in_inv,adresse)


print("script done")