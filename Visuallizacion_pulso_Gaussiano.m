clear all;
%Importo las señales
GP1 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP1.txt');
GP2 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP2.txt');
GP3 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP3.txt');
GP4 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP4.txt');
GP5 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP5.txt');
GP6 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP6.txt');
GP7 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP7.txt');
GP8 = importdata('C:\Users\Joan\Documents\TG\Senales\Gaussian_Pulse\GP8.txt');
%Ajusto los tamaños de los vectores
Gp1 = GP1;
Gp2 = LlenarZeros(GP2,length(Gp1));
Gp3 = LlenarZeros(GP3,length(Gp1));
Gp4 = LlenarZeros(GP4,length(Gp1));
Gp5 = LlenarZeros(GP5,length(Gp1));
Gp6 = LlenarZeros(GP6,length(Gp1));
Gp7 = LlenarZeros(GP7,length(Gp1));
Gp8 = LlenarZeros(GP8,length(Gp1));
%Defino parámetros importantes
fclk = 20589;
fs = 10*fclk;
nGp = ((1:length(Gp1))-1)*1/fclk;
nfft = ((1:length(Gp1))-length(Gp1)/2)*fclk/length(Gp1);
%ploteo las funciones en el tiempo del pulso Gausiano
figure(1);
plot(nGp,Gp1/(2^14));
hold;
plot(nGp,Gp2/(2^14));
plot(nGp,Gp3/(2^14));
plot(nGp,Gp4/(2^14));
plot(nGp,Gp5/(2^14));
plot(nGp,Gp6/(2^14));
plot(nGp,Gp7/(2^14));
plot(nGp,Gp8/(2^14));
%Hallo la transformada de fourier de los pulsos Gaussianos
Gp1 = fftshift(fft(Gp1));
Gp2 = fftshift(fft(Gp2));
Gp3 = fftshift(fft(Gp3));
Gp4 = fftshift(fft(Gp4));
Gp5 = fftshift(fft(Gp5));
Gp6 = fftshift(fft(Gp6));
Gp7 = fftshift(fft(Gp7));
Gp8 = fftshift(fft(Gp8));
%Grafico el espectro de amplitud de cada uno de los pulsos
figure(2);
plot(nfft,abs(Gp1)/max(abs(Gp1)));
hold;
plot(nfft,abs(Gp2)/max(abs(Gp2)));
plot(nfft,abs(Gp3)/max(abs(Gp3)));
plot(nfft,abs(Gp4)/max(abs(Gp4)));
plot(nfft,abs(Gp5)/max(abs(Gp5)));
plot(nfft,abs(Gp6)/max(abs(Gp6)));
plot(nfft,abs(Gp7)/max(abs(Gp7)));
plot(nfft,abs(Gp8)/max(abs(Gp8)));

function [y] = LlenarZeros(x,n)
   nx = length(x);
   dif = n - nx;
   y = zeros(n,1);
   for i=1:nx
       y(i+floor(n/2)-floor(nx/2)-1)=x(i);
   end
end