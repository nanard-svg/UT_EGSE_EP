import matplotlib.pyplot as plt
import numpy as np

file_name = 'FIR_20keV.txt'
file_name_out = '0.txt'

formated_lines_FIR = []
formated_lines_out = []
result_bis = []

# Configuration du plot

fig_spectre = plt.figure("FIR error 3UTransat")

plt.xlabel("data index")
plt.ylabel("Error")
plt.title("FIR error 3UTransat")

#################################### read file from list name ##########################################
file_name = open(file_name, "r")
file_names_out = open(file_name_out, "r")
lines = file_name.readlines()
lines_out = file_names_out.readlines()

for elm in lines:
    formated_lines_FIR.append(int(elm[:-1]))
print(formated_lines_FIR)

for elm in lines_out:
    formated_lines_out.append(int(elm[:-1]))
print(formated_lines_out)

result = [a - b for a, b in zip(formated_lines_FIR, formated_lines_out)]
print(result)


#plt.plot(formated_lines_FIR)
#plt.plot(formated_lines_out)
plt.plot(result[35:])
plt.show()


#for i in range(len(formated_lines_FIR)-2):
#    result_bis[i] =(formated_lines_FIR[i])-(formated_lines_out[i])
#print(result_bis)

