clc; clear vars; clear globalvars; clearvars; close all;
dynare KimModTheBuilder console -DIAC=1 -DMSADJ=1 -DUTIL=0 -DHABIT=0 -DCAPUTIL=0 -DINVESTSHOCK=1 -DLABOR=0 -DMONPOL=0 -DVAROBSCOMBINATIONS=3 -DCOMPUTATIONS=1 