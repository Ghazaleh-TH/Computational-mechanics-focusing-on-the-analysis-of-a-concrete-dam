%
% Function locons: defines boundary conditions (loads and constraints)
%
function [nCons,dC,nForce,dF,npq,dpq]=locons

 % Load matrix dF: 
 % the i-th row of dF collects: the number of the loaded node; 
 %                                      the force direction; 
 %                                      the force intensity.
 % dF(i,1)=node number;
 % dF(i,2)=loaded direction ("1" along "x", "2" along "y");
 % dF(i,3)=action intensity.

 % dF=[1,1,10000];
 
  dF=[];
  
  [nForce,nn]=size(dF);  % nForce=total number of considered loads

 % Constraint matrix dC: 
 % the i-th row in dC collects: the number of the constrained node; 
 %                                      the direction of the constrained dof; 
 %                                      the magnitude of the imposed displacement.
 % dC(i,1)=node number;
 % dC(i,2)=constrained dof ("1" along "x", "2" along "y");
 % dC(i,3)=magnitude of the imposed displacement.


  dC=[ 1,1,0;
       1,2,0;
      12,1,0;
      12,2,0;
      23,1,0;
      23,2,0];

  [nCons,nn]=size(dC);  % nCons=total number of constrained dofs
  
 % Distributed load matrix dpq: 
 % the i-th row of dpq collects: the number of the loaded element; 
 %                               the uniform load in x direction; 
 %                               the uniform load in y direction.

  dpq=[ 1,0,-.001;
        2,0,-.001;
        3,0,-.001;
        4,0,-.001;
        5,0,-.001;
        6,0,-.001;
        7,0,-.001;
        8,0,-.001;
        9,0,-.001;
       10,0,-.001;
       11,0,-.001;
       12,0,-.001;
       13,0,-.001;
       14,0,-.001;
       15,0,-.001;
       16,0,-.001;
       17,0,-.001;
       18,0,-.001;
       19,0,-.001;
       20,0,-.001];
  
  [npq,nn]=size(dpq);  % npq=total number of considered loads

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
