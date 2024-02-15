# -*- coding: utf-8 -*-
"""
Created on Mon Feb 27 11:46:44 2023

@author: gorttner
"""

import numpy as np
import os

##############################################################################################################
def Scintillator_emission (Energie, Event_time, signal_duration, nb_photon_par_eV):
    
    """
    Created on Mon Feb 27 11:46:44 2023
    
    Cette fonction renvoie la table des datatations des photons émis par le scintillateur
    
    Liste des parametres d'entrée :
    
    Energie : Enrgie de l'évenement en eV (float)
    Event_time : Coordonnée temporel ou l'évènement arrive
    signal_duration : Durée d'émission de photon par le scintillateur lors d'une intération avec une particule incidente (float)
    nb_photon_par_eV : Nombre de photon générer par le scintillateur pour une particule incidente de 1 eV (float)
    
    Resultats :
        
    photons_time : table des datatations des photons émis par le scintillateur
        
    @author: gorttner
    """
    
    nb_photon = int(nb_photon_par_eV * Energie)
    photons_time = np.random.random_sample(nb_photon)*signal_duration + Event_time
    
    return photons_time

##############################################################################################################
def Darkcountrate_emission (Dark_countrate, Time_Duration):
    
    """
    Created on Mon Feb 27 11:46:44 2023
    
    Cette fonction renvoie la table des datatations des photons émis par le darkcountrate du SiPM
    
    Liste des parametres d'entrée :
        
    Dark_countrate : Nombre d'évènement sans source d'excitationen Nb de courp / s (float)  
    Time_Duration : Durée de la simulation en s (float)    
    
    Resultats :
    Darkcountrate_time : table des datatations des photons émis par le darkcountrate du SiPM
        
    @author: gorttner
    """
    
    nb_false_event = int(Dark_countrate*Time_Duration)
    Darkcountrate_time = np.random.random_sample(nb_false_event)*Time_Duration
    
    return Darkcountrate_time
##############################################################################################################
def signal_construction (Time, list_pixel_activation_time, Amplitude, To1, To2) :
    
    """
    Created on Mon Feb 27 11:46:44 2023
    
    Cette fonction renvoie le signal induit par les différentes activations de pixel
    
    Liste des parametres d'entrée :
        
    Time : Coordonées en s (array) 
    list_pixel_activation_time : table des datatations de l'activation des pixels'
    Amplitude : Amplitude du signal en V ou en A
    To1 : Constante de temps
    To2 : Constante de temps
        
    
    Resultats :
    signal : Table des amplitudes en fonction du temps
        
    @author: gorttner
    """
    
    def sig_elm (Time, pixel_activation_time, Gain_unitaire, To1, To2) :
        
        result = np.zeros(len(Time))
        # Amplitude_adapt = Gain_unitaire/(To1-To2)
        index = int(pixel_activation_time/(Time[1] - Time[0]))
        result[index+1:] = Gain_unitaire * (np.exp(-(Time[index+1:] - pixel_activation_time)/To1) - np.exp(-(Time[index+1:] - pixel_activation_time)/To2))
        return result
     
    Resultat = np.zeros(len(Time))

    
    for elm in list_pixel_activation_time :
        Resultat = Resultat + sig_elm(Time, elm, Amplitude, To1, To2)

    return Resultat
##############################################################################################################
def Echantilloneur (signal, time_signal, time_ech) :
    
    """
    Created on Mon Feb 28 11:46:44 2023
    
    Cette fonction echantillone un signal donnée en entrée
    
    Liste des parametres d'entrée :
        
    signal : amplitude du signal à echantilloner (tableau)
    time_signal : temps du signal à echantilloner en s (tableau)
    time_ech : temps des échantillons en s (tableau)
    tech : periode d'échantillonnage en s (float)
       
    Resultats:
    ech : le tableau des amplitudes (tableau)
    
    @author: G Orttner
    """
    
    ech = np.zeros(len(time_ech))
    for k in range(len(time_ech)) :
        index_ech = abs(time_signal-time_ech[k]).argmin()
        ech[k] = signal[index_ech]
        
    return ech
