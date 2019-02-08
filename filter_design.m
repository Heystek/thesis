%basic FIR design
%N   = 1000;        % FIR filter order
%Fp  = 1e6;       % passband-edge frequency
%Fs  = 640e6;       % sampling frequency
%Rp  = 0.00057565; % Corresponds to 0.01 dB peak-to-peak ripple
%Rst = 1e-4;       % Corresponds to 80 dB stopband attenuation

%eqnum = firceqrip(N,Fp/(Fs/2),[Rp Rst],'passedge'); % eqnum = vec of coeffs
%fvtool(eqnum,'Fs',Fs,'Color','White') % Visualize filter



%minimum order lowpass filter (matlab wil determine the minimum order to
%meet the design)
%Fp  = 1e6;       % passband-edge frequency
%Fs  = 640e6     % sampling frequency
%Rp  = 0.00057565;    % Corresponds to 0.01 dB peak-to-peak ripple
%Rst = 1e-4;          % Corresponds to 80 dB stopband attenuation

%Fst = 1.5e6;  % Transition Width = Fst - Fp

%numMinOrder = firgr('minorder',[0,Fp/(Fs/2),Fst/(Fs/2),1],[1 1 0 0],[Rp Rst]);

%fvt = fvtool(eqnum,1,eqNum200,1,numMinOrder,1,'Fs',Fs,'Color','White');
%fvt = fvtool(numMinOrder,1,'Fs',Fs,'Color','White');

%lowpassFIR = dsp.FIRFilter('Numerator',numMinOrder); 
%fvtool(lowpassFIR,'Fs',Fs,'Color','White')

%legend(fvt,'FIR filter; Order = 100','FIR filter. Order = 200','FIR filter. Order = 133')


%Designing FIR Filter
Fp  = 1e6;       % passband-edge frequency
Fs  = 640e6;       % sampling frequency
Rp  = 0.00057565; % Corresponds to 0.01 dB peak-to-peak ripple
Rst = 1e-4;       % Corresponds to 80 dB stopband attenuation

Fst = 1.5e6;  % Transition Width = Fst - Fp

numMinOrder = firgr('minorder',[0,Fp/(Fs/2),Fst/(Fs/2),1],[1 1 0 0],[Rp Rst])
eqnum = firceqrip(numMinOrder,Fp/(Fs/2),[Rp Rst],'passedge');                  % eqnum = vec of coeffs

%lowpassFIR = dsp.FIRFilter('Numerator',eqnum); 
%fvtool(lowpassFIR,'Fs',Fs,'Color','White')