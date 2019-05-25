% Coordenadas para el circuito del Arduino Day Lugo 2019

function [dim_cto origen_cto tramos_cto] = coord_arduinodaylugo()
%% Dimensiones del circuito
X_cto = 4000; % mm
Y_cto = 2000; % mm
dim_cto = [X_cto Y_cto];

%% Punto y direccion en origen
x0_pos = 1420;
y0_pos = 200;
x0_dir = 1;
y0_dir = 0;
origen_cto = [x0_pos y0_pos x0_dir y0_dir];

%% Trazado [tipo, longitud]
    % tipo:
        % 0 = recta
        % -ang = angulo de curva a izquierda en grados
        % ang = angulo de curva a derecha en grados
    % longitud:
        % distancia en mm para recta
        % radio en mm para curva

numero_de_tramos = 10;
tramos_cto = zeros(numero_de_tramos,2);

tramos_cto(1,:) = [0 1800];
tramos_cto(2,:) = [140 530];
tramos_cto(3,:) = [0 750];
tramos_cto(4,:) = [95 500];
tramos_cto(5,:) = [-83 500];
tramos_cto(6,:) = [0 700];
tramos_cto(7,:) = [45 520];
tramos_cto(8,:) = [100 500];
tramos_cto(9,:) = [0 0];
tramos_cto(10,:) = [1 0];

% Los ultimos dos tramos se dejan con la longitud/radio a 0 y con el angulo
% de curva a 1 o -1 para que el programa los calcule de manera optima para
% cerrar el circuito.