##############################################################################################################
def CONV_RAW_ADC (signal, nb_de_bit, amplitude_max) :
    
    """
    Created on Mon Feb 28 11:46:44 2023
    
    Cette fonction echantillone un signal donnée en entrée
    
    Liste des parametres d'entrée :
        
    signal : amplitude du signal à echantilloner (tableau)
    nb_de_bit : Nombre de bit utilisé par l'ADC (int)
    amplitude_max : tension max echantillonnable (float)
       
    Resultats:
    ech_raw : le tableau des amplitudes (tableau)
    
    @author: G Orttner
    """
    
    def conv_unitaire (sig, nb_bit, amp) :
        
        if sig > amp/2 : 
            R = 2**(nb_bit-1) -1
        elif sig < -amp/2 : 
            R = -2**(nb_bit-1)
        else : 
            R = sig * 2**(nb_bit-1) / (amp/2)
        
        return int(R)
    
    ech_raw = [conv_unitaire(elm, nb_de_bit, amplitude_max) for elm in signal]
       
    return ech_raw
    
##############################################################################################################
def Algo_3UTransat (signal_ech, G1, G2, to1, to2, tech, nb_ech, index_init, Cte_S, Cte_X):
    
    """
    Created on Mon Feb 28 11:46:44 2023
    
    Cette algorithme s'applique sur un signal echnatilloné dont le signal d'origine est une impulsion.
    Cela veut dire mathematiquement que le signal est de la forme :   X * (G1 * exp((-t+toffset)/to1) - G2 * exp((-t+toffset)/to2))
    Le but de l'algo est de déterminer X sachant que l'on connait G1 G2 to1 et to2 (caractéristique du schéma electronique)
    
    Liste des parametres d'entrée :
    signal_ech : c'est la liste des échantillons (tableau)
    G1 : gain pour la partie décroissante de l'exponentielle (souvent égale à 1 car inclue dans X) (float)
    G2 : gain pour la partie croissante de l'exponentielle (souvent égale à 1 car inclue dans X) (float)
    to1 : constante de temps de la partie décroissante de l'exponnentielle  en s (float)
    to2 : constante de temps de la partie croissante de l'exponnentielle en s (float)
    tech : periode d'échantillonnage en s (float)
    nb_ech : nombre d'échantillon pour appliquer l'algorithme (exemple 8 ou 16) (int)
    index_init : index du départ de la somme (si les premiers points de la courbe fit mal avec la courbe reél on veut les supprimer) (int)
    Cte_S : facteur multiplicatif pour le calul de la somme pondéré S (float)
    Cte_X : facteur multiplicatif pour le calul de la somme pondéré X (float)
        
    Résultats (classe):
    Signal_algo : le tableau des amplitudes et de temps X trouvée par l'algo lors du balayage du signal (Class Signal)

    @author: G Orttner
    """

    """"""""""""""""""""""""""""""""""""""""""""""""
    """   Table pour les puissance facteur 1/2   """
    """"""""""""""""""""""""""""""""""""""""""""""""
    
    factor_sums = np.ones(nb_ech)
    factor_sumx = np.ones(nb_ech)
    for i in range(len(factor_sumx)):
        factor_sums[i] = Cte_S**(len(factor_sums)-1-i)
        factor_sumx[i] = Cte_X**(len(factor_sumx)-1-i)
    
    
    """"""""""""""""""""""""""""""""""""""""""""""""
    """               Table FPGA                 """
    """"""""""""""""""""""""""""""""""""""""""""""""
    
    if Cte_S == 1 :
        S1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1))/(1-np.exp(-tech/to1))
        S2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2))/(1-np.exp(-tech/to2))
        S3 = nb_ech   
    if Cte_S == 0 :
        S1 = 0
        S2 = 0
        S3 = 0
    if (Cte_S != 1) and (Cte_S != 0) :
        S1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1)*(Cte_S**(nb_ech)))/(1-np.exp(-tech/to1)*Cte_S)
        S2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2)*(Cte_S**(nb_ech)))/(1-np.exp(-tech/to2)*Cte_S)
        S3 = (1-Cte_S**(nb_ech))/(1-Cte_S)
    
    if Cte_X == 1 :
        X1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1))/(1-np.exp(-tech/to1))
        X2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2))/(1-np.exp(-tech/to2))
        X3 = nb_ech 
    if Cte_X == 0 :
        X1 = 0
        X2 = 0
        X3 = 0
    if (Cte_X != 1) and (Cte_X != 0) :
        X1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1)*(Cte_X**(nb_ech)))/(1-np.exp(-tech/to1)*Cte_X)
        X2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2)*(Cte_X**(nb_ech)))/(1-np.exp(-tech/to2)*Cte_X)
        X3 = (1-Cte_X**(nb_ech))/(1-Cte_X)
    

    S0 = X3/(G1*(S1*X3-S3*X1)-G2*(S2*X3-S3*X2))
    X0 = -S3/(G1*(S1*X3-S3*X1)-G2*(S2*X3-S3*X2))
    
    # print("Cst_S = {}".format(Cte_S))
    # print("Cst_x = {}".format(Cte_X))
    # print("S0 = {}".format(S0))
    # print("X0 = {}".format(X0))
    
    """"""""""""""""""""""""""""""""""""""""""""""""
    """  Algo : Calcul des parametres initiaux   """
    """"""""""""""""""""""""""""""""""""""""""""""""   
    
    nb_calcul_algo = int(len(signal_ech)-nb_ech+1)
    algo_result = np.zeros(nb_calcul_algo + nb_ech - 1)
    
    
    for lh in range (nb_calcul_algo):
              
        S = np.sum(signal_ech[lh:lh+nb_ech]*factor_sums)
        X = np.sum(signal_ech[lh:lh+nb_ech]*factor_sumx)
        
        algo_result[lh + nb_ech - 1] = S0*S+X0*X

     
    return algo_result

