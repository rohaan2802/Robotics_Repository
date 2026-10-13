q1 = 0;     
s1 = pi / 2;   
t0 = 3;                 
tf = 8;      
q2=2*10^-9;
s2=5*10^-9

A = [
    t0^5 t0^4 t0^3 t0^2 t0 1; 
     5*t0^4 4*t0^3  3*t0^2 2*t0 1 0; 
     20*t0^3 12*t0^2 6*t0 2 0 0; 
     tf^5 tf^4 tf^3 tf^2 tf 1; 
     5*tf^4 4*tf^3 3*tf^2 2*tf 1 0; 
     20*tf^3 12*tf^2 6*tf 2 0 0
     ];

b = [q1; q2; 0; s1; s2; 0]; 


A_inv = inv(A);
disp('Inverse of A:');
disp(A_inv);

newline;
newline;
newline;

val=A_inv*b;
disp('Quintic polynomial coefficients:');
disp(val);

a5 = val(1);
a4 = val(2);
a3 = val(3);
a2 = val(4);
a1 = val(5);
a0 = val(6);

disp('WHEN T=3 ');
fprintf('q= %.4f        v= %.4f         a= %.4f\n\n',a5,a4,a3);


disp('WHEN T=8 ');
fprintf('q= %.4f        v= %.4f         a= %.4f',a2,a1,a0);


