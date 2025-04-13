clc
clear

%Common parameters
file = 'continents_points/eur.txt';
proj = @gnom;
s0 = 0; % Might not be needed
spac_u = deg_to_rad(10);
spac_v = spac_u ;
dens_u = deg_to_rad(1);
dens_v = dens_u;
M = 50000000; % Needs adjustement
R = 6380*1000;
R = R/M;
%M = R/Rt probably around 159500000

% Boundaries points
run("define_boundary_points.m");

% Face 1 [A, B, C, D, E, A]
% Graticule params
umin = Au - deg_to_rad(5); % South of the southernmost point
umax = deg_to_rad(90); % North of the northernmost point
vmin = -deg_to_rad(180); % West of the westernmost point
vmax = deg_to_rad(180); % East of the easternmost point

uk = deg_to_rad(90); % Lat of the cartographic pole
vk = deg_to_rad(0); % Long of the cartographic pole

ub = [Au, Bu, Cu, Du, Eu, Au];
vb = [Av, Bv, Cv, Dv, Ev, Av];

subplot(3, 4, 1);
globeFace(umin, umax, vmin, vmax, spac_u, spac_v, dens_u, dens_v, R, uk, vk, s0, proj, ub, vb);

