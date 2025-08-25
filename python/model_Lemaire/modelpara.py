import numpy as np

# Define model parameters 

def modelpara():
    num_para = 25
    para_arr = np.zeros(num_para)
    para_arr[0]  = 5.00e-3 # Good     C_s   ... [pM] value of OC to get half differentiation flux  
    para_arr[1]  = 5.00e-2 # Good     f0    ... [--] fixed proportion 
    para_arr[2]  = 7.00e-4 # Good     D_OBu ... [pMday^{-1}] differentiation rate of OB progenitors  
    para_arr[3]  = 7.00e-1 # Good     d_OBp ... [day^{-1}] differentiation rate of responding OB      
    para_arr[4]  = 1.89e-1 # Good     A_OBa ... [] rate of elimination of active OB                   
    para_arr[5]  = 2.10e-3 # Good     D_OCp ... [pMday^{-1}] differentiation of OC precursors
    para_arr[6]  = 7.00e-1 # Good     A_OCa ... [day^{-1}] rate of OC apoptosis caused by TGF-be      
    para_arr[7]  = 0.00e+1 # Good     I_RANKL [0 to 10^-6]
    para_arr[8]  = 0.00e+1 # Good     I_OPG   [0 to 10^-6]
    para_arr[9] = 0.00e+1 # Good     I_PTH   [0 to 10^-6]
    para_arr[10] = 1.00e+1 # Good     K ... RANK receptors
    para_arr[11] = 1.00e-2 # Good     k_1
    para_arr[12] = 1.00e+1 # Good     k_2
    para_arr[13] = 5.80e-4 # Good     k_3 
    para_arr[14] = 1.70e-2 # Good     k_4
    para_arr[15] = 2.00e-2 # Good     k_5 
    para_arr[16] = 3.00e+0 # Good     k_6 
    para_arr[17] = 3.00e+6 # Good     K_LP ... max RANKL  receptors
    para_arr[18] = 3.50e-1 # Good     cl_OPG ... elimination rate of OPG
    para_arr[19] = 2.00e+5 # Good     k_OPG ... Min production rate of OPG
    para_arr[20] = 2.00e+8 #          OPG_max ... max OPG concentration 
    para_arr[21] = 1.00e+3 # Good     r_RANKL  ... RANKL Rate of production and elimination
    para_arr[22] = 2.00e+8 #          RANKL_max 
    para_arr[23] = 86      # Good     k_PTH    Rate of PTH elimination
    para_arr[24] = 250     # Good     S_PTH    Rate Synthesis of systemic PTH
        
    return para_arr