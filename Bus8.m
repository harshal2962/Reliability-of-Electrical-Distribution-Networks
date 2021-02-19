function [branch, bus] = Bus8()
%           Fb  Tb  R   X   st   Lb   r
% branch = [  1   2   0   0   1   0.4   10
%             2   3   0   0   1   0.2   9
%             3   4   0   0   1   0.3   12
%             2   5   0   0   1   0.5   20
%             5   6   0   0   1   0.2   15
%             3   7   0   0   1   0.1   8
%             7   8   0   0   1   0.1   12];
branch = [  1   2   0   0   1   .238 6.932
            2   3   0   0   1   .096 7.948
            3   4   0   0   1   .2   8.136
            2   5   0   0   1   .1862 11.75
            5   6   0   0   1   .1962 11.57
            3   7   0   0   1   .1    8
            7   8   0   0   1   .1    11.33    ];
        


        
        
        % b  nc  Kw     Kvar lb r
  bus=  [ 1  0   0      0   0   0
          2 200 1000    0   0   0
          3 150 700     0   0   0
          4 100 400     0   0   0
          5 150 500     0   0   0
          6 100 300     0   0   0
          7 250 200     0   0   0
          8 50  150     0   0   0];
     
end