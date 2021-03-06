%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
clear global
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'task1';
%
% Some global variables initialization
%
global_initialization;
diary off;
logname_ = 'task1.log';
if exist(logname_, 'file')
    delete(logname_)
end
diary(logname_)
M_.exo_names = 'eps_a0';
M_.exo_names_tex = 'eps\_a0';
M_.exo_names = char(M_.exo_names, 'eps_a');
M_.exo_names_tex = char(M_.exo_names_tex, 'eps\_a');
M_.exo_names = char(M_.exo_names, 'eps_tau');
M_.exo_names_tex = char(M_.exo_names_tex, 'eps\_tau');
M_.endo_names = 'pie';
M_.endo_names_tex = 'pie';
M_.endo_names = char(M_.endo_names, 'x');
M_.endo_names_tex = char(M_.endo_names_tex, 'x');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names = char(M_.endo_names, 'rstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'rstar');
M_.endo_names = char(M_.endo_names, 'tau');
M_.endo_names_tex = char(M_.endo_names_tex, 'tau');
M_.endo_names = char(M_.endo_names, 'dy');
M_.endo_names_tex = char(M_.endo_names_tex, 'dy');
M_.endo_names = char(M_.endo_names, 'da');
M_.endo_names_tex = char(M_.endo_names_tex, 'da');
M_.endo_names = char(M_.endo_names, 'AUX_EXO_LAG_8_0');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_EXO\_LAG\_8\_0');
M_.param_names = 'phi';
M_.param_names_tex = 'phi';
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names = char(M_.param_names, 'phi_x');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_x');
M_.param_names = char(M_.param_names, 'phi_pie');
M_.param_names_tex = char(M_.param_names_tex, 'phi\_pie');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, 'rho');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, 'lambda');
M_.param_names = char(M_.param_names, 'sig_a0');
M_.param_names_tex = char(M_.param_names_tex, 'sig\_a0');
M_.param_names = char(M_.param_names, 'sig_a1');
M_.param_names_tex = char(M_.param_names_tex, 'sig\_a1');
M_.param_names = char(M_.param_names, 'sig_tau');
M_.param_names_tex = char(M_.param_names_tex, 'sig\_tau');
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 8;
M_.param_nbr = 11;
M_.orig_endo_nbr = 7;
M_.aux_vars(1).endo_index = 8;
M_.aux_vars(1).type = 3;
M_.aux_vars(1).orig_index = 2;
M_.aux_vars(1).orig_lead_lag = 0;
options_.varobs = [];
options_.varobs = 'pie';
options_.varobs = char(options_.varobs, 'dy');
options_.varobs_id = [ 1 6  ];
M_.Sigma_e = zeros(3, 3);
M_.H = 0;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('task1_static');
erase_compiled_function('task1_dynamic');
M_.lead_lag_incidence = [
 0 7 15;
 1 8 16;
 2 9 0;
 3 10 0;
 4 11 0;
 0 12 0;
 5 13 0;
 6 14 0;]';
M_.nstatic = 1;
M_.nfwrd   = 1;
M_.npred   = 5;
M_.nboth   = 1;
M_.equations_tags = {
};
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(11, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 33;
M_.NNZDerivatives(2) = -1;
M_.NNZDerivatives(3) = -1;
close all; 
rng(123);
M_.params( 2 ) = 0.97;
beta = M_.params( 2 );
M_.params( 4 ) = 0;
phi_x = M_.params( 4 );
M_.params( 5 ) = 1.5;
phi_pie = M_.params( 5 );
M_.params( 6 ) = 0;
alpha = M_.params( 6 );
M_.params( 7 ) = 0.2;
rho = M_.params( 7 );
M_.params( 8 ) = 0.5;
lambda = M_.params( 8 );
M_.params( 1 ) = 1;
phi = M_.params( 1 );
theta   = 0.75;
M_.params( 9 ) = 0.02;
sig_a0 = M_.params( 9 );
M_.params( 10 ) = 0.02;
sig_a1 = M_.params( 10 );
M_.params( 11 ) = 0.02;
sig_tau = M_.params( 11 );
M_.params( 3 ) = (1-theta)*(1-theta*M_.params(2))*(1+M_.params(1))/theta;
kappa = M_.params( 3 );
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
M_.sigma_e_is_diagonal = 1;
options_.irf = 7;
options_.nocorr = 1;
options_.nomoments = 1;
options_.order = 1;
var_list_=[];
info = stoch_simul(var_list_);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
save('task1_results.mat', 'oo_', 'M_', 'options_');


disp(['Total computing time : ' dynsec2hms(toc) ]);
diary off