##############################################################################################################
def Algo_3UTransat_FPGA (signal_ech, nb_ech, Cte_S, Cte_X, Cte_Sp, Cte_Xp, S0, X0):
    
    """
    Created on Mon Feb 28 11:46:44 2023
    
    Cette algorithme s'applique sur un signal echnatilloné dont le signal d'origine est une impulsion.
    Cela veut dire mathematiquement que le signal est de la forme :   X * (G1 * exp((-t+toffset)/to1) - G2 * exp((-t+toffset)/to2))
    Le but de l'algo est de déterminer X sachant que l'on connait G1 G2 to1 et to2 (caractéristique du schéma electronique)
    
    Liste des parametres d'entrée :
    signal_ech : c'est la liste des échantillons (tableau)
    nb_ech : nombre d'échantillon pour appliquer l'algorithme (exemple 8 ou 16) (int)
    Cte_S : facteur multiplicatif pour le calul de la somme pondéré S (float)
    Cte_X : facteur multiplicatif pour le calul de la somme pondéré X (float)
    S0 : facteur multiplicatif pour le calul de la somme pondéré S (float)
    X0 : facteur multiplicatif pour le calul de la somme pondéré X (float)
        
    Résultats (classe):
    Signal_algo : le tableau des amplitudes et de temps X trouvée par l'algo lors du balayage du signal (Class Signal)

    @author: G Orttner
    """
   
    fichier = open("C:/Users/gorttner/Desktop/data.txt", "w") 
    fichier.write("New data;Old data;Sa;Sb;Sc;S;Xa;Xb;Xc;X;R1;R2;Resultat\n")
    """"""""""""""""""""""""""""""""""""""""""""""""
    """  Algo : Calcul des parametres initiaux   """
    """"""""""""""""""""""""""""""""""""""""""""""""   
    
    nb_calcul_algo = int(len(signal_ech)-nb_ech+1)
    algo_result = np.zeros(nb_calcul_algo + nb_ech - 1)
    
    # S=0
    # X=0
    S=0
    X=0
    for lh in range (nb_calcul_algo-1):
        
        # ############################### A faire 2 fois ##################################
        # #                                                                               #
        # #                             4 :  Addition                                     #
        # #              ----------------------------------------------------             #
        # #              |                                                  |             #
        # #              |                                                  |             #
        # #     3 : Multiplication                                          |             #
        # #     ------------------                                          |             #
        # #     |                |                                          |             #
        # #     |                |                                          |             #
        # #     |        2 :  Soustration                                   |             #
        # #     |    ---------------------                                  |             #
        # #     |    |                   |                                  |             #
        # #     |    |                   |                                  |             #
        # #     |    |          1 :  multiplication                         |             #
        # #     |    |          -------------------                         |             #
        # #     |    |          |                 |                         |             #
        # #     |    |          |                 |                         |             #         
        # #    ---   -   -------------   ------------------    --------------------------
        # S = Cte_S*(S - signal_ech[lh]*Cte_S**(nb_ech - 1)) + signal_ech[lh + nb_ech - 0]
        # X = Cte_X*(X - signal_ech[lh]*Cte_X**(nb_ech - 1)) + signal_ech[lh + nb_ech - 0]
        
        Sa = int(signal_ech[lh]*Cte_Sp/(2**10))
        Sb = int(S - Sa)
        Sc = int(Cte_S * Sb/(2**10))
        S = int(Sc + signal_ech[lh + nb_ech - 0])
        
        Xa = int(signal_ech[lh]*Cte_Xp/(2**10))
        Xb = int(X - Xa)
        Xc = int(Cte_X * Xb/(2**10))
        X = int(Xc + signal_ech[lh + nb_ech - 0])
        
        # print ("New data = {} \n old data = {}".format (signal_ech[lh + nb_ech - 0], signal_ech[lh]))
        # print(" Sa = {} \n Sb = {} \n Sc = {} \n S = {} \n".format(Sa, Sb, Sc, S))
        # print(" Xa = {} \n Xb = {} \n Xc = {} \n X = {} \n".format(Xa, Xb, Xc, X))
                
        ############################### A faire 1 fois ##################################
        # algo_result[lh + nb_ech - 0] = S0 * S + X0 * X
        R1 = int(S0 * S/(2**10))
        R2 = int(X0 * X/(2**10))
        algo_result[lh + nb_ech - 0] = int((R1+R2)/2**7)
        
        # print(" R1 = {} \n R2 = {} \n resultat = {} \n".format(R1, R2, algo_result[lh + nb_ech - 0]))
        
        fichier.write("{};{};{};{};{};{};{};{};{};{};{};{};{}\n".format (int(signal_ech[lh + nb_ech - 0]), int(signal_ech[lh]), 
                      Sa, Sb, Sc, S, Xa, Xb, Xc, X, R1, R2, int(algo_result[lh + nb_ech - 0])))


    fichier.close()
    
    return algo_result
