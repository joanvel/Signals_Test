clear all;
%importo señales
Cs1 = importdata("C:\Users\Joan\Documents\TG\Senales\Custom_Pulse\custom1.txt");
Cs2 = importdata("C:\Users\Joan\Documents\TG\Senales\Custom_Pulse\custom3.txt");
fclk = 20589;
fs = 10*fclk;
nCs1 = ((1:length(Cs1))-1)*1/fclk;
nCs2 = ((1:length(Cs2))-1)*1/fclk;

%ploteo
figure(1)
plot(nCs1,Cs1/(2^15));
figure(2)
plot(nCs2,Cs2/(2^10));