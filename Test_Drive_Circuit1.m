lenQD0 = length(QD0.Data);

n = 1:lenQD0;

nf = (n-lenQD0/2)*(1/10);

figure(1);
plot(n,QD0.Data);hold;plot(n,QD1.Data);

G0 = zeros(lenQD0,10);
G1 = zeros(lenQD0,10);

G0(865:403529,1)=QD0.Data(865:403529);
G0(422979:818247,2) = QD0.Data(422979:818247);
G0(834005:1235680,3) = QD0.Data(834005:1235680);
G0(1247220:1633510,4) = QD0.Data(1247220:1633510);
G0(1620720:1747710,5) = QD0.Data(1620720:1747710);
G0(1738060:2111450,6) = QD0.Data(1738060:2111450);
G0(2118950:2206130,7) = QD0.Data(2118950:2206130);
G0(2212880:2598130,8) = QD0.Data(2212880:2598130);
G0(2625240:3002370,9) = QD0.Data(2625240:3002370);
G0(3030080:3422030,10) = QD0.Data(3030080:3422030);

G1(865:403529,1) = QD1.Data(865:403529);
G1(422979:818247,2) = QD1.Data(422979:818247);
G1(834005:1235680,3) = QD1.Data(834005:1235680);
G1(1247220:1633510,4) = QD1.Data(1247220:1633510);
G1(1620720:1747710,5) = QD1.Data(1620720:1747710);
G1(1738060:2111450,6) = QD1.Data(1738060:2111450);
G1(2118950:2206130,7) = QD1.Data(2118950:2206130);
G1(2212880:2598130,8) = QD1.Data(2212880:2598130);
G1(2625240:3002370,9) = QD1.Data(2625240:3002370);
G1(3030080:3422030,10) = QD1.Data(3030080:3422030);

G0f(1:lenQD0,1) = fftshift(fft(G0(1:lenQD0,1)));
G1f(1:lenQD0,1) = fftshift(fft(G1(1:lenQD0,1)));
G0f(1:lenQD0,2) = fftshift(fft(G0(1:lenQD0,2)));
G1f(1:lenQD0,2) = fftshift(fft(G1(1:lenQD0,2)));

AG0f(1:lenQD0,1) = abs(G0f(1:lenQD0,1));
AG1f(1:lenQD0,1) = abs(G1f(1:lenQD0,1));
AG0f(1:lenQD0,2) = abs(G0f(1:lenQD0,2));
AG1f(1:lenQD0,2) = abs(G1f(1:lenQD0,2));

PG0f(1:lenQD0,1) = angle(G0f(1:lenQD0,1));
PG1f(1:lenQD0,1) = angle(G1f(1:lenQD0,1));
PG0f(1:lenQD0,2) = angle(G0f(1:lenQD0,2));
PG1f(1:lenQD0,2) = angle(G1f(1:lenQD0,2));

figure(2);
plot(n,G0);
figure(3);
plot(n,G1);
figure(4);
subplot(4,1,1);
plot(nf,AG0f(1:lenQD0,1));
hold;
plot(nf,AG1f(1:lenQD0,1));
subplot(4,1,2);
plot(nf,PG0f(1:lenQD0,1));
hold;
plot(nf,PG1f(1:lenQD0,1));
subplot(4,1,3);
plot(nf,AG0f(1:lenQD0,2));
hold;
plot(nf,AG1f(1:lenQD0,2));
subplot(4,1,4);
plot(nf,PG0f(1:lenQD0,2));
hold;
plot(nf,PG1f(1:lenQD0,2));