%% Praktikum: "Numerik am Computer", FS18, Serie 2

clear; close all; clc

%% Aufgabe 2.2 a)

% definiere die Funktion
f=@(x) (exp(-(x-3).^2)/2);

h = 0.25;
kmax=16;
k=0:kmax;

% bestimme die Stuetzwerte
x=1+k*h;
y=f(x);

% bestimme die Koeffizienten fuer die Newton-Interpolation
c=newtonkoeff_bugged(x,y);

% lege die Stellen fest, fuer die das Interpolatonspolynom ausgewertet
% werden soll
z=1:0.01:5;

p=zeros(length(z),1);

% werte das Interpolationspolynom aus
for i=1:length(z)
    p(i)=newtoninterpol_bugged(c,x,z(i));
end

% zeichnen
figure(1)
plot(z, p, z,f(z), x, y, '+')
legend('interpoliert', 'Funktion', 'Stuetzpunkte')
title('Interpolationpolynom und exakte Funktion')

figure(2)
plot(z, abs(p'-f(z)))
title('Fehlerfunktion')

%% Aufgabe 2.2 b)