##############################################################################################################

##############################################################################################################
def Algo_3UTransat_FPGA_test (signal_ech, nb_ech, Cte_S, Cte_X, Cte_Sp, Cte_Xp, S0, X0):
    
    """
    Created on Mon Feb 28 11:46:44 2023
    
    Cette algorithme s'applique sur un signal echnatilloné dont le signal d'origine est une impulsion.
    Cela veut dire mathematiquement que le signal est de la forme :   X * (G1 * exp((-t+toffset)/to1) - G2 * exp((-t+toffset)/to2))
    Le but de l'algo est de déterminer X sachant que l'on connait G1 G2 to1 et to2 (caractéristique du schéma electronique)
    
    Liste des parametres d'entrée :
    signal_ech : c'est la liste des échantillons (tableau)
    nb_ech : nombre d'échantillon pour appliquer l'algorithme (exemple 8 ou 16) (int)
    Cte_S : facteur multiplicatif pour le calul de la somme pondéré S (float)
    Cte_X : facteur multiplicatif pour le calul de la somme pondéré X (float)
    S0 : facteur multiplicatif pour le calul de la somme pondéré S (float)
    X0 : facteur multiplicatif pour le calul de la somme pondéré X (float)
        
    Résultats (classe):
    Signal_algo : le tableau des amplitudes et de temps X trouvée par l'algo lors du balayage du signal (Class Signal)

    @author: G Orttner
    """
   
    
    """"""""""""""""""""""""""""""""""""""""""""""""
    """  Algo : Calcul des parametres initiaux   """
    """"""""""""""""""""""""""""""""""""""""""""""""   
    
    nb_calcul_algo = int(len(signal_ech)-nb_ech+1)
    algo_result = np.zeros(nb_calcul_algo + nb_ech - 1)
    
    # S=0
    # X=0
    Sbis=0
    Xbis=0
    for lh in range (nb_calcul_algo-1):
        
        # ############################### A faire 2 fois ##################################
        # #                                                                               #
        # #                             4 :  Addition                                     #
        # #              ----------------------------------------------------             #
        # #              |                                                  |             #
        # #              |                                                  |             #
        # #     3 : Multiplication                                          |             #
        # #     ------------------                                          |             #
        # #     |                |                                          |             #
        # #     |                |                                          |             #
        # #     |        2 :  Soustration                                   |             #
        # #     |    ---------------------                                  |             #
        # #     |    |                   |                                  |             #
        # #     |    |                   |                                  |             #
        # #     |    |          1 :  multiplication                         |             #
        # #     |    |          -------------------                         |             #
        # #     |    |          |                 |                         |             #
        # #     |    |          |                 |                         |             #         
        # #    ---   -   -------------   ------------------    --------------------------
        # S = Cte_S*(S - signal_ech[lh]*Cte_S**(nb_ech - 1)) + signal_ech[lh + nb_ech - 0]
        # X = Cte_X*(X - signal_ech[lh]*Cte_X**(nb_ech - 1)) + signal_ech[lh + nb_ech - 0]
        
        Sa = signal_ech[lh]*Cte_Sp
        Sb = (Sbis - Sa)
        Sc = Cte_S * Sb
        Sbis = (Sc + signal_ech[lh + nb_ech - 0])
        
        Xa = signal_ech[lh]*Cte_Xp
        Xb = (Xbis - Xa)
        Xc = Cte_X * Xb
        Xbis = (Xc + signal_ech[lh + nb_ech - 0])
        
        # print ("New data t = {} \n old data t = {}".format (signal_ech[lh + nb_ech - 0], signal_ech[lh]))
        # print(" Sat = {} \n Sbt = {} \n Sct = {} \n Sbist = {} \n".format(Sa, Sb, Sc, Sbis))
        # print(" Xat = {} \n Xbt = {} \n Xct = {} \n Xbist = {} \n".format(Xa, Xb, Xc, Xbis))
        
        ############################### A faire 1 fois ##################################
        # algo_result[lh + nb_ech - 0] = S0 * S + X0 * X
        R1 = S0 * Sbis
        R2 = X0 * Xbis
        algo_result[lh + nb_ech - 0] = (R1+R2)
        
        # print(" R1t = {} \n R2t = {} \n resultat = {} \n".format(R1, R2, algo_result[lh + nb_ech - 0]))
        


     
    return algo_result


