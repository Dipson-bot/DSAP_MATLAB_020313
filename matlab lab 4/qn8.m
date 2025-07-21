% CRN: 020-313 - Voice Signal Spectrum (MATLAB 7 Compatible)
% Sample voice file downloaded from:
% https://sample-files.com/audio/wav/ (3. Voice Recording - voice-sample.wav)
%
% Instructions:
% 1. Download the WAV file and rename it as 'voice.wav'
% 2. Place it in your MATLAB current working folder.
% 3. Run this script to view the amplitude spectrum.
% Step 1: Read the voice.wav file
[x, Fs] = wavread('voice.wav');  % Load 2-second voice sample
 
% Step 2: If stereo, convert to mono by using only one channel
if size(x,2) == 2
    x = x(:,1);  % Use the first channel only
end
 
% Step 3: Compute FFT of the signal
N = length(x);        % Total number of samples
X = fft(x);           % Compute the DFT
 
% Step 4: Generate frequency vector for plotting
f = (-N/2+1:N/2)*Fs/N;  % Frequency range for plotting
 
% Step 5: Plot the amplitude spectrum
plot(f, fftshift(abs(X)/N));
title('CRN: 020-313 - Amplitude Spectrum of Voice Signal');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');
grid on;
