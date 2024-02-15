import math
import matplotlib.pyplot as plt

enable_LUT_print = 1

# ------------------------------------------------------------------------------------------------ #
# Cosine and interpolation gain generator for VHDL LUT-ROM
# ------------------------------------------------------------------------------------------------ #
print("# Cosine and interpolation gain generator for VHDL LUT-ROM #")

# Constants
size_address = 10
N_address_max = 2 ** size_address
size_cosinus = 18
N_cosinus_max = 2 ** size_cosinus
size_gain = 11
N_Gain_max = 2 ** size_gain
resolution = (2 * math.pi) / N_address_max

print("Nbr_Address:\t\t", N_address_max)
print("Cosinus Half-Scale:\t +/-", int(N_cosinus_max / 2))
print("Gain Half-Scale:\t +/-", int(N_Gain_max / 2))
print("Resolution:\t\t\t", resolution, "rad\n")

cos_beta_i_list = []
N_cos_beta_i_list = []
N_Ki_list = []
for i in range(0, N_address_max, 1):  # Change step to display all
    # Float numbers:
    cos_beta_i = math.cos(i * resolution)
    cos_beta_i_plus_1 = math.cos((i + 1) * resolution)

    # Decimal numbers: (use ceil rounding for better accuracy)
    N_cos_beta_i = math.ceil(cos_beta_i * (N_cosinus_max / 2 - 1))
    N_cos_beta_i_plus_1 = math.ceil(cos_beta_i_plus_1 * (N_cosinus_max / 2 - 1))
    N_Ki = N_cos_beta_i_plus_1 - N_cos_beta_i  # N_beta_i_plus_1 - N_beta_i = 1

    # Save data in lists for post-treatment:
    cos_beta_i_list.append(cos_beta_i)
    N_cos_beta_i_list.append(N_cos_beta_i)
    N_Ki_list.append(N_Ki)

    # Binary numbers:
    # (1 << Size) &, to add the required number of bits, covers both positive and negative cases
    Nbin_cos_beta_i = '{:018b}'.format(((1 << size_cosinus) - 1) & N_cos_beta_i)
    Nbin_Ki = '{:011b}'.format(((1 << size_gain) - 1) & N_Ki)

    # debug:
    # print('{:04d}'.format(i),Nbin_cos_beta_i,"\t",'{:07d}'.format(int(N_cos_beta_i)),"\t",'{:05d}'.format(int(N_Ki)),"\t",Nbin_Ki)
    # print(bin(cos_beta_i_list[i]), bin(Ki_list[i]))

    # Print to export in VHDL (3 spaces needed before tab)
    if enable_LUT_print:
        print(str(i) + "   \t=> \"" + str(Nbin_cos_beta_i) + "\" & \"" + str(Nbin_Ki) + "\",")

print("Ki", N_Ki_list)

# ------------------------------------------------------------------------------------------------ #
# Verifications with one increment value
# ------------------------------------------------------------------------------------------------ #

size_inc = 15
N_size_inc = 2 ** size_inc
resolution_inc = (2 * math.pi) / N_size_inc
nbr_LSB = size_inc - size_address

# inc must be < 2**15 = 32768
inc = 1270

beta_i = inc >> nbr_LSB  # [10] beta_i = address ROM, 10 MSB of inc
N_product = (inc - (beta_i << nbr_LSB)) * N_Ki_list[beta_i]  # [5+11] interpolation = (beta - beta_i)*Ki
N_cos_beta = N_cos_beta_i_list[beta_i] + (N_product >> nbr_LSB)  # cos(beta_i) + interpolation [11MSB]
cos_beta = N_cos_beta / (N_cosinus_max / 2 - 1)
N_cos_beta_real = math.trunc(math.cos(inc * resolution_inc) * (N_cosinus_max / 2 - 1))  # real cosinus without interpolation

print("\nVerifications: 1 sample")
print("inc:\t", bin(inc), "=", inc)
print("address:", bin(beta_i), "=", beta_i)
print("delta:\t", bin(inc - (beta_i << nbr_LSB)), "=", inc - (beta_i << nbr_LSB))
print("Ki:\t", N_Ki_list[beta_i])
print("Product:", N_product, N_product >> nbr_LSB)

