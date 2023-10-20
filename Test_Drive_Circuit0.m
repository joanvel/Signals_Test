clear all;close all;

bit = 16;
DAC0 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC0.txt')/(2^(15)-1);
DAC1 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC1.txt')/(2^(15)-1);
DAC2 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC2.txt')/(2^(15)-1);
DAC3 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC3.txt')/(2^(15)-1);
DAC4 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC4.txt')/(2^(15)-1);
DAC5 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC5.txt')/(2^(15)-1);
DAC6 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC6.txt')/(2^(15)-1);
DAC7 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC7.txt')/(2^(15)-1);
DAC8 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC8.txt')/(2^(15)-1);
DAC9 = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\DAC9.txt')/(2^(15)-1);

finish = importdata('C:\Users\Joan\Documents\TG\Senales\Drive_line\finishGP.txt');

fs0 = length(DAC0)/10;

fs1 = 100*fs0;

f = fs1/4;

n = ((1:length(DAC0))-1)*1/fs0;



DAC0t(1:length(n),1) = n;
DAC0t(1:length(n),2) = DAC0;
DAC1t(1:length(n),1) = n;
DAC1t(1:length(n),2) = DAC1;
DAC2t(1:length(n),1) = n;
DAC2t(1:length(n),2) = DAC2;
DAC3t(1:length(n),1) = n;
DAC3t(1:length(n),2) = DAC3;
DAC4t(1:length(n),1) = n;
DAC4t(1:length(n),2) = DAC4;
DAC5t(1:length(n),1) = n;
DAC5t(1:length(n),2) = DAC5;
DAC6t(1:length(n),1) = n;
DAC6t(1:length(n),2) = DAC6;
DAC7t(1:length(n),1) = n;
DAC7t(1:length(n),2) = DAC7;
DAC8t(1:length(n),1) = n;
DAC8t(1:length(n),2) = DAC8;
DAC9t(1:length(n),1) = n;
DAC9t(1:length(n),2) = DAC9;
figure(1);
subplot(5,1,1);plot(n,DAC0);title('Señal I del mixer I0');
subplot(5,1,2);plot(n,DAC1);title('Señal O del mixer I0');
subplot(5,1,3);plot(n,DAC2);title('Señal I del mixer O0');
subplot(5,1,4);plot(n,DAC3);title('Señal O del mixer O0');
subplot(5,1,5);plot(n,DAC8);title('Señal del Flujo magnético Flux0');
figure(2);
subplot(5,1,1);plot(n,DAC4);title('Señal I del mixer I1');
subplot(5,1,2);plot(n,DAC5);title('Señal O del mixer I1');
subplot(5,1,3);plot(n,DAC6);title('Señal I del mixer O1');
subplot(5,1,4);plot(n,DAC7);title('Señal O del mixer O1');
subplot(5,1,5);plot(n,DAC9);title('Señal del flujo magnético Flux1');
figure(3);
plot(n*fs0+1,finish);