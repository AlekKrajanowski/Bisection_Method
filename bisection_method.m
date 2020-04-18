clear all;
close all;
clc;
%Równanie z pierwszego przyk?adu, przemienione na funkcje f_1
f_1=inline('x+log(x)-(sin(x))^2', 'x');
%Równanie z drugiego przyk?adu, przemienione na funkcje f_2
f_2=inline('(x^2)+log(x)-sin(x)','x');
%Liczba podzia?ów odcinka
n_podzialow = 100;
%Rozpatrywany przedzia?
%Punkt pocz?tkowy
x_poczatkowy=0.2;
%Punkt koncowy
x_koncowy=1.2;
%Wywo?anie metody bisekcji
%Przyklad 1
bisection(f_1,x_poczatkowy,x_koncowy,n_podzialow)
%Przyklad 2
bisection(f_2,x_poczatkowy,x_koncowy,n_podzialow)