##############################################################################################################

def FIR_3U (signal_ech, coef) :
    
    nb_calcul_algo = int(len(signal_ech)-len(coef)+1)
    algo_result = np.zeros(nb_calcul_algo + len(coef) - 1)
    

    for lh in range (nb_calcul_algo-1) :
        
        resultat = np.sum(signal_ech[lh:lh+len(coef)] * coef)
        
        algo_result[lh + len(coef)]  = resultat 
        
    return algo_result

##############################################################################################################

def FIR_3U_RAW (signal_ech, coef, scale) :
    
    nb_calcul_algo = int(len(signal_ech)-len(coef)+1)
    algo_result = np.zeros(nb_calcul_algo + len(coef) - 1)
    
    coef_raw = (coef * (2**15) / (max(abs(coef)))).astype(int)

    for lh in range (nb_calcul_algo-1) :
        
        resultat = int(np.sum(signal_ech[lh:lh+len(coef_raw)] * coef_raw / (scale*2**15)))
        
        algo_result[lh + len(coef_raw)] = resultat 
        
    return algo_result.astype(int)


##############################################################################################################

def FIR_3U_RAW_simple (signal_ech, coef_raw) :
    
    nb_calcul_algo = int(len(signal_ech)-len(coef_raw)+1)
    algo_result = np.zeros(nb_calcul_algo + len(coef_raw) - 1)
    
    for lh in range (nb_calcul_algo-1) :
        
        resultat = int(np.sum(signal_ech[lh:lh+len(coef_raw)] * coef_raw / (2**16)))
        
        algo_result[lh + len(coef_raw)] = resultat 
        
    return algo_result.astype(int)


###############################################################################

