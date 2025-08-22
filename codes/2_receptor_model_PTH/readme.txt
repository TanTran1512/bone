
03.05.2022, emails von Peter an Denisa und mich

Hi Denisa,
 
Please find below the MATLAB ODE code Dropbox link:
https://www.dropbox.com/sh/te63at7qp5lhrx9/AACz0F-lmIkHuzVzoU7xb1goa?dl=0
The runpthmodelv2.m is the major file that runs the ODE routine “PTHmodelv2”. In this routine the 4 ODEs were reduced to 3 using the constrain condition. In the link that I sent you blow there are also other versions, but there seems to be some small bugs that need to be fixed.
 
Note that the PTH(t) is also entered as a ODE that is trivial to solve for the step function, but might need solving for the full PK model; Alternatively you could first solve for PTH(t) and then add it as an input for the ODE equations. However, I would that solving PTH as part of the ODE is running more stable than having a discontinuous input for the receptors/complex ODEs.  
 
Can you please let me know if it works.
 
Best wishes
 
Peter

-------


Hi Denisa,
 
Please find below the Dropbox link to the latex document:
https://www.dropbox.com/sh/onmprxf8zotudce/AABrd6n3SwEPZ2xXVbgl_Bzha?dl=0
 
We can discuss how we can most efficiently work in this together. I am happy to add references in a Word file particular to the introduction section, in order to set the scene for this work, that you can then add to the bib file.
 
As discussed, adding the section on numerical solution of the ODEs using a PK model and how we numerically integrate the solution to obtain \alpha_R needs adding.
 
Also the results figures need to be improved in quality. Max produced most of the figures in xl, but I think Matlab would look better.
 
Let me know if you can open these files.
 
Best wishes
 
Peter
 