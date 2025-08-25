def bonemodel(t, x, para, t_1, t_2, LC, OBa_t0, OCa_t0):
    OBp = x[0]
    OBa = x[1]
    OCa = x[2]
    BV = x[3]

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

    # load cases
    if (t < t_1 ):
        if     (LC==1):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L  = 0 
            I_O  = 0   
            I_P  = 0  
        elif (LC==2):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L  = 0 
            I_O  = 0   
            I_P  = 0  
        elif (LC==3):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==4):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0 
            I_O = 0.0   
            I_P = 0.0  
        elif (LC==5):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==6):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==7):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==8):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==9):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==10):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0 
        elif (LC==0):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L  = 0 
            I_O  = 0   
            I_P  = 0      
    elif (t_1 <= t) & (t <= t_2 ):
        if     (LC==1):
            pd_OBp = 0
            pd_OBa = 1.0e-4
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==2):
            pd_OBp = 0
            pd_OBa = -8.3e-5
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==3):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 1.0e+3  
        elif (LC==4):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 1.0e-4
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==5):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = -2.9e-4
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==6):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 2.0e+5   
            I_P = 0.0e+3  
        elif (LC==7):
            pd_OBp = 1.0e-4
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==8):
            pd_OBp = -1.2e-4
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==9):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 1.0e+4 
            I_O = 0   
            I_P = 0  
        elif (LC==10):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 1.0e+3*(t-20)/(20)
            if (I_P > 1.0e+3):
                I_P = 1.0e+3 
        elif (LC==0):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L  = 0 
            I_O  = 0   
            I_P  = 0     
    else:
        if     (LC==1):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==2):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==3):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==4):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==5):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==6):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0  
        elif (LC==7):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==8):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0.0e+1 
            I_O = 0.0e+2   
            I_P = 0.0e+3  
        elif (LC==9):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 1e4 
            I_O = 9.0e+4   
            I_P = 0 
        elif (LC==10):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L = 0 
            I_O = 0   
            I_P = 0 #1.0e+3*(t-20)/(20) 
        elif (LC==0):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_L  = 0 
            I_O  = 0   
            I_P  = 0 

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

    dOBpdt = D_OBu*TGF_act_OBu - D_OBp*TGF_rep_OBp*OBp 
    dOBadt = D_OBp*TGF_rep_OBp*OBp - A_OBa*OBa  
    dOCadt = D_OCp*RANKL_act_OCp - A_OCa*TGF_act_OCa
    dBVdt = -k_res*(OCa-OCa_t0) + k_form*(OBa-OBa_t0)

    xdot = [dOBpdt, dOBadt, dOCadt,dBVdt]


    return xdot