mdl_puma560
p560.plot(qz)
T=transl(0.6,0.1,0)
*rpy2tr(0,180,0,'deg');
hold on
trplot(T)
q=p560.ikine6s(T)
