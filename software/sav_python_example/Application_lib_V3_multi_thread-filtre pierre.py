# -*- coding: utf-8 -*-
"""
Created on Fri Aug 18 11:19:53 2023

@author: gorttner
"""

import datetime
import matplotlib.pyplot as plt
import numpy as np
import LIB_3Utransat_V3 as LIB_3U
from multiprocessing import Pool
import time

plt.ion()

#Heure de début
""" récupération de l'heure courante """
datedebut = datetime.datetime.now() 
print ("heure de début : {} \n" .format (datedebut))


nb_point = 10000
nb_process = 20
Energie = 60e3
Taux_de_comptage = 2000
Time_Duration = 1/Taux_de_comptage + 50e-6
tech = 1e-6
Dark_countrate = 1e6*1
Bruit_pp = 40e-3


def simulateur_3UTransat (nb_point, Energie, Time_Duration, tech, Dark_countrate, Bruit_pp) :

    slope = 3
    plateau = 5    
    
    # Time_Duration = 210e-6
    Event_time = Time_Duration *0.5
    
    # Energie = 30e3
    signal_duration = 250e-9
    nb_photon_par_eV = 26.7e-3*35e-2
    
    # Dark_countrate = 1e6*500
    amplitude_par_photon = 464e-15 #Charge en coulomb = q  *gain_SiPM
    
    
    to1_sh= 6.3e-6
    to2_sh= 2.7e-6
    amplitude_sh = 2.8*amplitude_par_photon/680e-12 # (To1_CPA * Toz2_CPA * To2_SH) / (To1_SH * To3_SH * (To1_CPA - To2_SH)) * q * gain_SiPM
    offset = 2.3
    
    scale = 2.3
    
    # tech = 1e-6
    
    nb_ech = 16
    #le minimum trouvé est 41.3009014332639 dB avec comme paramètres d'algo :
        
    
    factor = 1
    conv = 1024
        
    Cte_S = 0.875 * factor
    Cte_X = 0.75 * factor
    S0 = -13.260379275383764 * factor
    X0 = 23.62632696751728 * factor
    
    Cte_S_num = round(Cte_S * conv)
    Cte_X_num = round(Cte_X * conv)
    Cte_Sp_num = round(Cte_S**(nb_ech - 1) * conv)
    Cte_Xp_num = round(Cte_X**(nb_ech - 1) * conv)
    S0_num = round(S0 * conv)
    X0_num = round(X0 * conv)
    
    
    # Filtre Passe haut FIR Blacman : FC obtenue 100 kHz
    
    # coef = np.array([   -0,-0.0003295113365738,-0.001704306111655,-0.005141104596778,
    #     -0.01235546887739,  -0.0259741692367, -0.05029505994394, -0.09457399001656,
    #     -0.1908779505249,  -0.6292140102713,   0.6292140102713,   0.1908779505249,
    #     0.09457399001656,  0.05029505994394,   0.0259741692367,  0.01235546887739,
    #     0.005141104596778, 0.001704306111655,0.0003295113365738,                 0
    # ])
    
    coef = np.array([-7.92095787e-04, -1.05612762e-03, -1.40816995e-03, -1.87755944e-03,
            -2.50341146e-03, -3.33787938e-03, -4.45049998e-03, -5.93398657e-03,
            -7.91195145e-03, -1.05491986e-02, -1.40654380e-02, -1.87535514e-02,
            -2.50038989e-02, -3.33366202e-02, -4.44444574e-02, -5.92492891e-02,
            -7.89762236e-02, -1.05249452e-01, -1.40213336e-01, -1.86678503e-01,
            -2.48281561e-01, -3.29617829e-01, -4.36235006e-01, -5.74205685e-01,
            -7.48599604e-01, -9.59257431e-01, -1.19015191e+00, -1.38376522e+00,
            -1.38078258e+00, -7.79928682e-01,  1.38550025e+00,  7.39111690e+00])
    
    coef_raw = ((coef * (2**16) / (max(abs(coef))))/scale).astype(int)
    
    Time_ech = np.linspace(0, Time_Duration, int(Time_Duration/tech) + 1)
    
    spectre_ALGO = []
    spectre_FIR = []
    spectre_trapeze = []
    Resultat_algo_after_trig = []
    Resultat_FIR_after_trig = []
    Resultat_trapeze_after_trig = []
    spectre_ALGO_after_trig = []
    spectre_FIR_after_trig = []
    spectre_trapeze_after_trig = []
    
    for i in range (nb_point) :
        
        dephasage = np.random.random_sample(1)[0]*tech
    
        # Détermine les coordonnées temporelles d'activation des pixels
        NaI_emis = LIB_3U.Scintillator_emission (Energie, Event_time + dephasage, signal_duration, nb_photon_par_eV)
        DCK_emis = LIB_3U.Darkcountrate_emission (Dark_countrate, Time_Duration)
        
        # Construit les signaux à partir des coordonnées temporelles de l'activation des pixels    
        Signal_echantillone_no_noise = LIB_3U.signal_construction (Time_ech, np.concatenate((NaI_emis), axis=None), amplitude_sh, to1_sh, to2_sh)
        DCK_signal_echantillone = LIB_3U.signal_construction (Time_ech, np.concatenate((DCK_emis), axis=None), amplitude_sh, to1_sh, to2_sh)  
        Signal_echantillone = Signal_echantillone_no_noise + DCK_signal_echantillone + (np.random.random_sample(len(Signal_echantillone_no_noise))-0.5)*Bruit_pp - offset
        
        # Convertit les signaux en Raw Data
        Signal_echantillone_raw = LIB_3U.CONV_RAW_ADC (Signal_echantillone, 16, 5)
        # Signal_echantillone_FIR_raw = LIB_3U.CONV_RAW_ADC (Signal_echantillone, 13, 5)
       
        # Applique le traitement numérique   
        Signal_algo_num_RAW = LIB_3U.Algo_3UTransat_FPGA (Signal_echantillone_raw, nb_ech, Cte_S_num, Cte_X_num, Cte_Sp_num, Cte_Xp_num, S0_num, X0_num)
        # Signal_FIR_num_RAW = LIB_3U.FIR_3U_RAW(Signal_echantillone_raw, coef, scale)
        Signal_FIR_num_RAW = LIB_3U.FIR_3U_RAW_simple(Signal_echantillone_raw, coef_raw)
        Signal_filtre_trap = LIB_3U.filtre_trapeze(np.array(Signal_echantillone_raw), tech, to1_sh, to2_sh, slope, plateau)
       
        # Signal_filtre_trap_raw = int(Signal_filtre_trap[0]/35.57)
        Signal_filtre_trap_raw = np.array([int(elm/35.5) for elm in Signal_filtre_trap[0]])
       
        # Recherche du résultat avec une simple recherche de maximum 
        Resultat_algo = int(max(Signal_algo_num_RAW[int(len(Signal_algo_num_RAW)*1/3):])) 
        Resultat_FIR = int(max(Signal_FIR_num_RAW[int(len(Signal_FIR_num_RAW)*1/3):]))
        Resultat_trapeze = int(max(Signal_filtre_trap_raw[int(len(Signal_filtre_trap_raw)*1/3):]))
        
        # # Recherche du résultat avec l'algo de trig
        Resultat_algo_after_trig = LIB_3U.trig(Signal_algo_num_RAW[50:],100,100)
        Resultat_FIR_after_trig = LIB_3U.trig(Signal_FIR_num_RAW[50:],200,200)
        Resultat_trapeze_after_trig = LIB_3U.trig(Signal_filtre_trap_raw[50:],100,100)
        
        # construit le spectre dans le cas de la recherche simple de maximum
        spectre_ALGO.append(Resultat_algo)
        spectre_FIR.append(Resultat_FIR)
        spectre_trapeze.append(Resultat_trapeze)    
        
        # construit le spectre dans le cas de l'algo de trig'
        spectre_ALGO_after_trig = spectre_ALGO_after_trig + Resultat_algo_after_trig
        spectre_FIR_after_trig = spectre_FIR_after_trig + Resultat_FIR_after_trig
        spectre_trapeze_after_trig = spectre_trapeze_after_trig + Resultat_trapeze_after_trig
        
        print("Occurence = {}   -   Energie (Algo) = {}   -   Energie (FIR) = {}   -   Energie (Trapeze) = {}".format(i, Resultat_algo, Resultat_FIR, Resultat_trapeze))
        
    return [spectre_ALGO, 
            spectre_FIR, 
            spectre_trapeze,
            spectre_ALGO_after_trig, 
            spectre_FIR_after_trig,
            spectre_trapeze_after_trig,
            Time_ech,
            Signal_echantillone_raw,
            Signal_algo_num_RAW,
            Signal_FIR_num_RAW,
            Signal_filtre_trap_raw]
     
