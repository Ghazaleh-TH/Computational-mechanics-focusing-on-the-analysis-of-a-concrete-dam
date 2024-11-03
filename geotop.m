%
% Function geotop: defines geometry and topology data
%
function [nInc,nElements,dXY,nNodes]=geotop

% Matrix of the nodal coordinates dXY:
% the n-th row in dXY collects the nodal coordinates of node i-th 
% dXY(n,:)=[x coordinate of n-th node,  y coordinate of n-th node]

  B=1000;
  dXY=[  0,   0;
         B,   0;
       2*B,   0;
       3*B,   0;
       4*B,   0;
       5*B,   0;
       6*B,   0;
       7*B,   0;
       8*B,   0;
       9*B,   0;
      10*B,   0;
         0,   B;
         B,   B;
       2*B,   B;
       3*B,   B;
       4*B,   B;
       5*B,   B;
       6*B,   B;
       7*B,   B;
       8*B,   B;
       9*B,   B;
      10*B,   B;
         0, 2*B;
         B, 2*B;
       2*B, 2*B;
       3*B, 2*B;
       4*B, 2*B;
       5*B, 2*B;
       6*B, 2*B;
       7*B, 2*B;
       8*B, 2*B;
       9*B, 2*B;
      10*B, 2*B];
  
 %Total number of nodes
  [nNodes,nn]=size(dXY);  

 % Connection matrix nInc
 % the n-th row of nInc contains the node numbers for the n-th finite element (INPUT DATA)
 % and the corresponding dofs (evaluated from the former INPUT)
 % nInc(ne,:)=[n1, n2, n3, n4, n1u, n1v, n2u, n2v, n3u, n3v, n4u, n4v] 

  nInc=[  1,  2, 13, 12;
          2,  3, 14, 13;
          3,  4, 15, 14;
          4,  5, 16, 15;
          5,  6, 17, 16;
          6,  7, 18, 17;
          7,  8, 19, 18;
          8,  9, 20, 19;
          9, 10, 21, 20;
         10, 11, 22, 21;
         12, 13, 24, 23;
         13, 14, 25, 24;
         14, 15, 26, 25;
         15, 16, 27, 26;
         16, 17, 28, 27;
         17, 18, 29, 28;
         18, 19, 30, 29;
         19, 20, 31, 30;
         20, 21, 32, 31;
         21, 22, 33, 32];

  nInc=[nInc,nInc(:,1)*2-1,nInc(:,1)*2,nInc(:,2)*2-1,nInc(:,2)*2,nInc(:,3)*2-1,nInc(:,3)*2,nInc(:,4)*2-1,nInc(:,4)*2];
   
 %Total number of plane elements in the structure
  [nElements,nn]=size(nInc);
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
