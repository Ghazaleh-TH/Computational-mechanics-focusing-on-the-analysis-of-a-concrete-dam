%
% Function mecpar: defines mechanical parameters
%
function [dPar]=mecpar

 % Matrix dPar:
 % collects Young's modulus and Poisson's coefficient for the material;
 % dPar=[E, ni]

  dE=200000;
  dni=0;
  dPar=[dE, dni];

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
