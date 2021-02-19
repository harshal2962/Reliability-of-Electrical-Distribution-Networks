clc
clear all
[ldata,bdata]=Bus8();
st = ldata(:,5);
ldata(st==0,:) =[];
branches=[1 2*size(ldata,1)];
maxit=100;it=0;
pop=200;
w= 1;
c1= 2.05;
c2= 2.05;
minz=[0.2 0.05 0.1 0.1 0.15 0.05 0.05];
maxz=transpose(ldata(:,6));
minr=[6 6 4 8 7 6 6];
maxr=transpose(ldata(:,7));
totmax=[maxz maxr];
totmin=[minz minr];
   particle0.position=[];
   particle0.velocity=[]; 
   particle0.cost=[];
   particle0.best.position=[];
   particle0.best.cost=[];
   particle=repmat( particle0,pop,1);

globalbest.cost=inf;
for i =1:pop
   particle(i).position=unifrnd(totmin,totmax,branches);
   particle(i).velocity=zeros(branches); 
   particle(i).cost= my_cost(it,totmin,totmax,particle(i).position);
   particle(i).best.position=particle(i).position; 
   particle(i).best.cost= particle(i).cost;
   if particle(i).cost<globalbest.cost
        globalbest= particle(i).best;
   end
end
bestcosts=zeros(maxit,1);
for it =1:maxit
    for i =1:pop
particle(i).velocity=w*particle(i).velocity+c1*rand*(particle(i).best.position-particle(i).position)+c2*rand*(globalbest.position-particle(i).position);
particle(i).position=particle(i).position+particle(i).velocity;
particle(i).position = max(particle(i).position,totmin);
particle(i).position = min(particle(i).position,totmax);  
particle(i).cost= my_cost(it,totmin,totmax,particle(i).position);
if particle(i).cost<particle(i).best.cost
    particle(i).best.position= particle(i).position;
    particle(i).best.cost=particle(i).cost;
end
if particle(i).cost<globalbest.cost
        globalbest= particle(i).best;
end
    end

 bestcosts(it)=globalbest.cost;
 disp({'iter=' num2str(it) 'bestcost=' num2str(bestcosts(it))});
 w=.99*w;
end

figure;
plot(bestcosts);
xlabel('iter');
ylabel('best cost');
  