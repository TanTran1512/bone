import numpy as np

# Define model parameters 

def modelpara():
    num_para = 30
    para_arr = np.zeros(num_para)
    para_arr[0]  = 7.000e-4     # D_OBu - [pM/day] differentiation rate of OBu cells
    para_arr[1]  = 5.348e+0     # D_OBp - [pM/day] differentiation rate of OBp cells
    para_arr[2]  = 1.890e-1     # A_OBa - [pM/day] rate of elimination of active OB cells 
    para_arr[3]  = 2.100e-3     # D_OCp - [pM/day] differentiation rate of of OCp cells   
    para_arr[4]  = 7.000e-1     # A_OCa - [pM/day] rate of elimination of active OC cells                 
    para_arr[5]  = 4.545e-3     # K1 - [pM] activation coefficient 
    para_arr[6]  = 1.416e-3     # K2 - [pM] activation coefficient
    para_arr[7]  = 4.545e-3     # K3 - [pM] activation coefficient
    para_arr[8]  = 1.500e+2     # K4 - [pM] activation coefficient
    para_arr[9] =  1.500e+2     # K5 - [pM] activation coefficient
    para_arr[10] = 2.226e-1     # K6 - [pM] activation coefficient
    para_arr[11] = 2.226e-1     # K7 - [pM] activation coefficient
    para_arr[12] = 1.306e+1     # K8 - [pM] activation coefficient
    para_arr[13] = 1.000e+1     # RANK - [pM] fixed RANK concentration
    para_arr[14] = 3.000e+6     # R1 - [-] Maximum no. of RANKL on each cell surface 
    para_arr[15] = 3.000e+6     # R2 - [-] Maximum no. of RANKL on each cell surface 
    para_arr[16] = 1.684e+4     # beta_L - [-] RANKL production rate
    para_arr[17] = 1.013e+1     # D_L - [-] RANKL degradation rate
    para_arr[18] = 3.500e-1     # D_O - [-] OPG degradation rate
    para_arr[19] = 1.464e+8     # beta_O1 minimum OPG production rate
    para_arr[20] = 1.464e+8     # beta_O2 minimum OPG production rate
    para_arr[21] = 2.000e+8     # OPGmax - [pM] maximum OPG concentration
    para_arr[22] = 1.000e-3     # K_A1 - [1/pM] RANKL-OPG binding constant
    para_arr[23] = 3.412e-2     # K_A2 - [1/pM] RANKL-RANK binding constant
    para_arr[24] = 8.600        # D_P - [pM/day] PTH degradation rate
    para_arr[25] = 2.500e+2     # beta_P - [pM/day] PTH sysnthesis rate
    para_arr[26] = 1.000e+0     # D_T - [pM/day] TGF-beta degradation rate
    para_arr[27] = 1.000e-2     # alpha - [-] TGF-beta content stored in bone matrix
    para_arr[28] = 1.000e-2     # k_res - [-] bone resorption parameter
    para_arr[29] = 1.571e-2     # k_form - [-] bone formation parameter
        
    return para_arr