print("\nN_cos_beta_i | real | i+1:", N_cos_beta_i_list[beta_i], N_cos_beta_real, N_cos_beta_i_list[beta_i + 1])
print("cos_beta_i | real | i+1:", cos_beta_i_list[beta_i], math.cos(inc * resolution_inc), cos_beta_i_list[beta_i + 1])
print("\nN_cos_beta:", N_cos_beta, "\tcos_beta:", cos_beta)
print("Difference x10e6:\t", (cos_beta - math.cos(inc * resolution_inc)) * 1000000, "\n")

# ------------------------------------------------------------------------------------------------ #
# Plot all values
# ------------------------------------------------------------------------------------------------ #

N_cos_beta_inc_list = []
N_cos_beta_interp_list = []
N_cos_beta_real_list = []

for inc in range(N_size_inc):
    address = inc >> nbr_LSB  # [10] beta_i = address ROM, 10 MSB of inc, remove 5 LSB
    N_product = (inc - (address << nbr_LSB)) * N_Ki_list[address]  # [5+11] interpolation = (beta - beta_i)*Ki
    N_cos_beta_interp = N_cos_beta_i_list[address] + (N_product >> nbr_LSB)  # cos(beta_i) + interpolation [11MSB]
    N_cos_beta_real = math.trunc(math.cos(inc * resolution_inc) * (N_cosinus_max / 2 - 1))  # real cosinus without interpolation

    N_cos_beta_inc_list.append(N_cos_beta_i_list[address])
    N_cos_beta_interp_list.append(N_cos_beta_interp)
    N_cos_beta_real_list.append(N_cos_beta_real)

address = range(0, N_address_max, 1)
inc = range(0, N_size_inc, 1)

plt.figure()
plt.subplot(221)
plt.plot(address, N_cos_beta_i_list, 'b-')
plt.grid(True)
plt.axis([0, N_address_max, -135000, 135000])
plt.title("Cosinus LUT")
plt.xlabel("LUT address [10bit]")
plt.ylabel("N_Cosinus [18bit]")

plt.subplot(223)
plt.plot(address, N_Ki_list, 'm-')
plt.grid(True)
plt.axis([0, N_address_max, -1050, 1050])
plt.title("Gain interpolation")
plt.xlabel("LUT address [10bit]")
plt.ylabel("N_Gain [11bit]")

plt.subplot(222)
plt.plot(inc, N_cos_beta_inc_list, 'b-', label="N_Cos_Beta_LUT")
plt.plot(inc, N_cos_beta_interp_list, 'r', label="N_Cos_Beta_interp")
plt.plot(inc, N_cos_beta_real_list, 'k', label="N_Cos_Beta_real")
plt.grid(True)
plt.axis([0, N_size_inc, -135000, 135000])
plt.title("Cosinus comparison")
plt.xlabel("Increment [15bit]")
plt.ylabel("N_Cosinus [18bit]")
plt.legend()

diff_LUT = [N_cos_beta_inc_list - N_cos_beta_real_list
            for N_cos_beta_inc_list, N_cos_beta_real_list in zip(N_cos_beta_inc_list, N_cos_beta_real_list)]
diff_interp = [N_cos_beta_interp_list - N_cos_beta_real_list
               for N_cos_beta_interp_list, N_cos_beta_real_list in zip(N_cos_beta_interp_list, N_cos_beta_real_list)]

print("max/min for diff in LUT:\t", max(diff_LUT), min(diff_LUT))
print("max/min for diff in interp:\t", max(diff_interp), min(diff_interp))

plt.subplot(224)
plt.plot(inc, diff_LUT, 'b-', label="diff_LUT")
plt.plot(inc, diff_interp, 'r-', label="diff_interp")
plt.grid(True)
plt.axis([0, N_size_inc, -1000, 1000])
plt.title("Interpolation error")
plt.xlabel("Increment [15bit]")
plt.ylabel("Difference")
plt.legend()

figManager = plt.get_current_fig_manager()
figManager.window.showMaximized()
plt.show()
