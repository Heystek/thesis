%Designing FIR Filter
Fp  = 1e6;                % passband-edge frequency
Fs  = 640e6;              % sampling frequency
Rp  = 0.00057565;         % Corresponds to 0.01 dB peak-to-peak ripple
Rst = 1e-4;               % Corresponds to 80 dB stopband attenuation
Fst = 1.5e6;              % Transition Width = Fst - Fp
numMinOrder = firgr('minorder',[0,Fp/(Fs/2),Fst/(Fs/2),1],[1 1 0 0],[Rp Rst])
%lowpassFIR = dsp.FIRFilter('Numerator',eqnum); 
%fvtool(lowpassFIR,'Fs',Fs,'Color','White')