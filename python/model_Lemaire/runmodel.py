# run BONEREMODELING
#
# runboneremodeling
# orignial Lemaire et al 2004 model 
#
# Peter Pivonka 2006
#
# description of algorithm:
# INPUT: model parameters, load case [LC]
# OUTPUT: bone cell numbers,concentrations of ligands 
#
# 1: Solve for steady-state solution: 
#    use Newton algorithm to compute ss-cell numbers 
#    this depends on model parameters chosen does not depend on load case
# 2: Solve time dependent problem: 
#    use MATLAB ODE solvers to find cell numbers 
#    a particular load case [LC] is chosen which mimics biochemical changes
# 3: Postprocessing:
#    plot cell numbers regualtory functions [Pi] concentration of ligands
#####################################################################
# import necessary libaries
import numpy as np
from scipy.integrate import solve_ivp
from scipy.optimize import fsolve
import matplotlib.pyplot as plt
from modelpara import *
from steadystate import *
from bonemodel import *
# 
#
#-------------------------------------------------------------------#
#                                                                   #
# Parameters used for bone remodeling model                         #
#                                                                   #
#-------------------------------------------------------------------#
# C_s ... [pM] value of OC to get half differentiation flux         #
# A_OCa ... [day^{-1}] rate of OC apoptosis caused by TGF-be        #
# d_OBp ... [day^{-1}] differentiation rate of responding OB        #
# D_OCp ... [pMday^{-1}] differentiation of OC precursors           #
# D_OBu ... [pMday^{-1}] differentiation rate of OB progenitors     #
# f0  ... [--] fixed proportion                                     #
# I_RANKL ... [pMday^{-1}] external injection RANKL                 #
# I_OPG ... [pMday^{-1}] external injection OPG                     #
# I_PTH ... [pMday^{-1}] external injection PTH                     #
# K   ... [pM] fixed concentration of RANK                          #
# k_1 ... [] rate of OPG-RANKL binding                              #
# k_2 ... [] rate of OPG-RANKL unbinding                            #
# k_3 ... [] rate of RANK-RANKL binding                             #
# k_4 ... [] rate of RANK-RANKL unbinding                           #
# k_5 ... [] rate of PTH binding with its receptor                  #
# k_6 ... [] rate of PTH unbinding with its receptor                #
# A_Oba ... [] rate of elimination of active OB                     #
# K_LP... [] max number of RANKL attached on each cell surface      #
# cl_OPG ... [] rate of elimination of OPG                          #
# k_OPG... [] min rate of production of OPG per cell                #
# k_PTH ... [] rate of elimination of PTH                           #
# r_RANKL ... [] rate of RANKL production and elimination           #
# S_PTH ... [] rate of synthesis of systemic PTH                    #
#-------------------------------------------------------------------#

## Defining parameter values
# Time
time_h = 0             #time to reach homeostasis
t_initial = 0
t_end = 140+time_h      # days
t_1 = 20+time_h         # time start of load case  
t_2 = 80+time_h         # time finish of load case
para = modelpara()      # model parameters

## Define Loadcase
# 9 load cases (see paper Lemaire)
LC = 9

## Get steady state solution to obtain intial value guess
cells_0 = [0.7734e-3,0.7282e-3,0.9127e-3]   # inital guess
cells_t0 = fsolve(steadystate, cells_0, args = (para,),xtol=1e-14)
OBp_t0 = cells_t0[0]
OBa_t0 = cells_t0[1]
OCa_t0 = cells_t0[2]
# compute resortpion/formation ratio 
k_form = 0.30; # arbitrary value
k_res  = k_form*OBa_t0/OCa_t0

## Solve global problem
# add new parameters
BV_t0 = 1
x_t0 = [OBp_t0, OBa_t0, OCa_t0, BV_t0]
t_eval = np.linspace(0, t_end, t_end+1)
sol = solve_ivp(bonemodel, t_span=(0, t_end), y0= x_t0, 
                args = (para, t_1, t_2, LC, k_form, k_res, OCa_t0, OBa_t0), 
                t_eval = t_eval, method = "RK45", rtol = 1e-6, atol= 1e-6)

## Plot cell population over time
# Plot results
fig, ax1 = plt.subplots()
ax2 = ax1.twinx()
line1, = ax1.plot(sol.t, sol.y[0], label="OBp", color = 'r')
line2, = ax1.plot(sol.t, sol.y[1], label="OBa", color = 'b')
line3, = ax1.plot(sol.t, sol.y[2], label="OCa", color = 'g')
ax1.set_xlabel("t [days]")
ax1.set_ylabel("population [pM]")
line4, = ax2.plot(sol.t, sol.y[3], label='BV', color = 'black', linestyle='--')
ax2.set_ylabel('BV/TV[%]')
# combine legends
lines = [line1, line2, line3, line4]
labels = [l.get_label() for l in lines]
ax1.legend(lines, labels, loc="best")
plt.show()
