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
M = 100000000; % Needs adjustement
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

% Face 2 [A, F, G, H, B, A]
% Graticule params
umin = Gu - deg_to_rad(5); % South of the southernmost point
umax = deg_to_rad(90); % North of the northernmost point
vmin = Av - deg_to_rad(5); % West of the westernmost point
vmax = Hv + deg_to_rad(5); % East of the easternmost point

uk = u1_n; % Lat of the cartographic pole
vk = Gv; % Long of the cartographic pole

ub = [Au, Fu, Gu, Hu, Bu, Au];
vb = [Av, Fv, Gv, Hv, Bv, Av];

subplot(3, 4, 2);
globeFace(umin, umax, vmin, vmax, spac_u, spac_v, dens_u, dens_v, R, uk, vk, s0, proj, ub, vb);

% Face 3 [B, H, I, J, C, B]
% Graticule params
umin = Iu - deg_to_rad(5); % South of the southernmost point
umax = deg_to_rad(90); % North of the northernmost point
vmin = Hv - deg_to_rad(5); % West of the westernmost point
vmax = Jv + deg_to_rad(5); % East of the easternmost point

uk = u1_n; % Lat of the cartographic pole
vk = Iv; % Long of the cartographic pole

ub = [Bu, Hu, Iu, Ju, Cu, Bu];
vb = [Bv, Hv, Iv, Jv, Cv, Bv];

subplot(3, 4, 3);
globeFace(umin, umax, vmin, vmax, spac_u, spac_v, dens_u, dens_v, R, uk, vk, s0, proj, ub, vb);

% Face 4 [C, J, K, L, D, C]
% Graticule params
umin = Ku - deg_to_rad(5); % South of the southernmost point
umax = deg_to_rad(90); % North of the northernmost point
vmin = Jv - deg_to_rad(5); % West of the westernmost point
vmax = Lv + deg_to_rad(5); % East of the easternmost point

uk = u1_n; % Lat of the cartographic pole
vk = Kv; % Long of the cartographic pole

ub = [Cu, Ju, Ku, Lu, Du, Cu];
vb = [Cv, Jv, Kv, Lv, Dv, Cv];

subplot(3, 4, 4);
globeFace(umin, umax, vmin, vmax, spac_u, spac_v, dens_u, dens_v, R, uk, vk, s0, proj, ub, vb);

% Face 5 [D, L, M, N, E, D]
% Graticule params
umin = Mu - deg_to_rad(5); % South of the southernmost point
umax = deg_to_rad(90); % North of the northernmost point
vmin = Lv - deg_to_rad(5); % West of the westernmost point
vmax = Nv + deg_to_rad(5); % East of the easternmost point

uk = u1_n; % Lat of the cartographic pole
vk = Mv; % Long of the cartographic pole

ub = [Du, Lu, Mu, Nu, Eu, Du];
vb = [Dv, Lv, Mv, Nv, Ev, Dv];

subplot(3, 4, 5);
globeFace(umin, umax, vmin, vmax, spac_u, spac_v, dens_u, dens_v, R, uk, vk, s0, proj, ub, vb);

% Face 6 [E, N, O, F, A, E]
% Graticule params
umin = Ou - deg_to_rad(5); % South of the southernmost point
umax = deg_to_rad(90); % North of the northernmost point
vmin = Nv - deg_to_rad(5); % West of the westernmost point
vmax = deg_to_rad(365); % East of the easternmost point

uk = u1_n; % Lat of the cartographic pole
vk = Ov; % Long of the cartographic pole

ub = [Eu, Nu, Ou, Fu, Au, Eu];
vb = [Ev, Nv, Ov, Fv, Av, Ev];

subplot(3, 4, 6);
globeFace(umin, umax, vmin, vmax, spac_u, spac_v, dens_u, dens_v, R, uk, vk, s0, proj, ub, vb);