def simulateur_3UTransat_simp (nb_point) :
    return simulateur_3UTransat (nb_point, Energie, Time_Duration, tech, Dark_countrate, Bruit_pp)
    

map_vect = np.ones(nb_process).astype(int)*int(nb_point/nb_process)
if __name__ == '__main__':
    
    with Pool(nb_process) as p:
        result = (p.map(simulateur_3UTransat_simp, map_vect))
        

    spectre_ALGO  = []
    spectre_FIR = []
    spectre_trapeze = []
    spectre_ALGO_after_trig = []
    spectre_FIR_after_trig = []
    spectre_trapeze_after_trig = []
    
    fig9b_rt = plt.figure("Spectre FIR temps réel ({:.2f} keV)".format(Energie*1e-3))
    # ax=plt.subplot()
    plt.xlabel("Raw data")
    plt.ylabel("Count number")
    plt.title("Spectre FIR ({:.2f} keV)".format(Energie*1e-3))
        
    for elm in result :
        spectre_ALGO  = spectre_ALGO + elm[0]
        spectre_FIR = spectre_FIR + elm[1]
        spectre_trapeze = spectre_trapeze + elm[2]
        spectre_ALGO_after_trig = spectre_ALGO_after_trig + elm[3]
        spectre_FIR_after_trig = spectre_FIR_after_trig + elm[4]
        spectre_trapeze_after_trig = spectre_trapeze_after_trig + elm[5]
        Time_ech = elm[6]
        Signal_echantillone_raw = elm[7]
        Signal_algo_num_RAW = elm[8]
        Signal_FIR_num_RAW =  elm[9]
        Signal_filtre_trap_raw = elm[10]
        
        spectre_FIR_after_trig_plt_rt = LIB_3U.spectre_construct(spectre_FIR_after_trig)
        plt.bar(spectre_FIR_after_trig_plt_rt.time, spectre_FIR_after_trig_plt_rt.amplitude)
        plt.pause(0.05)
        
        

    Resultat_algo = int(max(Signal_algo_num_RAW[int(len(Signal_algo_num_RAW)*1/3):])) 
    Resultat_FIR = int(max(Signal_FIR_num_RAW[int(len(Signal_FIR_num_RAW)*1/3):]))
    Resultat_trap = int(max(Signal_filtre_trap_raw[int(len(Signal_filtre_trap_raw)*1/3):]))
    
    """"""""""""""""""""""""""""""""""""""""""""""""
    """           Graphe des résultats           """
    """"""""""""""""""""""""""""""""""""""""""""""""
    
    # plt.close('all')
    
    fig6 = plt.figure("Algo num signal raw ({:.2f} keV)".format(Energie*1e-3))
    ax=plt.subplot()
    plt.plot(Time_ech*1e6, Signal_algo_num_RAW, "-bo")
    plt.xlabel("Time in µs")
    plt.ylabel("Amplitude in Raw data")
    plt.title("Algo num ({:.0f} keV)".format(Energie*1e-3))
    
    fig7 = plt.figure("FIR num signal raw ({:.2f} keV)".format(Energie*1e-3))
    ax=plt.subplot()
    plt.plot(Time_ech*1e6, Signal_FIR_num_RAW, "-bo")
    plt.xlabel("Time in µs")
    plt.ylabel("Amplitude in Raw data")
    plt.title("FIR num ({:.0f} keV)".format(Energie*1e-3))
    
    fig7trap = plt.figure("Signal filtre Trapeze ({:.2f} keV)".format(Energie*1e-3))
    ax=plt.subplot()
    plt.plot(Time_ech[len(Time_ech)-len(Signal_filtre_trap_raw):]*1e6, Signal_filtre_trap_raw, "-bo")
    plt.xlabel("Time in µs")
    plt.ylabel("Amplitude in Raw data")
    plt.title("Signal filtre Trapeze  ({:.0f} keV)".format(Energie*1e-3))
    
    fig8 = plt.figure("RAW data ADC ({:.2f} keV)".format(Energie*1e-3))
    ax=plt.subplot()
    plt.plot(Time_ech*1e6, Signal_echantillone_raw, 'b')
    plt.plot(Time_ech*1e6, Signal_echantillone_raw, 'r.')
    plt.xlabel("Time in µs")
    plt.ylabel("RAW data")
    plt.title("RAW data ADC ({:.0f} keV)".format(Energie*1e-3))
    
    
    fig11 = plt.figure("Algo and FIR num signal raw ({:.2f} keV)".format(Energie*1e-3))
    ax=plt.subplot()
    plt.plot(Time_ech*1e6, Signal_algo_num_RAW/Resultat_algo, "-o")
    plt.plot(Time_ech*1e6, Signal_FIR_num_RAW/Resultat_FIR, "-o")
    plt.plot(Time_ech[len(Time_ech)-len(Signal_filtre_trap_raw):]*1e6, Signal_filtre_trap_raw/Resultat_trap, "-o")
    plt.xlabel("Time in µs")
    plt.ylabel("Amplitude in % of the peak")
    plt.title("Algo and FIR % ({:.0f} keV)".format(Energie*1e-3))
    plt.ylim([-1.1,1.1]) #l'axe des ordonnées va de 0 à 0.30
    
    if nb_point > 1 :
        spectre_ALGO_plt = LIB_3U.spectre_construct(spectre_ALGO)
        
        fig8a = plt.figure("Dispersion ALGO ({:.2f} keV)".format(Energie*1e-3))
        ax=plt.subplot()
        plt.bar(spectre_ALGO_plt.time, spectre_ALGO_plt.amplitude)
        plt.xlabel("Raw data")
        plt.ylabel("Count number")
        plt.title("Dispersion ALGO ({:.2f} keV)".format(Energie*1e-3))
        
        spectre_FIR_plt = LIB_3U.spectre_construct(spectre_FIR)
        
        fig9a = plt.figure("Dispersion FIR ({:.2f} keV)".format(Energie*1e-3))
        ax=plt.subplot()
        plt.bar(spectre_FIR_plt.time, spectre_FIR_plt.amplitude)
        plt.xlabel("Raw data")
        plt.ylabel("Count number")
        plt.title("Dispersion FIR ({:.2f} keV)".format(Energie*1e-3))
        
        spectre_TRAP_plt = LIB_3U.spectre_construct(spectre_trapeze)
        
        fig10a = plt.figure("Dispersion Trapeze ({:.2f} keV)".format(Energie*1e-3))
        ax=plt.subplot()
        plt.bar(spectre_TRAP_plt.time, spectre_TRAP_plt.amplitude)
        plt.xlabel("Raw data")
        plt.ylabel("Count number")
        plt.title("Dispersion Filtre trapeze ({:.2f} keV)".format(Energie*1e-3))
        
        spectre_ALGO_after_trig_plt = LIB_3U.spectre_construct(spectre_ALGO_after_trig)
        
        fig8b = plt.figure("Spectre ALGO ({:.2f} keV)".format(Energie*1e-3))
        ax=plt.subplot()
        plt.bar(spectre_ALGO_after_trig_plt.time, spectre_ALGO_after_trig_plt.amplitude)
        plt.xlabel("Raw data")
        plt.ylabel("Count number")
        plt.title("Spectre ALGO ({:.2f} keV)".format(Energie*1e-3))
        
        spectre_FIR_after_trig_plt = LIB_3U.spectre_construct(spectre_FIR_after_trig)
        
        fig9b = plt.figure("Spectre FIR ({:.2f} keV)".format(Energie*1e-3))
        ax=plt.subplot()
        plt.bar(spectre_FIR_after_trig_plt.time, spectre_FIR_after_trig_plt.amplitude)
        plt.xlabel("Raw data")
        plt.ylabel("Count number")
        plt.title("Spectre FIR ({:.2f} keV)".format(Energie*1e-3))
        
        spectre_TRAP_after_trig_plt = LIB_3U.spectre_construct(spectre_trapeze_after_trig)
        
        fig10b = plt.figure("Spectre Filtre Trapeze ({:.2f} keV)".format(Energie*1e-3))
        ax=plt.subplot()
        plt.bar(spectre_TRAP_after_trig_plt.time, spectre_TRAP_after_trig_plt.amplitude)
        plt.xlabel("Raw data")
        plt.ylabel("Count number")
        plt.title("Spectre Filtre Trapeze ({:.2f} keV)".format(Energie*1e-3))
    
    
        LIB_3U.save_spectre_in_file(spectre_ALGO_plt, "Data Algo")
        LIB_3U.save_spectre_in_file(spectre_FIR_plt, "Data FIR")
        LIB_3U.save_spectre_in_file(spectre_TRAP_plt, "Data FIR")


    #Heure de Debut
    print ("\nheure de début : {} " .format (datedebut))
    #Heure de fin
    """ récupération de l'heure courante """
    date = datetime.datetime.now() 
    print ("heure de fin : {} \n" .format (date))