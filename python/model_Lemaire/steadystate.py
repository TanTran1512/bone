def steadystate(vars, para):
    OBp, OBa, OCa = vars

    # read model parameters
    C_s =      para[0]
    f0  =      para[1]
    D_OBu =    para[2]*f0
    d_OBp =    para[3] #had a multiplier of f0
    A_OBa =    para[4]
    D_OCp =    para[5]
    A_OCa =    para[6]
    I_RANKL =  para[7]
    I_OPG =    para[8]
    I_PTH =    para[9]
    K   =      para[10] 
    k_1 =      para[11]
    k_2 =      para[12]
    k_3 =      para[13]
    k_4 =      para[14]
    k_5 =      para[15]
    k_6 =      para[16]
    K_LP =     para[17]
    cl_OPG =   para[18]
    k_OPG =    para[19]
    OPG_max =  para[20]
    r_RANKL =  para[21]
    RANKL_max =para[22]
    k_PTH =    para[23] # k_form
    S_PTH =    para[24] # k_res

    # initialise load cases
    pd_OBp = 0
    pd_OBa = 0
    pd_OCa = 0

    # Compute PTH concentration
    PTH_bar = I_PTH/k_PTH
    PTH_tot = (S_PTH+I_PTH)/k_PTH
    PTH_s =  k_6/k_5

    # compute activator/repressor functions
    pi_PTH_act = (PTH_tot)/(PTH_s + PTH_bar)
    pi_PTH_rep = 1/pi_PTH_act

    pi_TGFbe_act = (OCa + f0*C_s)/(OCa + C_s)
    pi_TGFbe_rep = 1/pi_TGFbe_act
    RANK1 = K 

    OBp = (D_OBu/d_OBp)*pi_TGFbe_act**2
    OBa = (D_OBu/A_OBa)*pi_TGFbe_act

    # functional values used to check production/destruction rates
    # assuming quasi steady-states the concentrations of OPG, RANKL, RANK are proportional to the number of bone cells
    # general OPG function includes Lemaire's version as special case 
    OPG = ((k_OPG*OBp)/(pi_PTH_act*cl_OPG)) + I_OPG/cl_OPG 
    p_OPG = (k_OPG * OBp)*pi_PTH_rep + I_OPG 
    d_OPG = cl_OPG *OPG
    # constant

    RANKL = ((K_LP*OBa)*pi_PTH_act / (1+((k_3/k_4)*RANK1)+((k_1/k_2)*OPG)))*(1+(I_RANKL/r_RANKL))
    OPG_RANKL = k_1/k_2 * OPG * RANKL
    RANKL_RANK = k_3/k_4 * RANKL * RANK1 
    pd_RANKL = r_RANKL*(1-(RANKL+OPG_RANKL+RANKL_RANK)/((K_LP*OBa)*pi_PTH_act))+I_RANKL

    pi_RANK_act = RANKL_RANK/RANK1 

    # Governing Differntial Equation System 
    # cell population dynamics model

    f1 = D_OBu*pi_TGFbe_act - d_OBp*OBp*pi_TGFbe_rep  + pd_OBp
    f2 = d_OBp*OBp*pi_TGFbe_rep - A_OBa*OBa           + pd_OBa
    f3 = D_OCp*pi_RANK_act - A_OCa*OCa*pi_TGFbe_act   + pd_OCa


    return [f1, f2, f3]