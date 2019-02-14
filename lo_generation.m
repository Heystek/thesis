desired_freq = 300;
N_sine_waves = 8292*(1.25*10^-9)*desired_freq;
Int_sine_waves = round(N_sine_waves);
F = (2*pi*Int_sine_waves)/2048;

for i = 0:2047
    sin_0 = sin((i*F)+0)*32000;
    sin_1 = sin((i*F)+1)*32000;
    sin_2 = sin((i*F)+2)*32000;
    sin_3 = sin((i*F)+3)*32000;
    cos_0 = sin((i*F)+0)*32000;
    cos_1 = sin((i*F)+1)*32000;
    cos_2 = sin((i*F)+2)*32000;
    cos_3 = sin((i*F)+3)*32000;
end

A_sin = sin_0
B_sin = sin_1
C_sin = sin_2
D_sin = sin_3

A_cos = cos_0
B_cos = cos_1
C_cos = cos_2
D_cos = cos_3


