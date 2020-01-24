%inital position and velocity set to 0
x = zeros(2,1);
v = zeros(2,1);
tm = zeros(2,1);
vd = 0;
dt=1E-5;

%charge of an electron in coulombs
q = 1.60*10^-19;
m = 9.10938215e-31;

f=1;
a= f/m;

for (t = 1:10000)
tm(:,1)=t;
v = v + dt*a;
x = x + dt*v;

v(rand(2,1) < 0.05) =0;

vt = v;

vd = mean(vt);



 if(rand<0.05)
     v=0;
 end

subplot(1,3,1)
plot(t,x,'xr'); hold on
xlabel('time');
ylabel(' position');
subplot(1,3,2);
plot(t,v,'xr'); hold on
xlabel('time');
ylabel(' Velocity');
subplot(1,3,3); 
plot(t,vd,'og'); hold on
xlabel('time');
ylabel('Velocity drift');
pause(0.01)

end


