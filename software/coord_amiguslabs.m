% Coordenadas para el circuito de Amigus Labs (As Pontes) 2019

function [dim_cto origen_cto tramos_cto] = coord_amiguslabs()
%% Dimensiones del circuito
X_cto = 5000; % mm
Y_cto = 2500; % mm
dim_cto = [X_cto Y_cto];

%% Punto y direccion en origen
x0_pos = 1050;
y0_pos = 300;
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

numero_de_tramos = 16;
tramos_cto = zeros(numero_de_tramos,2);

tramos_cto(1,:) = [0 2800];
tramos_cto(2,:) = [90 800];
tramos_cto(3,:) = [0 600];
tramos_cto(4,:) = [200 500];
tramos_cto(5,:) = [0 150];
tramos_cto(6,:) = [-110 500];
tramos_cto(7,:) = [0 1850];
tramos_cto(8,:) = [-180 530];
tramos_cto(9,:) = [0 150];
tramos_cto(10,:) = [-50 530];
tramos_cto(11,:) = [0 350];
tramos_cto(12,:) = [230 540];
tramos_cto(13,:) = [0 1400];
tramos_cto(14,:) = [90 900];

tramos_cto(15,:) = [0 0];
tramos_cto(16,:) = [1 0];

% Los ultimos dos tramos se dejan con la longitud/radio a 0 y con el angulo
% de curva a 1 o -1 para que el programa los calcule de manera optima para
% cerrar el circuito.