def trig (signal, TH_rise, TH_fall) :
    
    resultat = []
    state = "init"
    
    for elm in signal :
        if state == "init" :
            if elm >= TH_rise : 
                state = "event_detecting"
                max_research = int(elm)
            else :
                max_research = 0
                
        elif state == "event_detecting" :
            if elm <= TH_fall : 
                state = "event_detecting_finish"
            else :
                max_research = int(max(max_research, elm))
                
        elif state == "event_detecting_finish" :
            resultat.append(max_research)
            state = "init"
            
        else :
            state = "init"
            print ("Problem occured during trig process")
    
    return resultat
    

###############################################################################

class Signal :
    
    """
    Created on Mon Jan 11 16:41:05 2021
           
    Class Signal :
        amplitude : Tableau des amplitudes du signal détecteur (tableau)
        time : Tableau des temps du signal détecteur (tableau)
    
    @author: G Orttner
    """
    def __init__(self, amplitude, time):
        self.amplitude = amplitude
        self.time = time


def spectre_construct (spectre) :
    
    minr = min(spectre)
    maxr = max(spectre)

    axe_x = np.linspace(minr, maxr, maxr-minr+1)
    Res = np.zeros(len(axe_x))

    for elm in spectre :
        Res[elm-minr] = int(Res[elm-minr]+1)
        
    Spectre_out = Signal(Res, axe_x)    
    
    return Spectre_out

###############################################################################
    
def save_spectre_in_file (Spectre_out, file_name) :

    
    file_path = "C:/Users/gorttner/Desktop/{}.CSV".format(file_name)
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    fichier = open(file_path, "w") 
    fichier.write("{}\n".format(file_name))

    for i in range(len(Spectre_out.time)):

        fichier.write("{};{}\n".format(int(Spectre_out.time[i]),int(Spectre_out.amplitude[i])))

    fichier.close()

    return 

###############################################################################
    
def save_signal_in_file (Signal_out, file_name) :
    
    file_path = "C:/Users/gorttner/Desktop/{}".format(file_name)
    os.makedirs(os.path.dirname(file_path), exist_ok=True)
    fichier = open(file_path, "w") 

    for elm in Signal_out:

        fichier.write("{}\n".format(elm))

    fichier.close()

    return 

##############################################################################################################
def coef_algo (G1, G2, to1, to2, tech, nb_ech, index_init, Cte_S, Cte_X):
    
    """
    Created on Mon Feb 28 11:46:44 2023
    
    Cette algorithme s'applique sur un signal echnatilloné dont le signal d'origine est une impulsion.
    Cela veut dire mathematiquement que le signal est de la forme :   X * (G1 * exp((-t+toffset)/to1) - G2 * exp((-t+toffset)/to2))
    Le but de l'algo est de déterminer X sachant que l'on connait G1 G2 to1 et to2 (caractéristique du schéma electronique)
    
    Liste des parametres d'entrée :
    G1 : gain pour la partie décroissante de l'exponentielle (souvent égale à 1 car inclue dans X) (float)
    G2 : gain pour la partie croissante de l'exponentielle (souvent égale à 1 car inclue dans X) (float)
    to1 : constante de temps de la partie décroissante de l'exponnentielle  en s (float)
    to2 : constante de temps de la partie croissante de l'exponnentielle en s (float)
    tech : periode d'échantillonnage en s (float)
    nb_ech : nombre d'échantillon pour appliquer l'algorithme (exemple 8 ou 16) (int)
    index_init : index du départ de la somme (si les premiers points de la courbe fit mal avec la courbe reél on veut les supprimer) (int)
    Cte_S : facteur multiplicatif pour le calul de la somme pondéré S (float)
    Cte_X : facteur multiplicatif pour le calul de la somme pondéré X (float)
        
    Résultats :
    FIR_ALGO : coef filtre fir

    @author: G Orttner
    """
   
    def puissance (coef, exp) :
        
        return coef**exp
    
    ind = np.linspace(0,nb_ech-1, nb_ech)
      
    
    """"""""""""""""""""""""""""""""""""""""""""""""
    """               Table FPGA                 """
    """"""""""""""""""""""""""""""""""""""""""""""""
    
    if Cte_S == 1 :
        S1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1))/(1-np.exp(-tech/to1))
        S2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2))/(1-np.exp(-tech/to2))
        S3 = nb_ech   
    if Cte_S == 0 :
        S1 = 0
        S2 = 0
        S3 = 0
    if (Cte_S != 1) and (Cte_S != 0) :
        S1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1)*(Cte_S**(nb_ech)))/(1-np.exp(-tech/to1)*Cte_S)
        S2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2)*(Cte_S**(nb_ech)))/(1-np.exp(-tech/to2)*Cte_S)
        S3 = (1-Cte_S**(nb_ech))/(1-Cte_S)
    
    if Cte_X == 1 :
        X1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1))/(1-np.exp(-tech/to1))
        X2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2))/(1-np.exp(-tech/to2))
        X3 = nb_ech 
    if Cte_X == 0 :
        X1 = 0
        X2 = 0
        X3 = 0
    if (Cte_X != 1) and (Cte_X != 0) :
        X1 = np.exp(-index_init*tech/to1)*(1-np.exp(-(nb_ech)*tech/to1)*(Cte_X**(nb_ech)))/(1-np.exp(-tech/to1)*Cte_X)
        X2 = np.exp(-index_init*tech/to2)*(1-np.exp(-(nb_ech)*tech/to2)*(Cte_X**(nb_ech)))/(1-np.exp(-tech/to2)*Cte_X)
        X3 = (1-Cte_X**(nb_ech))/(1-Cte_X)
    

    S0 = X3/(G1*(S1*X3-S3*X1)-G2*(S2*X3-S3*X2))
    X0 = -S3/(G1*(S1*X3-S3*X1)-G2*(S2*X3-S3*X2))
    
    Coef_S = [puissance(Cte_S, int(max(ind)-elm)) for elm in ind]
    Coef_X = [puissance(Cte_X, int(max(ind)-elm)) for elm in ind]

    Coef_S0 = [elm*S0 for elm in Coef_S]
    Coef_X0 = [elm*X0 for elm in Coef_X]

    FIR_ALGO = np.array(Coef_S0) + np.array(Coef_X0)
    
     
    return FIR_ALGO

