import ok
import time
import array as arr

import math
import matplotlib.pyplot as plt
import numpy as np

indice=0

file_names = ['FIR_20keV.txt', 'FIR_100keV.txt', 'FIR_200keV.txt', 'FIR_400keV.txt', 'FIR_600keV.txt', 'FIR_800keV.txt']

for file_name in file_names:
    #################################### read file from list name ##########################################
    file_name = open(file_name, "r")
    lines = file_name.readlines()
    formated_lines = []
    for elm in lines:
        formated_lines.append(int(elm[:-1]))
    #print(formated_lines)
    print("fichier FIR traité {}", file_name)
    print("max ", max(formated_lines))
    print("min ", min(formated_lines))
    print("max-min",max(formated_lines)-min(formated_lines))

    #################################### write file from indice name  ##########################################
    #file_name_out = f"{indice}.txt"
    #file = open(file_name_out, "w")
    #for items in formated_lines:
    #    file.write('%s\n' % items)
    #file.close()

    #indice+=1
