function output=reliability_indices(branch, bus)
%[branch,bus]=Bus8();
linedata=branch;
busdata=bus;
st = linedata(:,5);
linedata(st==0,:) =[];
sizl=size(linedata,1);
g=graph(linedata(:,1),linedata(:,2));
plot(g);
 u=0;v=0;U=0;V=0;W=0;
for i=2:size(busdata,1)
 path=shortestpath(g,1,busdata(i,1));
 for y=2:size(path,2)
          r1= path(1,y-1); 
          r2=path(1,y);
           for k2=1:sizl(1,1)
        if r1==linedata(k2,1)&&r2==linedata(k2,2)|| r1==linedata(k2,2)&&r2==linedata(k2,1)
            u=u+linedata(k2,6); 
            v=v+linedata(k2,6)*linedata(k2,7);
              break;
        end
           end   
           if r2==path(1,size(path,2))
              U=U+u*busdata(r2,2);
              V=V+v*busdata(r2,2);
               W=W+v*busdata(r2,3);
              u=0;v=0; 
           end
 end
end
 N1=busdata(:,2);
 N=sum(N1,1);
 SAIFI=U/N;
 SAIDI=V/N;
 CAIDI=V/U;
AENS=W/N;
Output.SAIFI = SAIFI;
Output.SAIDI = SAIDI;
Output.CAIDI = CAIDI;
Output.AENS = AENS;
output=Output
end

 