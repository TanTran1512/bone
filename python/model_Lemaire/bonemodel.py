import numpy as np

def bonemodel(t, x, para, t_1, t_2, LC, k_form, k_res, OCa_t0, OBa_t0):
    OBp = x[0]
    OBa = x[1]
    OCa = x[2]
    BV = x[3]

    # read model parameters
    C_s      = para[0]
    f0       = para[1]
    D_OBu    = para[2]
    D_OBp    = para[3]*f0
    A_OBa    = para[4]
    D_OCp    = para[5]
    A_OCa    = para[6]
    I_RANKL  = para[7]
    I_OPG    = para[8]
    I_PTH    = para[9]
    K_RANK   = para[10]
    k_1      = para[11]
    k_2      = para[12]
    k_3      = para[13]
    k_4      = para[14]
    k_5      = para[15]
    k_6      = para[16]
    K_LP     = para[17]
    cl_OPG   = para[18]
    k_OPG    = para[19]
    OPG_max  = para[20]
    r_RANKL  = para[21]
    RANKL_max= para[22]
    k_PTH    = para[23]
    S_P      = para[24]

    # load cases
    if (t < t_1 ):
        if (LC==1):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL = 0 
            I_OPG  = 0   
            I_PTH  = 0  
        elif (LC==2):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL = 0 
            I_OPG  = 0   
            I_PTH  = 0  
        elif (LC==3):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==4):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0 
            I_OPG = 0.0   
            I_PTH = 0.0  
        elif (LC==5):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==6):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==7):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==8):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==9):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==10):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0 
        elif (LC==0):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL = 0 
            I_OPG  = 0   
            I_PTH  = 0      
    elif (t_1 <= t) & (t <= t_2 ):
        if (LC==1):
            pd_OBp = 0
            pd_OBa = 1.0e-4
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==2):
            pd_OBp = 0
            pd_OBa = -8.3e-5
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==3):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 1.0e+3  
        elif (LC==4):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 1.0e-4
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==5):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = -2.9e-4
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==6):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 2.0e+5   
            I_PTH = 0.0e+3  
        elif (LC==7):
            pd_OBp = 1.0e-4
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==8):
            pd_OBp = -1.2e-4
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==9):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 1.0e+4 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==10):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 1.0e+3*(t-20)/(20)
            if (I_PTH > 1.0e+3):
                I_PTH = 1.0e+3 
        elif (LC==0):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL = 0 
            I_OPG  = 0   
            I_PTH  = 0     
    else:
        if     (LC==1):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==2):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==3):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==4):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==5):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==6):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0  
        elif (LC==7):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==8):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0.0e+1 
            I_OPG = 0.0e+2   
            I_PTH = 0.0e+3  
        elif (LC==9):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 1e4 
            I_OPG = 9.0e+4   
            I_PTH = 0 
        elif (LC==10):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL= 0 
            I_OPG = 0   
            I_PTH = 0 #1.0e+3*(t-20)/(20) 
        elif (LC==0):
            pd_OBp = 0
            pd_OBa = 0
            pd_OCa = 0
            I_RANKL = 0 
            I_OPG  = 0   
            I_PTH  = 0 

    # functional values required by
    # main progam below
    P_bar = I_PTH/k_PTH 
    P_tot = (S_P+I_PTH)/k_PTH 
    P_0 = S_P/k_PTH 
    P_s = k_6/k_5 
    pI_PTHTH   = (P_tot)/(P_bar + P_s) 
    pi_TGFbe = (OCa + f0*C_s)/(OCa + C_s) 


    # functional values used to
    # check production/destruction rates
    # assuming quasi steady-states the concentrations of 
    # OPG, RANKL, RANK are proportional to the number of bone cells

    OPG =   (k_OPG*OBp)/(cl_OPG*pI_PTHTH)  #+(I_OPG/cl_OPG)  
    p_OPG = ((k_OPG * OBp) / pI_PTHTH)  #+I_OPG  
    d_OPG = cl_OPG *OPG 
    RANK1 = K_RANK   # constant
    # original
    RANKL = (K_LP*pI_PTHTH* OBa) / (1+k_3/k_4*RANK1+k_1/k_2*OPG) 

    OPG_RANKL = (k_1/k_2) * OPG * RANKL 
    RANKL_RANK = (k_3/k_4) * RANKL * RANK1  
    pd_RANKL = r_RANKL*(1-(RANKL+OPG_RANKL+RANKL_RANK)/(K_LP*pI_PTHTH*OBa))  
    #
    # RANK-RANKL receptor occupancy
    pi_RANK  = k_3/k_4 * (K_LP*pI_PTHTH*OBa)/(1+k_3/k_4 *RANK1 + k_1/k_2/cl_OPG*(k_OPG/pI_PTHTH*OBp+I_OPG))*(1+I_RANKL/r_RANKL)  

    # Governing Differntial Equation System 
    # cell population dynamics model

    dOBpdt = D_OBu*pi_TGFbe - (D_OBp*OBp)/pi_TGFbe  + pd_OBp
    dOBadt = (D_OBp/pi_TGFbe)*OBp - A_OBa*OBa       + pd_OBa
    dOCadt = D_OCp*pi_RANK - A_OCa*pi_TGFbe*OCa   + pd_OCa
    dBVdt = -k_res*(OCa-OCa_t0) + k_form*(OBa-OBa_t0)

    xdot = [dOBpdt, dOBadt, dOCadt,dBVdt]


    return xdot