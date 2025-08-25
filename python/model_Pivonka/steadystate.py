def steadystate(vars, para):
    OBp, OBa, OCa= vars

    # read model parameters
    D_OBu = para[0] 
    D_OBp = para[1] 
    A_OBa = para[2] 
    D_OCp = para[3] 
    A_OCa= para[4] 
    K1 = para[5] 
    K2 = para[6] 
    K3 = para[7] 
    K4 = para[8] 
    K5 = para[9] 
    K6 = para[10]
    K7 = para[11]
    K8 = para[12]
    RANK = para[13]
    R1 = para[14]
    R2 = para[15]
    beta_L = para[16]
    D_L = para[17]
    D_O = para[18]
    beta_O1 = para[19]
    beta_O2 = para[20]
    OPGmax = para[21]
    K_A1 = para[22]
    K_A2 = para[23]
    D_P = para[24]
    beta_P = para[25]
    D_T = para[26]
    alpha = para[27]
    k_res = para[28]
    k_form = para[29]

    # initialise load cases
    I_O = 0
    I_P = 0
    I_L = 0

    # TGF-beta activation/repression functions
    TGF = (alpha*k_res*OCa)/D_T
    TGF_act_OBu = TGF/(K1+TGF)
    TGF_rep_OBp = 1/(1+(TGF/K2)) 
    TGF_act_OCa = TGF/(K3+TGF)

    # PTH activation function
    PTH = (beta_P+I_P)/D_P
    PTH_act_OB = PTH/(K4+PTH)
    PTH_rep_OB = 1/(1+(PTH/K7))

    # RANKL actiation function 
    OPG = (beta_O1*OBp+beta_O2*OBa)*PTH_rep_OB+I_O
    OPG = OPG/((((beta_O1*OBp+beta_O2*OBa)*PTH_rep_OB)/OPGmax)+D_O)
    RANKLeff = (R1*OBp+R2*OBa)*PTH_act_OB
    RANKL = (RANKLeff/(1+K_A1*OPG+K_A2*RANK))*((beta_L+I_L)/(beta_L+D_L*RANKLeff))
    RANKL_act_OCp = RANKL/(K8+RANKL)
   
    # Governing Differntial Equation System 
    # cell population dynamics model

    f1 = D_OBu*TGF_act_OBu - D_OBp*TGF_rep_OBp*OBp 
    f2 = D_OBp*TGF_rep_OBp*OBp - A_OBa*OBa  
    f3 = D_OCp*RANKL_act_OCp - A_OCa*TGF_act_OCa


    return [f1, f2, f3]