clc, clear
[xin, fs] = audioread("Test.wav");
x = awgn(xin, 30);
x = fft(x);
noise = [x(1:8000);x(60001:68000)];
mag_noise = mean(abs(noise));
x_phase = angle(x);
MAG = (abs(x) - mag_noise);
MAG(MAG < 0) = 0;
PH = sqrt(-1) .* x_phase;
s_f = MAG .* exp(PH);
s = ifft(s_f);
plot(1:68072, real(s));
figure()
plot(1:68072, ifft(x));
sound(real(s), fs);
