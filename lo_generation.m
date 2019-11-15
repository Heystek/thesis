% desired_freq = 7000000
% N_sine_waves = (8192)*(((1.25)*(10^-9)))*(desired_freq)
% %N_sine_waves = 1*(desired_freq);
% Int_sine_waves = round(N_sine_waves)
% %Int_sine_waves = (N_sine_waves);
% F = ceil(2*pi*(Int_sine_waves))/2048
% %F = 2048/2048

 sin_0 = sin(0:0.1:2*pi);
 sin_1 = sin(0:0.1:2*pi);
 sin_2 = sin(0:0.1:2*pi);
 sin_3 = sin(0:0.1:2*pi);
 cos_0 = cos(0:0.1:2*pi);
 cos_1 = cos(0:0.1:2*pi);
 cos_2 = cos(0:0.1:2*pi);
 cos_3 = cos(0:0.1:2*pi);

% sin_0 = sin(0:1.57*(10^-6):2*pi);
% sin_1 = sin(0:1.57*(10^-6):2*pi);
% sin_2 = sin(0:1.57*(10^-6):2*pi);
% sin_3 = sin(0:1.57*(10^-6):2*pi);
% cos_0 = cos(0:1.57*(10^-6):2*pi);
% cos_1 = cos(0:1.57*(10^-6):2*pi);
% cos_2 = cos(0:1.57*(10^-6):2*pi);
% cos_3 = cos(0:1.57*(10^-6):2*pi);

%for i = 1:2048  
 %  sin_0(i) = (sin((i*F)+0));
 %  sin_1(i) = (sin((i*F)+1));
 %  sin_2(i) = (sin((i*F)+2));
 %  sin_3(i) = (sin((i*F)+3));
 %  cos_0(i) = (cos((i*F)+0));
 %  cos_1(i) = (cos((i*F)+1));
 %  cos_2(i) = (cos((i*F)+2));
 %  cos_3(i) = (cos((i*F)+3));
    
   A_sin = sin_0 
   B_sin = sin_1
   C_sin = sin_2  
   D_sin = sin_3

   A_cos = cos_0
   B_cos = cos_1
   C_cos = cos_2
   D_cos = cos_3
    
    
%end

figure(1)
plot(A_sin)

figure(2)
plot(B_sin)

figure(3)
plot(C_sin)

figure(4)
plot(D_sin)

figure(5)
plot(A_cos)

figure(6)
plot(B_cos)

figure(7)
plot(C_cos)

figure(8)
plot(D_cos)

%figure
%plot(A_sin,i,B_sin,i,C_sin,i,D_sin,i)

%A_sin = sin(3:0.01:5*pi)
%B_sin = sin(2:0.01:5*pi)
%C_sin = sin(1:0.01:5*pi)
%D_sin = sin(0:0.01:5*pi)

%A_cos = cos(3:0.01:5*pi)
%B_cos = cos(2:0.01:5*pi)
%C_cos = cos(1:0.01:5*pi)
%D_cos = cos(0:0.01:5*pi)

%t = [0:0.1:2047];
%figure
%plot(A_sin,i)
%plot(B_sin,t)
%plot(C_sin,t)
%plot(D_sin,t)
%plot(A_sin,t,B_sin,t,C_sin,t,D_sin,t)