###############################################################################

def filtre_trapeze (signal, tech, to1, to2, slope, plateau) :
    
    dirac_partiel = signal[0:-1]-signal[1:]*np.exp(tech/to2)
    dirac = dirac_partiel[0:-1]-dirac_partiel[1:]*np.exp(tech/to1)
    
    multi_dirac =  (dirac[0:-(2*slope+plateau)]
                    -dirac[slope:-(slope+plateau)]
                    -dirac[(slope+plateau):-(slope)]
                    +dirac[(2*slope+plateau):])
    
    len_integral_1 = (slope+2)*4
    
    trapeze_1 = np.zeros(len(multi_dirac) - len_integral_1)
    for i in range (len(trapeze_1)):
        trapeze_1[i] = np.sum(multi_dirac[i:i+len_integral_1])
        # trapeze_1[i] = np.sum(multi_dirac[0:i])
    
    len_integral = 2*slope + plateau + 10
    
    trapeze = np.zeros(len(trapeze_1) - len_integral)
    for i in range (len(trapeze)):
        trapeze[i] = np.sum(trapeze_1[0:i])
    
    diff = 20    
    
    trapeze_diff = trapeze[0:-diff] - trapeze[diff:]
    
    return [trapeze_diff,
            trapeze,
            trapeze_1, 
            multi_dirac, 
            dirac,
            dirac_partiel]
###############################################################################

def signed_int_to_hex_16bits (nb_int_16):
    
    # convertion en hexa signé
    if nb_int_16 > 32767 or nb_int_16 < - 32768 :
        result_formated = "ERROR"
    else :
        if nb_int_16 >= 0 :
            result = hex(nb_int_16)
        if nb_int_16 < 0 :
            result = hex(0xFFFF+nb_int_16+1)
        
        if len(result) == 3 :
            result_formated = "000" + result[-1:]
        elif len(result) == 4 :
            result_formated = "00" + result[-2:]
        elif len(result) == 5 :
            result_formated = "0" + result[-3:]
        elif len(result) == 6 :
            result_formated = result[-4:]
        else :
            result_formated = "ERROR"
        
    return result_formated

###############################################################################

def signed_int_to_hex_16bits_opt (nb_int_16):
    
    # convertion en hexa signé
    if nb_int_16 > 32767 or nb_int_16 < - 32768 : result_formated = "ERROR"
    else : result_formated = print("{:04X}".format(np.uint16(nb_int_16)))

        
    return result_formated