function output1 = my_cost(in0,in1,in2,in3)
it=in0;
psaifi=1000;psaidi=1000;pcaidi=1000;paens=1000; %penalty values
saifid=.5;saidid=4;caidid=8;aensd=10;   %threshold values
J=0;                              %costfunction
totmin = in1; totmax = in2; position = in3;
minz=totmin(1,1:size(totmin,2)/2);
minr=totmin(1,(size(position,2))/2+1 : size(position,2));
maxz=totmax(1,1:size(totmin,2)/2);
maxr=totmax(1,(size(position,2))/2+1 : size(position,2));
[ldata, bdata]=Bus8();
ldata(:,6)=position(1,1:size(position,2)/2);
ldata(:,7)=position(1,(size(position,2))/2+1 : size(position,2));
indices=reliability_indices(ldata, bdata);
saifi=indices.SAIFI;
saidi=indices.SAIDI;
caidi=indices.CAIDI;
aens=indices.AENS;
for i=1:size(ldata,1)
    J=J+((maxz(1,i)-ldata(i,6))/(ldata(i,6)-minz(1,i)))+((maxr(1,i)-ldata(i,7))/(ldata(i,7)-minr(1,i)));
end
if saifi<=saifid 
    psaifi=0;
end
if saidi<=saidid 
    psaidi=0;
end
if caidi<=caidid 
    pcaidi=0;
end
if aens<=aensd 
    paens=0;
end

output1 = J+psaifi+psaidi+pcaidi+paens;
% output1.SAIFI = saifi;
% output1.SAIDI = saidi;
% output1.CAIDI = caidi;
% output1.AENS = aens;
end
