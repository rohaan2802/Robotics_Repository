dh = [
0 0 1 0
0 0 1 0
]
% 
% arm = SerialLink(dh)
% 
% arm.plot([0.2 0.3])
% arm.teach
% arm.fkine([0.2 0.3])
% 
% arm = SerialLink(dh,'name','Nao')
% arm.plot([0.2 0.3])
% arm.teach
% arm.fkine([0.2 0.3])

% L(1) = Link([0 2 0 pi/2 0],'standard');
% L(2)=Link([0 0 2 0],'standard');
% arm=SerialLink(L,'name','NAO_ROB');
% arm.plot([0.2,0.3])
% arm.teach

L(1) = Link([0 2 0 pi/2 1],'standard');
L(2)=Link([0 0 3 0 0],'standard');
L(1).qlim = [0,5]
arm=SerialLink(L,'name','NAO_ROB');
arm.plot([4,0.3])
arm.teach
