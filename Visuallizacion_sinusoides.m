clear all;
%Importo las señales
cos1 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos1.txt')/(2^14);
cos2 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos2.txt')/(2^14);
cos3 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos3.txt')/(2^14);
cos4 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos4.txt')/(2^14);
cos5 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos5.txt')/(2^14);
cos6 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos6.txt')/(2^14);
cos7 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos7.txt')/(2^14);
cos8 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos8.txt')/(2^14);
cos9 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos9.txt')/(2^14);
cos10 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos10.txt')/(2^14);
cos11 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos11.txt')/(2^14);
cos12 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos12.txt')/(2^14);
cos13 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos13.txt')/(2^14);
cos14 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\cos14.txt')/(2^14);
sin1 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin1.txt')/(2^14);
sin2 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin2.txt')/(2^14);
sin3 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin3.txt')/(2^14);
sin4 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin4.txt')/(2^14);
sin5 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin5.txt')/(2^14);
sin6 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin6.txt')/(2^14);
sin7 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin7.txt')/(2^14);
sin8 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin8.txt')/(2^14);
sin9 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin9.txt')/(2^14);
sin10 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin10.txt')/(2^14);
sin11 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin11.txt')/(2^14);
sin12 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin12.txt')/(2^14);
sin13 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin13.txt')/(2^14);
sin14 = importdata('C:\Users\Joan\Documents\TG\Senales\DDS_ROM_Free_Shu_Chung_Yi\sin14.txt')/(2^14);
%Defino parámetros importantes
fclk = 20589;
fs = 10*fclk;
nsin = ((1:length(cos1))-1)*1/fclk;
nfft = ((1:length(cos1))-length(cos1)/2)*fclk/length(cos1);
%ploteo las funciones en el tiempo del pulso Gausiano (se comentan las que no se desean ver y se descomentan las que sí)
figure(1);
% plot(nsin,cos1);
% hold;
% plot(nsin,sin1);
% plot(nsin,cos2);
% hold;
% plot(nsin,sin2);
% plot(nsin,cos3);
% hold
% plot(nsin,sin3);
% plot(nsin,cos4);
% hold;
% plot(nsin,sin4);
% plot(nsin,cos5);
% hold;
% plot(nsin,sin5);
% plot(nsin,cos6);
% hold;
% plot(nsin,sin6);
% plot(nsin,cos7);
% hold;
% plot(nsin,sin7);
% plot(nsin,cos8);
% hold;
% plot(nsin,sin8);
% plot(nsin,cos9);
% hold;
% plot(nsin,sin9);
% plot(nsin,cos10);
% hold;
% plot(nsin,sin10);
% plot(nsin,cos11);
% hold;
% plot(nsin,sin11);
% plot(nsin,cos12);
% hold;
% plot(nsin,sin13);
% plot(nsin,cos14);
% hold;
% plot(nsin,sin14);
%Hallo la transformada de fourier de las señales
cos1 = fftshift(fft(cos1));
cos2 = fftshift(fft(cos2));
cos3 = fftshift(fft(cos3));
cos4 = fftshift(fft(cos4));
cos5 = fftshift(fft(cos5));
cos6 = fftshift(fft(cos6));
cos7 = fftshift(fft(cos7));
cos8 = fftshift(fft(cos8));
cos9 = fftshift(fft(cos9));
cos10 = fftshift(fft(cos10));
cos11 = fftshift(fft(cos11));
cos12 = fftshift(fft(cos12));
cos13 = fftshift(fft(cos13));
cos14 = fftshift(fft(cos14));
sin1 = fftshift(fft(sin1));
sin2 = fftshift(fft(sin2));
sin3 = fftshift(fft(sin3));
sin4 = fftshift(fft(sin4));
sin5 = fftshift(fft(sin5));
sin6 = fftshift(fft(sin6));
sin7 = fftshift(fft(sin7));
sin8 = fftshift(fft(sin8));
sin9 = fftshift(fft(sin9));
sin10 = fftshift(fft(sin10));
sin11 = fftshift(fft(sin11));
sin12 = fftshift(fft(sin12));
sin13 = fftshift(fft(sin13));
sin14 = fftshift(fft(sin14));
%Grafico el espectro de amplitud de cada una de las señales
figure(2);
plot(nfft,abs(cos1)/max(abs(cos1)));
hold;
plot(nfft,abs(cos2)/max(abs(cos2)));
plot(nfft,abs(cos3)/max(abs(cos3)));
plot(nfft,abs(cos4)/max(abs(cos4)));
plot(nfft,abs(cos5)/max(abs(cos5)));
plot(nfft,abs(cos6)/max(abs(cos6)));
plot(nfft,abs(cos7)/max(abs(cos7)));
plot(nfft,abs(cos8)/max(abs(cos8)));
plot(nfft,abs(cos9)/max(abs(cos9)));
plot(nfft,abs(cos10)/max(abs(cos10)));
plot(nfft,abs(cos11)/max(abs(cos11)));
plot(nfft,abs(cos12)/max(abs(cos12)));
plot(nfft,abs(cos13)/max(abs(cos13)));
plot(nfft,abs(cos14)/max(abs(cos14)));
figure(3);
plot(nfft,abs(sin1)/max(abs(sin1)));
hold;
plot(nfft,abs(sin2)/max(abs(sin2)));
plot(nfft,abs(sin3)/max(abs(sin3)));
plot(nfft,abs(sin4)/max(abs(sin4)));
plot(nfft,abs(sin5)/max(abs(sin5)));
plot(nfft,abs(sin6)/max(abs(sin6)));
plot(nfft,abs(sin7)/max(abs(sin7)));
plot(nfft,abs(sin8)/max(abs(sin8)));
plot(nfft,abs(sin9)/max(abs(sin9)));
plot(nfft,abs(sin10)/max(abs(sin10)));
plot(nfft,abs(sin11)/max(abs(sin11)));
plot(nfft,abs(sin12)/max(abs(sin12)));
plot(nfft,abs(sin13)/max(abs(sin13)));
plot(nfft,abs(sin14)/max(abs(sin14)));